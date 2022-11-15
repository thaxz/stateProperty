//
//  ContentView.swift
//  testingStates
//
//  Created by thaxz on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    
    // telling the view to watch the state of this variables
    
    @State private var backgroundColor: Color = Color.white
    @State private var foregroundColor: Color = Color.black
    
    var body: some View {
        
        ZStack {
            
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text("Choose your theme")
                    .font(.title.bold())
                
                HStack(spacing: 20){
                    
                    Button {
                        backgroundColor = .white
                        foregroundColor = .black
                    } label: {
                        Text("Light")
                            .font(.headline)
                    }
                    
                    Button {
                        backgroundColor = .black
                        foregroundColor = .white
                    } label: {
                        Text("Dark")
                            .font(.headline)
                    }
                }
                
            }
            .foregroundColor(foregroundColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
