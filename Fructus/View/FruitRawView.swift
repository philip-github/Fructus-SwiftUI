//
//  FruitRawView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/14/22.
//

import SwiftUI

struct FruitRawView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    
    //MARK: BODY
    var body: some View {
        HStack(spacing: 8){
            //MARK: Image
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,
                       height: 80,
                       alignment: .center)
                .shadow(color: .black.opacity(0.3),
                        radius: 3, x: 2, y: 2)
                .background(.linearGradient(colors: fruit.gradientColors,
                                            startPoint: .top,
                                            endPoint: .bottom)
                )
                .cornerRadius(8)
                .padding()
            
            VStack(alignment: .leading, spacing: 5){
                //MARK: Title
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                //MARK: Headline
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }//: VSTACK
        }//: HSTACK
    }
}

struct FruitRawView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRawView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
    }
}
