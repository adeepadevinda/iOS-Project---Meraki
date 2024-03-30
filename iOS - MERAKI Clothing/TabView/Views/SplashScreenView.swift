//
//  SplashScreenView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-30.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ProfileView()
        } else {
            VStack {
                Image("Meraki__1_-removebg-preview")
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.isActive = true
                        }
                    }
                    .padding()
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

