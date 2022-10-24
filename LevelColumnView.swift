import SwiftUI

struct LevelColumnView: View {
    var id:Int
    var title:String
    var level:Int
    var width=UIScreen.main.bounds.width
    var body: some View {
        NavigationLink{
            LevelView(level:level,title: title)
        }label: {
            HStack{
                Spacer()
                Image("\(id)")
                    .resizable()
                    .frame(width: width/10.0, height: width/10.0)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("\(title)")
                    .font(.system(size: width/35.0))
                Spacer()
                Spacer()
                Spacer()
                Image(systemName: "chevron.right")
                Spacer()
            }
        }
    }
}
struct LevelView: View {
    var level:Int
    var title:String
    @State private var page:Int=1
    var width=UIScreen.main.bounds.width
    var height=UIScreen.main.bounds.height
    var body: some View {
        VStack{
            if(level == 1){
                TabView(selection: $page){
                    EnemyView(level:1,special:0,round: 1,maxRound: 5).tag(1)
                    EnemyView(level:1,special:0,round: 2,maxRound: 5).tag(2)
                    EnemyView(level:1,special:0,round: 3,maxRound: 5).tag(3)
                    EnemyView(level:1,special:0,round: 4,maxRound: 5).tag(4)
                    EnemyView(level:1,special:66,round: 5,maxRound: 5).tag(5)
                }
                .tabViewStyle(.page)
                .frame(width: width, height: height/4)
            }
            else if(level == 2){
                TabView(selection:$page){
                    EnemyView(level:2,special:0,round: 1,maxRound: 7).tag(1)
                    EnemyView(level:2,special:0,round: 2,maxRound: 7).tag(2)
                    EnemyView(level:2,special:0,round: 3,maxRound: 7).tag(3)
                    EnemyView(level:2,special:0,round: 4,maxRound: 7).tag(4)
                    EnemyView(level:2,special:0,round: 5,maxRound: 7).tag(5)
                    EnemyView(level:2,special:0,round: 6,maxRound: 7).tag(6)
                    EnemyView(level:2,special:67,round:7,maxRound: 7).tag(7)
                }
                .tabViewStyle(.page)
                .frame(width: width, height: height/4)
            }
            else if(level == 3){
                TabView(selection:$page){
                    EnemyView(level:3,special:0,round: 1,maxRound: 8).tag(1)
                    EnemyView(level:3,special:0,round:2,maxRound: 8).tag(2)
                    EnemyView(level:3,special:0,round: 3,maxRound: 8).tag(3)
                    EnemyView(level:3,special:0,round: 4,maxRound: 8).tag(4)
                    EnemyView(level:3,special:0,round: 5,maxRound: 8).tag(5)
                    EnemyView(level:3,special:0,round: 6,maxRound: 8).tag(6)
                    EnemyView(level:3,special:0,round: 7,maxRound: 8).tag(7)
                    EnemyView(level:3,special:69,round: 8,maxRound: 8).tag(8)
                }
                .tabViewStyle(.page)
                .frame(width: width, height: height/4)
            }
            else if(level == 4){
                TabView(selection:$page){
                    EnemyView(level:4,special:0,round: 1,maxRound: 10).tag(1)
                    EnemyView(level:4,special:0,round: 2,maxRound: 10).tag(2)
                    EnemyView(level:4,special:0,round: 3,maxRound: 10).tag(3)
                    EnemyView(level:4,special:0,round: 4,maxRound: 10).tag(4)
                    EnemyView(level:4,special:0,round: 5,maxRound: 10).tag(5)
                    EnemyView(level:4,special:0,round: 6,maxRound: 10).tag(6)
                    EnemyView(level:4,special:0,round: 7,maxRound: 10).tag(7)
                    EnemyView(level:4,special:0,round: 8,maxRound: 10).tag(8)
                    EnemyView(level:4,special:0,round: 9,maxRound: 10).tag(9)
                    EnemyView(level:4,special:70,round: 10,maxRound: 10).tag(10)
                }
                .tabViewStyle(.page)
                .frame(width: width, height: height/4)
            }
            else{
                TabView(selection:$page){
                    EnemyView(level:5,special:0,round: 1,maxRound: 10).tag(1)
                    EnemyView(level:5,special:0,round: 2,maxRound: 10).tag(2)
                    EnemyView(level:5,special:0,round: 3,maxRound: 10).tag(3)
                    EnemyView(level:5,special:0,round: 4,maxRound: 10).tag(4)
                    EnemyView(level:5,special:30,round: 5,maxRound: 10).tag(5)
                    EnemyView(level:5,special:0,round: 6,maxRound: 10).tag(6)
                    EnemyView(level:5,special:0,round: 7,maxRound: 10).tag(7)
                    EnemyView(level:5,special:0,round: 8,maxRound: 10).tag(8)
                    EnemyView(level:5,special:0,round: 9,maxRound: 10).tag(9)
                    EnemyView(level:5,special:71,round: 10,maxRound: 10).tag(10)
                }
                .tabViewStyle(.page)
                .frame(width: width, height: height/4)
            }
            ZStack(alignment: .top){
                Image("skill")
                    .resizable()
                    .scaledToFit()
                if level == 1 && page == 5{
                    VStack{
                        Text("萬魔之王 薩魯曼")
                            .foregroundColor(Color.purple)
                            .offset(x:0,y:height/28.0)
                        Text("技能：召喚小怪")
                            .foregroundColor(Color.white)
                            .offset(x:0,y:height/28.0)
                    }
                }
                else if level == 2 && page == 7{
                    VStack{
                        HStack{
                            Text("雙體共生 噬日狼")
                                .foregroundColor(Color.yellow)
                                .offset(x:0,y:height/28.0)
                            Text("雙體共生 喰月狼")
                                .foregroundColor(Color.purple)
                                .offset(x:0,y:height/28.0)
                        }
                        Text("技能：雙體共生")
                            .foregroundColor(Color.white)
                            .offset(x:0,y:height/28.0)
                    }
                }
                else if level == 3 && page == 8{
                    VStack{
                        Text("碑文騎士 奧丁")
                            .foregroundColor(Color.purple)
                            .offset(x:0,y:height/28.0)
                        Text("技能：強化盾")
                            .foregroundColor(Color.white)
                            .offset(x:0,y:height/28.0)
                    }
                }
                else if level == 4 && page == 10{
                    VStack{
                        Text("元素操縱者 迪亞布羅")
                            .foregroundColor(Color.red)
                            .offset(x:0,y:height/28.0)
                        Text("技能：轉屬 剋屬盾")
                            .foregroundColor(Color.white)
                            .offset(x:0,y:height/28.0)
                    }
                }
                else if level == 5 && page == 5 {
                    Text("暗月夜龍")
                        .foregroundColor(Color.purple)
                        .offset(x:0,y:height/28.0)
                } 
                else if level == 5 && page == 10{
                    VStack{
                        Text("雖死猶在 毒龍尼格霍徳")
                            .foregroundColor(Color.green)
                            .offset(x:0,y:height/28.0)
                        Text("技能：溢補盾")
                            .foregroundColor(Color.white)
                            .offset(x:0,y:height/28.0)
                    }
                }
                else{
                    Text("隨機小怪")
                        .foregroundColor(Color.white)
                        .offset(x:0,y:height/28.0)
                }
            }
            
        }
        .navigationTitle("\(title)")
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct EnemyView: View {
    var level:Int
    var special:Int
    var round:Int
    var maxRound:Int
    var width=UIScreen.main.bounds.width
    var height=UIScreen.main.bounds.height
    var body: some View {
        ZStack{
            if special > 65{
                Image("background_boss")
                    .resizable()
                    .scaledToFit()
                    
            }
            else{
                Image("background_normal")
                    .resizable()
                    .scaledToFit()
            }
            VStack{
                Text("BATTLE \(round)/\(maxRound)")
                    .foregroundColor(Color.white)
                HStack{
                    if level == 1{
                        if special != 0{
                            Image("b66")
                                .resizable()
                                .frame(width: width/4.5, height: height/4.5)
                        }
                        else{
                            ForEach(0..<3){
                                i in
                                Image("\(level)-\(Int.random(in:1...10))")
                                    .resizable()
                                    .frame(width: width/8, height: height/10, alignment: .center)
                            }
                        }
                    }
                    else if level == 2{
                        if special != 0{
                            HStack{
                                Image("b67")
                                    .resizable()
                                    .frame(width: width/5, height: height/4.5)
                                Image("b68")
                                    .resizable()
                                    .frame(width: width/5, height: height/4.5)
                            }
                        }
                        else{
                            ForEach(0..<2){
                                i in
                                Image("\(level)-\(Int.random(in:1...10))")
                                    .resizable()
                                    .frame(width: width/6, height: height/10, alignment: .center)
                            }
                        }
                    }
                    else {
                        if special != 0{
                            Image("b\(special)")
                                .resizable()
                                .frame(width: width/2.2, height: height/4.5)
                        }
                        else{
                            ForEach(0..<3){
                                i in
                                Image("\(level)-\(Int.random(in:1...10))")
                                    .resizable()
                                    .frame(width: width/8, height: height/10, alignment: .center)
                            }
                        }
                    }
                }
            }
            
        }
    }
}
