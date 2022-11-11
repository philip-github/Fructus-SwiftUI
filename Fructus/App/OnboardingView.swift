//
//  OnboardingView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/13/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitData
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }//: LOOP
        }//: TAB VIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
