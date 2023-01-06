//
//  ContentView.swift
//  Tutorial_#01
//
//  Created by 비바 on 2023/01/06.
//

import SwiftUI

struct ContentView: View {
    
    @State  // 값의 변화를 감지
    private var isActivated:Bool = false
    var body: some View {
        
        NavigationView{
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                   
                    
                } // hSack
                .padding(isActivated ? 50: 10)
                .background(isActivated ? Color.yellow: Color.black)
                .onTapGesture {
                    withAnimation{
                        self.isActivated.toggle()
                    }
                    
                }
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("navigation")
                        .fontWeight(.heavy)
                        .font( .system(size:40))
                        .padding(20)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                        
                }.padding(.top,10)
                
            } // VStack
        } // navigation
    } // view
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
