import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
            .tabItem{
                Label("首頁",  systemImage:"house.fill")
            }
            
            CharacterView()
                .tabItem{
                    Label("卡片一覽",systemImage:"person.fill")
                }
            MainLevelView()
                .tabItem{
                    Label("主線封印",systemImage:"flag.2.crossed.fill")
                }
        }
    }
}
