//
//  MyStackView.swift
//  Tutorial_#01
//
//  Created by 비바 on 2023/01/06.
//
import SwiftUI

struct MyVStackView: View{
    var body: some View{
        VStack{
            Text("1!")
                .font(.system(size:60))
            Text("2!")
                .font(.system(size:60))
            Text("3!")
                .font(.system(size:60))
        }
        .background(Color.red)
    }
}


struct Previews_MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
