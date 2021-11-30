//
//  ContentView.swift
//  bamboo-watchOS WatchKit Extension
//
//  Created by gsm10 on 2021/11/02.
//

import SwiftUI

struct ContentView: View {
    @State var model = [postModel(dict: [:])]
    
    var body: some View {
    
        List{
            ForEach(model.indices, id: \.self) { index in
                BambooCell(model: $model[index])
                    .listRowBackground(Color.white.clipped().cornerRadius(5))
            
            }
        }
        .onAppear {
            getapi()
        }
    }
    
    func getapi(){
        API.shared.getTest { posts in
            self.model = posts
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
