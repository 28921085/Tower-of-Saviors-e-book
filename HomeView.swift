import SwiftUI
import AVKit
struct HomeView: View {
    var width=UIScreen.main.bounds.width
    var height=UIScreen.main.bounds.height
    @State private var player = AVPlayer(url: Bundle.main.url(forResource: "video", withExtension: "mp4")!)
    var body: some View {
        VStack {
            Spacer()
            VideoPlayer(player:player)
                .frame(width: width, height: width*2.0/3.0)
            Spacer()
            HStack{
                Spacer()
                Link(destination: URL(string: "https://towerofsaviors.com/")!, label:{ 
                    Image("website")
                        .resizable()
                        .frame(width: width/12, height: width/12)
                })
                Spacer()
                Link(destination: URL(string: "https://www.facebook.com/tos.zh/")!, label:{ 
                    Image("FB")
                        .resizable()
                        .frame(width: width/12, height: width/12)
                })
                Spacer()
                Link(destination: URL(string: "https://www.youtube.com/channel/UCGdOY5emUeXJwZkOdZ-ChfA")!, label:{ 
                    Image("YT")
                        .resizable()
                        .frame(width: width/12, height: width/12)
                })
                Spacer()
            }
            Spacer()
        }
    }
}

