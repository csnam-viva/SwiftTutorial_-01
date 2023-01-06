//
//  MyTextView.swift
//  Tutorial_#01
//
//  Created by 비바 on 2023/01/06.
//

import SwiftUI

struct MyTextView: View {
    @Binding
    var isActivatedA: Bool
    init(isActivated : Binding<Bool> = .constant(true)){
        self._isActivatedA = isActivated  //프로퍼티 랩퍼가 적용된 녀석을 가져오기 위해는 변수 명 앞에 _언더스코어
    }
    
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
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: 100)
            Text("활성화상태: \(String(isActivatedA))" )
                .font(.system(size:40))
                .fontWeight(.bold)
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
                .foregroundColor(self._isActivatedA.wrappedValue ? Color.yellow: Color.gray)
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
