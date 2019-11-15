//
//  ContentView.swift
//  BullsEye
//
//  Created by Dmitrii Fotesco on 11/6/19.
//  Copyright © 2019 Dmitrii Fotesco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            //First Row
            Spacer()
            HStack {
                Text("Put the bullseye as close as you can to: ")
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            
            //Slider Row
            HStack {
                Text("1")
                Slider(value: .constant(10))
                Text("100")
            }
            Spacer()
            
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Button Hit!"), message: Text("my popup brings all the guys to the yard"), dismissButton:
                    .default(Text("Oki Doki!")))
            }
            
            Spacer()
            
            //Score Row
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Start Over")
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                Text("Score: ")
                Text("99999")
                Spacer()
                Text("Round: ")
                Text("99999")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Info")
                }
            }
            .padding(.bottom, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
}
