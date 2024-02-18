//
//  PageTwoView.swift
//  TagSample
//
//  Created by 濱野遥斗 on 2024/02/18.
//

import SwiftUI

struct PageTwoView: View {
    @State private var pageTwoInputName: String = ""
    
    var body: some View {
        ScrollView{
            
            Text("その他の項目を選択してください").font(.custom("ZenMaruGothic-Regular", size: 20.0)).foregroundStyle(Color(UIColor(hexString: "333333")))
            Spacer()
            
            VStack(spacing: 10){
                HStack{
                    Text("旅行名").font(.custom("ZenMaruGothic-Regular", size: 20.0)).foregroundStyle(Color(UIColor(hexString: "333333")))
                    Spacer()
                }
                
//                TextField("旅程名を入力してください", text: $inputName)
//                    .padding()
//                    .font(.custom("ZenMaruGothic-Regular", size: 15.0)).foregroundStyle(Color(UIColor(hexString: "333333"))).background(Color(UIColor(hexString: "D9D9D9")))
//                    .cornerRadius(10)
                
            }
            Spacer()
            
            VStack(spacing: 10){
                HStack{
                    Text("行き先").font(.custom("ZenMaruGothic-Regular", size: 20.0)).foregroundStyle(Color(UIColor(hexString: "333333")))
                    Spacer()
                }
                
                CardView(image: Image("sample_\(1)"), size: 210)
            }
            
            Spacer()
            
            VStack(spacing: 10){
                HStack{
                    Text("シチュエーション")
                        .font(.custom("ZenMaruGothic-Regular", size: 20.0))
                        .foregroundStyle(Color(UIColor(hexString: "333333")))
                    Spacer()
                }
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 0) {
                        ForEach(0 ..< 4) { i in
                            NavigationLink(
                                destination: DetailScreen(),
                                label: {
                                    ProductCardView(image: Image("sample_\(i+1)"), size: 210)
                                })
                                .navigationBarHidden(true)
                                .foregroundColor(.black)
                        }
                        .padding(.trailing)
                    }
                }
        

                
            }
            Spacer()
            
        }.padding()
    }
}


struct PageTwoView_Previews: PreviewProvider {
    static var previews: some View {
//        PageTwoView(inputName: .constant("京都旅行"), inputDestination:.constant("清水寺"))
        PageTwoView()
    }
}


struct CardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: size, height: 110 * (size/210))
                .cornerRadius(20.0)
                .overlay(
                    VStack{
                        HStack{
                            Spacer()
                            Text("清水寺")
                                .font(.custom("ZenMaruGothic-Regular", size: 16.0))
                                .foregroundStyle(Color(UIColor(hexString: "333333")))
                        }
                        HStack(spacing: 5){
                            Spacer()
                            ZStack{
                                Text("季節")
                                    .font(.custom("ZenMaruGothic-Regular", size: 12.0))
                                    .foregroundStyle(Color(UIColor(hexString: "F4F4F4")))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 2)
                            }.background(Color(UIColor(hexString: "4A4A4A"))).cornerRadius(12)
                            
                            ZStack{
                                Text("所要時間")
                                    .font(.custom("ZenMaruGothic-Regular", size: 12.0))
                                    .foregroundStyle(Color(UIColor(hexString: "F4F4F4")))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 2)
                            }.background(Color(UIColor(hexString: "4A4A4A"))).cornerRadius(12)
                        }
                    }.padding()
                    ,alignment: .bottomTrailing
                )
            
            VStack(alignment: .leading){
                Text("清水寺")
                    .font(.custom("ZenMaruGothic-Regular", size: 16.0))
                    .foregroundStyle(Color(UIColor(hexString: "333333")))
                Text("日本の観光名所である京都内でも特に人気が高い清水寺。「音羽の滝」から流れ出る清らかな水にちなんで、清水寺という名前が付いています。")
                    .multilineTextAlignment(.leading)
                    .font(.custom("ZenMaruGothic-Regular", size: 10.0))
                    .foregroundStyle(Color(UIColor(hexString: "333333")))
            }
        }
//        .frame(width: size)
//        .padding()
//        .background(Color.white)
//        .cornerRadius(20.0)
        
    }
}
