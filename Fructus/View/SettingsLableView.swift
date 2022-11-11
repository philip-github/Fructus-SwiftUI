//
//  SettingsLableView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/14/22.
//

import SwiftUI

struct SettingsLableView: View {
    //MARK: PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: BODY
    var body: some View {
        HStack{
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }//: HSTACK
    }
}

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
