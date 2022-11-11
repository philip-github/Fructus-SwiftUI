//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/14/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = [
        "Energy",
        "Sugar",
        "Fat",
        "Protien",
        "Vitamins",
        "Minerals"]
    
    //MARK: BODY
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutrional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .font(.system(.body).bold())
                        .foregroundColor(fruit.gradientColors[1])
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: HSTACK
                }//: LOOP END
            }//: DISCLOSURE GROUP
        }//: GROUP BOX
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
