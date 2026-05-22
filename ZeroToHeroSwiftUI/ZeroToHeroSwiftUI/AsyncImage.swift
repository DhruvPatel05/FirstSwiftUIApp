
//
//  AsyncImage.swift
//  ZeroToHeroSwiftUI
//
//  Created by Dhruv Patel on 22/05/26.
//

import SwiftUI

extension Image {
    func ImageModifier()  -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    func IconModifier()  -> some View {
        self.ImageModifier()
            .frame(maxWidth:128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct AsyncImageView: View {
    
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: - 1. BASIC
//        AsyncImage(url: URL.init(string: imageUrl))
        
        // MARK: - 2 SCALE
//        AsyncImage(url: URL.init(string: imageUrl), scale: 3.0)
        
//        // MARK: - 3 PLACE HOLDER
//        AsyncImage(url: URL(string: imageUrl)) { image in
//            image.ImageModifier()
//        }
//            placeholder : {
//                  Image(systemName: "photo.circle.fill")
//                    .IconModifier()
//                }
//            .padding(40)
        // MARK: - 4 PHASE
//        AsyncImage.init(url: URL.init(string: imageUrl)) { phase in
//            if let image = phase.image {
//                image.ImageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").IconModifier()
//            } else {
//                Image(systemName: "photo.circle.fill").IconModifier()
//            }
//        }
//            .padding(40)
        // MARK: - 5 Animation
        AsyncImage(url: URL.init(string: imageUrl), transaction: Transaction(animation:  .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) {
            phase in
            switch phase {
            case .success(let image):
                image.ImageModifier()
//                    .transition(.move(edge: .bottom))
//                    .transition(.slide)
                    .transition(.scale)
                
            case .empty:
                Image.init(systemName: "photo.circle.fill").IconModifier()
            
            case .failure(_):
                Image.init(systemName: "ant.circle.fill").IconModifier()
            @unknown default:
                ProgressView()
            }
            
        }
        .padding(40)
        }
    }
#Preview {
    AsyncImageView()
}
