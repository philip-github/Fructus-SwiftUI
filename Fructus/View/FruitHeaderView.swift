//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/14/22.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    //MARK: BODY
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15),
                        radius: 8,
                        x: 6,
                        y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }//: BODY
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
