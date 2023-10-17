//
//  transistion.swift
//  free play4
//
//  Created by Jackson Gammack24 on 10/16/23.
//

import SwiftUI

struct transistion: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                    
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                   .animation(.easeInOut)
            }
            
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct transistion_Previews: PreviewProvider {
    static var previews: some View {
        transistion()
    }
}
