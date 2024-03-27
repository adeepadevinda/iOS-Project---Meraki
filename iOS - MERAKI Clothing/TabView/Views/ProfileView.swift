//
//  ProfileView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-13.
//

import SwiftUI

struct ProfileView: View {
    @State private var email = " "
    var body: some View {
        Text("Sign In")
            .fontWeight(.medium)
            .font(.title)
        TextField("email", text: $email)
            .foregroundColor(.white)
            .textFieldStyle(.plain)
            .placeholder(when: email.isEmpty) {
                Text("email")
                    .foregroundColor(.white)
                    .bold()
            }
        Rectangle()
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension View {
    func placeholder<Content: View>(
    when shouldShow: Bool,
alignment: Alignment = .leading,
    @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment){
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
