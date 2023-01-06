//
//  MyTextView.swift
//  Tutorial_#01
//
//  Created by 비바 on 2023/01/06.
//

import SwiftUI

struct MyTextView: View {
    var body: some View{
        VStack{
            Text("배경 아이템")
                .font(.system(size:40))
                .fontWeight(.heavy)
        }.background(Color.red)
    }
}
struct MyTextView_Pre: PreviewProvider{
    static var previews: some View{
        MyTextView()
    }
    
}
