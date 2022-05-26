//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 13/01/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected : String
    var videoTitle : String
    
    var body: some View {
        NavigationView {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
                .navigationBarTitle(videoTitle, displayMode: .inline)
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
