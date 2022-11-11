//
//  FruitCardView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/13/22.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    //MARK: BODY
    var body: some View {
        ZStack {
            VStack{
                //MARK: FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15),
                            radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0)
                //MARK: IMAGE TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15),
                            radius: 2, x: 2, y: 2)
                //MARK: FRUIT HEADLING
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //MARK: BUTTON START
                StartButtonView()
                
            }//: VSTACK
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity,
                   alignment: .center)
            .background(.linearGradient(
                colors: fruit.gradientColors,
                startPoint: .top,
                endPoint: .bottom))
            .cornerRadius(12)
            
        }//: ZSTACK
        .padding(.horizontal, 20)
        .onAppear {
            DispatchQueue.main.async {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                }
            }
        }
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[1])
    }
}
