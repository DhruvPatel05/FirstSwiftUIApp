
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
        
        // MARK: - 3 PLACE HOLDER
        AsyncImage(url: URL(string: imageUrl)) { image in
            image.ImageModifier()
        }
            placeholder : {
                  Image(systemName: "photo.circle.fill")
                    .IconModifier()
                }
            .padding(40)
            
        }
    }
#Preview {
    AsyncImageView()
}
