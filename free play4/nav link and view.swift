//
//  nav link and view.swift
//  free play4
//
//  Created by Jackson Gammack24 on 10/16/23.
//

import SwiftUI

struct nav_link_and_view: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello World",
                               destination: MyOtherScreen())
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All inboxes")
          //  .navigationBarTitleDisplayMode(.inline)
           // .navigationBarHidden(true)
            .navigationBarItems(leading:
                                    
                                    HStack{
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            }
                                    
                                   ,
                               trailing:
                                NavigationLink(
                                    destination: MyOtherScreen(),
                                    label: {
                                        Image(systemName: "gear")
                                    })
                                    .accentColor(.red)
                                )
                                }
    }
}

struct MyOtherScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
               // .navigationBarHidden(true)
            
            VStack {
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here for more", destination: Text("3rd Page"))
            }
        }
    }
}

struct nav_link_and_view_Previews: PreviewProvider {
    static var previews: some View {
        nav_link_and_view()
    }
}
