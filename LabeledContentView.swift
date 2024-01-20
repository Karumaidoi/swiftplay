//
//  LabeledContentView.swift
//  swiftplay
//
//  Created by Alex Maina on 20/01/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct LabeledContentView: View {
    var actionName: String
    var url: String?
    
    // Function that parses a string to a URL
    func convertUrl(rawUrl: String) -> URL {
        return URL(string: rawUrl)!;
    }
    
    var body: some View {
        LabeledContent("Website") {
            Link("Link", destination: URL(string: url!)!)
        }
    }
}

@available(iOS 16.0, *)
struct LabeledContentView_Previews: PreviewProvider {
    static var previews: some View {
        LabeledContentView(actionName: "Website")
    }
}
