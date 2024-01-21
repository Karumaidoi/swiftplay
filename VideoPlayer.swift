//
//  VideoPlayer.swift
//  swiftplay
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(file: String, type: String) -> AVPlayer {
    if Bundle.main.url(forResource: file, withExtension: type) != nil {
        videoPlayer = AVQueuePlayer(url: Bundle.main.url(forResource: file, withExtension: type)!);
        videoPlayer?.play();
    }
    
    return videoPlayer!;
}

func playUrlVideo(file: String, type: String) -> AVPlayer {
    print(file);
    guard let url = URL(string: file) else {
        fatalError("Unable to get the URL");
    }
    
    videoPlayer = AVPlayer(url: url);
    
    videoPlayer?.play();
    
    return videoPlayer!;
}
