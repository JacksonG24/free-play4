//
//  Antmation curves.swift
//  free play4
//
//  Created by Jackson Gammack24 on 10/16/23.
//

import SwiftUI

struct Antmation_curves: View {
    let timing: Double = 10
    @State var isAnimated: Bool = false
    var body: some View {
        
        VStack{
            Button("Button"){
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 3.0,
                    dampingFraction: 1.0,
                    blendDuration: 1.0
                ))
//                .animation(Animation.linear(duration: timing ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing ))
     }
    }
}

struct Antmation_curves_Previews: PreviewProvider {
    static var previews: some View {
        Antmation_curves()
    }
}
