//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Akshit Saxena on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Intially with just the color, safe area would be spared from the colors
            // But when we do the .ignoreSafeArea, it will color that area also
//            Color(.blue)
//                .ignoresSafeArea(.all)
            
            // order of modifier(fon,styles, etc) matter
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding() //adds padding within the text
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit) // So that the image does not appear to be stretched
                        .frame(width: 180, height: 180) // The frame to adjust height and the width of the image
                    Text("76°") //option+shift+8 = °
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                    
                }
                
                Spacer() //using spacer will extend Vstack and push the text on the top. Spacers fill the entire spcae

            }
        }
    }
}

#Preview {
    ContentView()
}
