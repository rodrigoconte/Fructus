//
//  StartButtonView.swift
//  StartButtonView
//
//  Created by Rodrigo Conte on 09/09/21.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: Hstack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: Button
        .accentColor(Color.white)
        
    }
}


// MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartButtonView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
