import SwiftUI
import FirebaseCore

// Define your ContentView here or import it if it's already defined in another file

    var body: some View {
        Text("Hello, World!")
    }


@main
struct YourAppNameApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ProfileView()
        }
    }
}
