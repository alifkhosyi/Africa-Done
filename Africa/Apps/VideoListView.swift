//
//  VideoListView.swift
//  Africa
//
//  Created by Alif Khosyi Rahmatullah on 12/01/22.
//

import SwiftUI

struct VideoListView: View {
    var video : [VideoModel] = Bundle.main.decode("videos.json")
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(video) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical,10)
                    }
                }
            } .navigationBarTitle("Videos", displayMode: .inline)
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
