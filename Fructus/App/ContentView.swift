//
//  ContentView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 09/09/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
            } //: List
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
            .listStyle(.plain)
        } //: Navigation
    } //: Body
} //: Content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 12 Pro")
    }
}
