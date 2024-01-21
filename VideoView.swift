//
//  VideoView.swift
//  swiftplay
//
//  Created by Alex Maina on 21/01/2024.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var body: some View {
        VideoPlayer(player: playVideo(file: "cheetah", type: "mp4"))
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
