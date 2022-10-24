import SwiftUI

struct CharacterColumnView: View {
    let id:Int
    let name:String
    var body: some View {
        VStack {
            Image("\(id)")
                .imageScale(.large)
                .clipShape(Circle())
            Text(name)
        }
        
    }
}
struct CharacterBigImageView: View {
    let id:Int
    let name:String
    let color=[Color.blue,Color.red,Color.green,Color.yellow,Color.purple]
    func gen_color(x:Int)->Color{
        if x >= 66{
            if x == 67{
                return Color.yellow
            }
            if x == 70{
                return Color.red
            }
            if x == 71{
                return Color.green
            }
            return Color.purple
        }
        return color[(x-1)%5]
    }
    @State private var show = false
    var body: some View {
        VStack {
            if show{
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [gen_color(x: id), Color.white]), startPoint: .top, endPoint: .bottom))
                Image("b\(id)")
                    .resizable()
                    .scaledToFit()
                    .transition(.scale(scale: 0.01))
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, gen_color(x: id)]), startPoint: .top, endPoint: .bottom))
                
            }
        }
        .animation(.easeIn(duration: 1), value: show)
        .onAppear{
            show=true
        }
    }
}
struct SectionView: View{
    let L:Int
    let R:Int
    let text:String
    let data:[String]
    var width=UIScreen.main.bounds.width
    var body: some View {
        Section{
            ScrollView(.horizontal){
                let row = [GridItem()]
                LazyHGrid(rows: row){
                    ForEach(data.indices ,id:\.self){
                        i in
                        let p = i+1
                        if(p>=L && p<=R){
                            NavigationLink{
                                CharacterBigImageView(id: p, name: data[p-1])
                            }label:{
                                CharacterColumnView(id: p, name: data[p-1])
                            }
                        }
                    }
                }
            }
            
        }header:{
            Text(text)
                .font(.system(size: width/35.0))
        }
    }
}
