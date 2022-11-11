//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/15/22.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    //MARK: BODY
    var body: some View {
        VStack {
            Divider().padding(4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil ) {
                    Text(content!)
                }else if (linkLable != nil && linkDestination != nil) {
                    Link(destination: URL(string: linkDestination!)!, label: {
                        Text(linkLable!)
                    })
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }//: HSTACK
        }//: VSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingsRowView(name: "Website",
                        linkLable: "SwiftUI Master Class",
                        linkDestination: "swiftuimasterclass.com")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
