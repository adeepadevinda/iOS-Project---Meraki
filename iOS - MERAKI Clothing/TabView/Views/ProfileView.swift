import SwiftUI

struct ProfileView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignUpActive = false
    
    var body: some View {
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
                    
                    Text("Sign In")
                        .fontWeight(.medium)
                        .font(.title)
                        .padding(.bottom, 20)
                    
                    TextField("", text: $email)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain)
                        .placeholder(when: email.isEmpty) {
                            Text("Username / Email")
                                .foregroundColor(.black)
                                .bold()
                                .padding(.leading)
                        }
                        .padding(.horizontal)
                        .onReceive(email.publisher.collect()) { characters in
                            let filtered = String(characters.filter { $0.isLetter })
                            if filtered != email {
                                self.email = filtered
                            }
                        }
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.black)
                        .padding(.bottom)
                    
                    SecureField("", text: $password)
                        .foregroundColor(.black)
                        .placeholder(when: password.isEmpty) {
                            Text("Password")
                                .foregroundColor(.black)
                                .bold()
                                .padding(.leading)
                        }
                        .padding(.horizontal)
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.black)
                        .padding(.bottom)
                    
                    NavigationLink(destination: ContentView(), isActive: $isSignUpActive) {
                        Button(action: {
                            // Perform sign in action here
                            // For demonstration, let's navigate to ContentView
                            isSignUpActive = true
                        }) {
                            Text("Sign In")
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 200, height: 40)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(LinearGradient(colors: [.blue], startPoint: .top, endPoint: .bottomTrailing))
                                )
                        }
                        .padding()
                    }
                    
                    Button(action: {
                        // Navigate to sign up view
                    }) {
                        Text("Don't have an account? Sign Up")
                            .underline()
                    }
                }
                .padding()
            }
        }
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
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}


//        func login
//        Auth.auth().signIn(withEmail: email, password: password) { result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//
//                func register
//                Auth.auth().createUser(withEmail: email, password: password) { result, error in
//                    if error != nil {
//                        print(error!.localizedDescription)
//                    }
//                }
//            }
//        }
