import SwiftUI

@available(iOS 16.0, *)
@main
struct MyApp: App {
    @State private var viewModel: AnimalStateData = AnimalStateData();
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
