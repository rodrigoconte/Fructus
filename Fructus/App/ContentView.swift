//
//  ContentView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 09/09/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                } //: Loop
            } //: List
            .navigationTitle("Fruits")
        } //: Navigation
    } //: Body
} //: Content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 12 Pro")
    }
}
