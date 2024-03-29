////
////  SignInView.swift
////  iOS - MERAKI Clothing
////
////  Created by Adeepa on 2024-03-28.
////
//

import SwiftUI

struct SignInView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var retypePassword = ""
    @State private var isSignInActive = false // Track the navigation state
    
    var body: some View {
        
        ZStack {
          
            
            NavigationView {
                ZStack {
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                        .opacity(0.5)
                    VStack {
                        Image("Meraki__1_-removebg-preview")
                            .resizable()
                            .frame(width: 200, height: 150)
                            .padding(.horizontal)
                            .padding(.vertical)
                        
                        TextField("Name", text: $name)
                            .textFieldStyle(.plain)
                            .padding()
                            

                        
                        TextField("Email", text: $email)
                            .textFieldStyle(.plain)
                            .padding()
                            .foregroundColor(.black)
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(.plain)
                            .padding()
                        
                        SecureField("Re-type Password", text: $retypePassword)
                            .textFieldStyle(.plain)
                            .padding()
                        
                        Button(action: {
                            // Action to perform when Sign In button is clicked
                            isSignInActive = true // Activate the navigation
                        }) {
                            Text("Sign Up")
                                .bold()
                                .frame(width: 200, height: 40)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [.blue]),
                                            startPoint: .top,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                )
                                .foregroundColor(.white)
                        }
                        HStack{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                            Spacer()
                            Text("By continuing you Agree to our Terms of Service and Privacy Policy")
                        }
                        .padding(.horizontal)
                        .padding(.bottom) // Add some bottom padding
                        
                        NavigationLink(
                            destination: ContentView(), // Navigate to ContentView when Sign In button is clicked
                            isActive: $isSignInActive, // Bind to isSignInActive state
                            label: { EmptyView() } // Use EmptyView for the label
                        )
                        
                    }
                    .padding()
                } // Add padding to the VStack
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

//import SwiftUI
//
//struct SignInView: View {
//    @State private var email = ""
//    @State private var password = ""
//    @State private var repassword = ""
//    var body: some View {
//        Text("Sign In")
//            .bold()
//            .font(.title)
//
//        TextField(" Email", text: $email)
//            .foregroundColor(.black)
//            .textFieldStyle(.plain)
//            .placeholder(when: email.isEmpty) {
//                Text("Email")
//                    .foregroundColor(.white)
//                    .bold()
//                    .padding(.leading)
//            }
//        Rectangle()
//            .frame(width: 350, height: 1)
//            .foregroundColor(.black)
//            .padding(.bottom)
//    }
//}
//
//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
