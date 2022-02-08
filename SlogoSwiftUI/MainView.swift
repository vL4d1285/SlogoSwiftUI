//
//  ContentView.swift
//  SlogoSwiftUI
//
//  Created by Vladislav Ryabtsev on 08.02.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var firstTextAnimation = false
    @State private var secondTextAnimation = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack{
                LogoView().frame(width: 200, height: 200)
                VStack(alignment: .leading) {
                    Text("SwiftBook")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 2).delay(3)) {
                                firstTextAnimation.toggle()
                            }
                        }
                        .opacity(firstTextAnimation ? 1 : 0)
                    Text("Обучение мобильной разработке для IOS и Android")
                        .foregroundColor(.white)
                        .frame(width: 250)
                        .onAppear{
                            withAnimation(.easeInOut(duration: 2).delay(5)) {
                                secondTextAnimation.toggle()
                            }
                        }
                        .opacity(secondTextAnimation ? 1 : 0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
