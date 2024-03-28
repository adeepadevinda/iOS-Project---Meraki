import SwiftUI

struct ProfileView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignUpActive = false // Track the navigation state
    
    var body: some View {
        NavigationView { // Embed the content in a NavigationView
            VStack {
                Text("Sign In")
                    .fontWeight(.medium)
                    .font(.title)
                
                TextField(" Email", text: $email)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading)
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
                    .padding(.bottom)
                
                SecureField(" Password", text: $password)
                    .textFieldStyle(.plain)
                    .foregroundColor(.black)
                    .placeholder(when: email.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading)
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
                    .padding(.bottom)
                
                NavigationLink(destination: ContentView(), isActive: $isSignUpActive) {
                    Button(action: {
                        // Action to perform when Sign In button is clicked
                        isSignUpActive = true // Activate the navigation
                    }) {
                        Text("Sign In")
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
                }
                .padding(.bottom) // Add some bottom padding
                
                NavigationLink( // New NavigationLink for signing in
                    destination: SignInView(), // Navigate to SignInView when "Don't have an account yet? Sign Up" button is clicked
                    label: {
                        Text("Don't have an account yet? Sign Up")
                            .foregroundColor(.black)
                            .bold()
                    }
                )
            }
            .padding() // Add padding to the VStack
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
        ZStack(alignment: alignment){
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
