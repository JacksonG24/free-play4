//
//  Animation.swift
//  free play4
//
//  Created by Jackson Gammack24 on 10/16/23.
//

import SwiftUI

struct Animation: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button"){
                withAnimation(.default){
                    isAnimated.toggle()
                }
 
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 720 : 0))
                .offset(y: isAnimated ? 300 : 0 )
                
            
            Spacer()
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
