//
//  ContentView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitData
    
    
    //MARK: BODY
    var body: some View {
        //MARK: NAVIGATION VIEW
        NavigationView {
            //MARK: LIST VIEW
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRawView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }//: LOOP END
            }//: LIST VIEW
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                            .fontWeight(.bold)
                    })) //: BUTTON
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }//: NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }//: BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
