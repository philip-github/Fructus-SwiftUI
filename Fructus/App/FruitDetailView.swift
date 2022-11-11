//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/14/22.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    
    //MARK: BODY
    var body: some View {
        //MARK: NAVIGATION VIEW
        NavigationView {
            //MARK: SCROLL VIEW
            ScrollView(.vertical, showsIndicators: false){
                VStack( alignment: .center, spacing: 20){
                    //MARK: HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //MARK: TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //MARK: HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //MARK: NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //MARK: SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //MARK: DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //MARK: LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640)
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .toolbar(.hidden)
            }//: SCROLL VIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
