//
//  Components.swift
//  ZeroToHeroSwiftUI
//
//  Created by Dhruv Patel on 22/05/26.
//

import SwiftUI
struct ComponentView: View {
    var body: some View {
        VStack {
            Text("iOS")
                .font(.system(size:180))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(colors: [.pink,.purple,.blue],
                                   startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        }
    }
}
#Preview {
    ComponentView()
}
