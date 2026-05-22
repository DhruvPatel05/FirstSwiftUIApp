//
//  ContentView.swift
//  ZeroToHeroSwiftUI
//
//  Created by Dhruv Patel on 22/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            Image(systemName: "globe")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(.rect(cornerRadius: 12))
                .padding(.vertical)
//            Text("Rounded")
//                .padding()
//                .background(.gray.opacity(0.2))
//                .clipShape(.rect(cornerRadius: 8))
//                .overlay(
//                    RoundedRectangle(cornerRadius: 8)
//                        .stroke(.gray)
//                )
//            Text("Hello World")
//                .padding()
//                .background(.blue)
//                .clipShape(.rect(cornerRadius: 8))
            Link("Go to Apple", destination: URL(string: "https://apple.com")!)
                .buttonStyle(.borderless)
                .padding(.vertical)
            
            Link("Send To Action", destination: URL(string: "tel:1234567890")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
                .padding(.vertical)
            
            Link("Send an Email", destination: URL(string: "mailto:swiftui@apple.com")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .tint(.pink)
                .padding(.vertical)
            
            Link("Credo Academy", destination: URL(string: "https://credo.academy.com")!)
                .buttonStyle(.plain)
                .padding()
                .border(.primary,width: 2)
                .padding(.vertical)
            
            Link(destination: URL(string: "https://apple.com")!) {
                HStack(spacing: 16) {
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule()
                        .fill(Color.blue)
                )
                
                    
                }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
