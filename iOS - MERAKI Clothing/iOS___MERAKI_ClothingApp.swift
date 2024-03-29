import SwiftUI
import Firebase

@main
struct FirebaseTutorialApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ProfileView()
        }
    }
}
