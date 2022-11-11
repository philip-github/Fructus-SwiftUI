//
//  SettingsView.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/14/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("onBoarding") var isOnboarding: Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK: SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol, Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }//: HSTACK
                    } label: {
                        SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
                    }//: GROUP BOX
                    
                    //MARK: SECTION 2
                    GroupBox {
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLableView(labelText: "customization", labelImage: "paintbrush")
                    }

                    //MARK: SECTION 3
                    GroupBox{
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLable: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLable: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "4.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLableView(labelText: "Application", labelImage: "apps.iphone")
                    }
                }//: VSTACK
            }//: SCROLL VIEW
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .fontWeight(.bold)
                    }))
        }//: NAVIGATION VIEW
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
