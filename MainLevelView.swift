import SwiftUI


struct MainLevelView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LevelColumnView(id: 66, title: "第一階段封印",level:1)
                LevelColumnView(id: 67, title: "第二階段封印",level:2)
                LevelColumnView(id: 69, title: "第三階段封印",level:3)
                LevelColumnView(id: 70, title: "第四階段封印",level:4)
                LevelColumnView(id: 71, title: "第五階段封印",level:5)
            }
            
            .navigationTitle("主線封印")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
