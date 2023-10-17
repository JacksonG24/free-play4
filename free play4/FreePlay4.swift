//
//  FreePlay4.swift
//  free play4
//
//  Created by Jackson Gammack24 on 10/17/23.
//

import SwiftUI

struct FreePlay4: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Next Day",
                               destination: MyOtherScreen1())
                Text("Monday")
                    .font(.title)
                Text("Block One from 8:30-9:50")
                    .padding()
                Text("Block Three from 9:55-11:14")
                    .padding()
                Text("Block Five from 11:20-1:15")
                    .padding()
                Text("Block Seven from 1:20-2:40")
                    .padding()
                Text("Office hours from 2:45-3:00")
                    .padding()
                
                
             
            }
            .navigationTitle("Blake schedule")
          //  .navigationBarTitleDisplayMode(.inline)
           // .navigationBarHidden(true)
            .navigationBarItems(leading:
                                    
                                    HStack{
                Image(systemName: "person.fill")
             
            }
                                    
                                   ,
                               trailing:
                                NavigationLink(
                                    destination: MyOtherScreen1(),
                                    label: {
                                        Image(systemName: "gear")
                                    })
                                    .accentColor(.red)
                                )
                                }
    }
}

struct MyOtherScreen1: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
        
            
            VStack {
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                    
                    
                    
                }
                Text("Tuesday")
                    .font(.title)
                Text("Block Two from 8:30-9:50")
                    .padding()
                Text("Block Four from 9:55-11:14")
                    .padding()
                Text("Block Six from 11:20-1:15")
                    .padding()
                Text("Assembly and Advisory from 1:20-2:40")
                    .padding()
                Text("Flex from 2:45-3:00")
                    .padding()
                
            }
            
        }
    }
}

struct FreePlay4_Previews: PreviewProvider {
    static var previews: some View {
        FreePlay4()
    }
}
