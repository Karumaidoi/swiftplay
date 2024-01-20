import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var showSheet: Bool = false;
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                
            }//: VSTACK
            .sheet(isPresented: $showSheet) {
                SheetView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.large])
            }
            .navigationBarTitle("Chats", displayMode: .large)
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button {
                        self.showSheet.toggle();
                    } label: {
                        Image(systemName: "paintbrush")
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }//: NAVIGATIONVIEW
    }
}
