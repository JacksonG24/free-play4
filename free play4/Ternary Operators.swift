//
//  Ternary Operators.swift
//  free play4
//
//  Created by Jackson Gammack24 on 10/16/23.
//

import SwiftUI

struct Ternary_Operators: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 400 : 50)
        
            
            
            Spacer()
        }
    }
}

struct Ternary_Operators_Previews: PreviewProvider {
    static var previews: some View {
        Ternary_Operators()
    }
}
