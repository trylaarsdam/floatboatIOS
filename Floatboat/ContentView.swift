//
//  ContentView.swift
//  floatboat
//
//  Created by Todd Rylaarsdam on 7/2/22.
//

import SwiftUI
import FloatboatLibrary
import AVKit

struct ContentView: View {
    @State var videoID = ""
    @State var videoURL = ""
    var body: some View {
        VStack {
            HStack {
                TextField("Video ID", text: $videoID).textFieldStyle(.roundedBorder)
                Button("Load") {
                    Task {
                        let response = await getVideo(videoID: videoID)
                        print(response)
                        videoURL = response.quality1080
                    }
                }
            }.padding([.leading, .trailing])
            VideoPlayer(player: AVPlayer(url:  URL(string: videoURL) ?? URL(string: "https://toddr.org")!))
                .frame(height: 400)
        }

    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
