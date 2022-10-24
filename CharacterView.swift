import SwiftUI


struct CharacterView: View {
    let columns = [GridItem()]
    let series : [String]  = ["主角","中國神","防龍","命運女神" , "遊俠","巨像" , "機械獸", "西方獸", "希臘神", "北歐神", "埃及神", "西遊神","機龍"]
    @State private var data : [String] = []
    @State private var show = false
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:columns){
                        ForEach(0..<13){
                            i in
                            SectionView(L: i * 5 + 1, R: i * 5 + 5, text: series[i] , data: data)
                        }
                        SectionView(L: 66, R: 71, text: "封王", data: data)
                }
            }
            .navigationTitle("卡片一覽")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear{
                if let url = Bundle.main.url(forResource: "name", withExtension: "txt"),
                   let asset = try? String(contentsOf: url){
                    let array = asset.split(separator: "\r\n")
                    for i in (0..<Int(array.count)){
                        data.append(String(array[i]))
                    }
                }
            }
            
        }
            
        
    }
}
