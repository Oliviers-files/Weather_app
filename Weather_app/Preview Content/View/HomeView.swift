//
//  HomeView.swift
//  Weather_app
//
//  Created by Stellone Olivier on 28/09/2024.
//

import SwiftUI

struct HomeView: View {
    
     var attributedString: AttributedString {
        var string = AttributedString("87º" + "\n  " + "Mostly Clear")
        
        if let temp = string.range(of: "87º") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " \n  ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        return string
    }
    
    var body: some View {
        ZStack {
            // Background Color
            Color.background1
                .edgesIgnoringSafeArea(.all)
            
            // Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // Little House
            Image("House")
                .frame(maxWidth: .infinity, alignment: .top)
                .padding(.top, 257)
            
            VStack(alignment: .center, spacing: -10, content: {
                Text("Dubai")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text(attributedString)
                    
                    HStack {
                        Text("H:104º")
                            .fontWeight(.semibold)
                            .font(.system(size: 25))
                          //.foregroundStyle(.white)
                        
                        Text("L:82º")
                            .fontWeight(.semibold)
                            .font(.system(size: 25))
                            //.foregroundStyle(.white)
                }
                    .padding()
                
                Spacer()
            })
            .padding(.top, 51)
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
