//
//  BambooCell.swift
//  bamboo-watchOS WatchKit Extension
//
//  Created by gsm10 on 2021/11/02.
//

import SwiftUI

enum bambooColor {
    static let green : Color = Color(red: 87/255, green: 204/255, blue: 77/255)
    static let gray : Color = Color(red: 171 / 255, green: 171 / 255, blue: 171 / 255)
    
}

enum bambooFont {
    static let title : Font = Font.custom("NanumSquareRoundB", size: 12)
    static let algorithm : Font = Font.custom("NanumSquareRoundB", size: 12)
    static let time : Font = Font.custom("NanumSquareRoundR", size: 12)
    static let tag : Font = Font.custom("NanumSquareRoundB", size: 12)
    static let content : Font = Font.custom("NanumSquareRoundR", size: 11)
    static let likeText : Font = Font.custom("NanumSquareRoundR", size: 12)
}


struct BambooCell: View {
    
    @Binding var model: postModel
    
    
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack{
                        Text("#\(model.number)번째")
                            .font(bambooFont.algorithm)
                            .foregroundColor(bambooColor.green)
                        Text("알고리즘")
                            .font(bambooFont.algorithm)
                            .foregroundColor(bambooColor.green)
                    }
                    Text("\(model.createdAt.getPostedDate())")
                        .font(bambooFont.time)
                        .foregroundColor(bambooColor.gray)
                    Spacer()
                    Text("#\(model.tag)")
                        .font(bambooFont.tag)
                        .foregroundColor(bambooColor.green)
                    
                }
                .padding(EdgeInsets(top: 4.47, leading: 0, bottom: 3, trailing: 0))
                HStack {
                    Text("\(model.title)")
                        .font(bambooFont.title)
                        .foregroundColor(.black)
                    Spacer()
                }
                HStack{
                    Text("\(model.content)")
                        .font(bambooFont.content)
                        .foregroundColor(.black)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Image("BAMBOO_Leaf_Empty")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("1")
                        .font(bambooFont.likeText)
                        .foregroundColor(.black)
                }
                Spacer()
            }
        }
    }
        
}

struct BambooCell_Previews: PreviewProvider {
    static var previews: some View {
        BambooCell(model: .constant(postModel()))
    }
}
