//
//  SheetView.swift
//  swiftplay
//
//  Created by Alex Maina on 20/01/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Spacer()
                        
                        Image(systemName: "laurel.leading")
                            .font(.system(size: 80, weight: .black))
                        
                        VStack(spacing: -10) {
                            Text("Hike")
                                .font(.system(size: 66, weight: .black))
                            
                            Text("Editors Choice")
                                .fontWeight(.medium)
                        }//: HSTACK
                        
                        Image(systemName: "laurel.trailing")
                            .font(.system(size: 80, weight: .black))
                        
                        Spacer()
                    }//: HSTACK
                    .foregroundStyle(LinearGradient(colors: [.gray, .accentColor], startPoint: .top, endPoint: .bottom))
                    
                    VStack( alignment: .leading, spacing: 10) {
                       Text("Where can you find \nperfect tracks")
                            .font(.title2)
                            .fontWeight(.heavy)
                        
                        Text("The hike which looks georgeous in photos but it's even better once you are there. The hike that you will want to do someday. Find the best day hikes in the app.")
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                        
                        Text("Just off the boots! It's just out of the walk")
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                    }//: VSTACK
                    .frame(maxWidth: .infinity)
                    .padding(.top, 16)
                }//: SECTION
                .listRowSeparator(.hidden)
                
                Section("About the Application") {
                    LabeledContent("Compactibility", content: {Text("iPhone, iPad")})
                    
                    LabeledContent("Name", content: {Text("Hike")})
                    
                    LabeledContent("Designer", content: {Text("Alex Maina")})
                    
                    LabeledContentView(actionName: "Website", url: "https://www.linkedin.com")
                }
                .listRowSeparator(.visible)
            }//: LIST
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss();
                    } label: {
                        Text("Cancel")
                    }
                }
            }
        }//: NAVIGATIONVIEW
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            SheetView()
        } else {
            // Fallback on earlier versions
        }
    }
}
