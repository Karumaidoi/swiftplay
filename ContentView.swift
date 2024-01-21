import SwiftUI
import AVKit


@available(iOS 16.0, *)
struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
            TabView  {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                    }
            }
     
    }
}
