//
//  MyTextView.swift
//  Tutorial_#01
//
//  Created by 비바 on 2023/01/06.
//

import SwiftUI

struct MyTextView: View {
    @State
    private var index: Int = 0
    private let bgColor = [
        Color.red,
        Color.white,
        Color.blue,
        Color.gray,
        Color.yellow
    ]
    var body: some View{
        VStack{
            Spacer()
            Text("배경 아이템 #\(self.index)")
                .font(.system(size:40))
                .fontWeight(.bold)
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
                
            Spacer()
                
        }.background(bgColor[index])
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                
                self.index = (self.bgColor.count - 1) == self.index ? 0: self.index + 1
                
            }
    }
    
}
struct MyTextView_Pre: PreviewProvider{
    static var previews: some View{
        MyTextView()
    }
    
}
