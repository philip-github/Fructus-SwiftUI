//
//  FructusApp.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/13/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("onBoarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
