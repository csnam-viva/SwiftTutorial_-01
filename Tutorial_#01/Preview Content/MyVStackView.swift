//
//  MyStackView.swift
//  Tutorial_#01
//
//  Created by 비바 on 2023/01/06.
//
import SwiftUI

struct MyVStackView: View{
    @Binding
    var isActivatedA: Bool
    init(isActivated : Binding<Bool> = .constant(true)){
        self._isActivatedA = isActivated  //프로퍼티 랩퍼가 적용된 녀석을 가져오기 위해는 변수 명 앞에 _언더스코어
    }
    var body: some View{
        VStack{
            Text("1!")
                .font(.system(size:60))
            Text("2!")
                .font(.system(size:60))
            Text("3!")
                .font(.system(size:60))
        }
        .background(self.isActivatedA ? Color.green : Color.red )
        .padding(self.isActivatedA ? 10 : 0)
    }
}


struct Previews_MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
