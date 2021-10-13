//
//  SettingsView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 11/10/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } //: Vstack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
                
            } //: Scroll view
        } //: Navigation
        
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
