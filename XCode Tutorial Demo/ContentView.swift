//
//  ContentView.swift
//  XCode Tutorial Demo
//
//  Created by Alex Eckardt on 2023-01-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
     
            Color(.systemMint)
                .ignoresSafeArea()
            
            NiagraCard()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NiagraCard: View {
    var body: some View {

        //Visible
        VStack(alignment: .leading, spacing: 20.0) {
            
            Image("TestImage")
                .resizable()
                .cornerRadius(15.0)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                
                //Title
                Text("A Waterfall")
                    .fontWeight(.bold)
                    .font(.title)
                
                Spacer()
                
                //Reviews
                VStack {
                    
                    //Stars
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                    }
                    
                    //Review Count
                    Text("Reviews (361)")
                }
                .foregroundColor(.orange)
                
                
                Spacer()
                
            }
            
            //Next Line
            
            Text("Some Description")
            
        }
        .padding()
        .background(CardBackground())
        
    }
}

struct CardBackground: View {
    var body: some View {
        Rectangle()
            .cornerRadius(15.0)
            .foregroundColor(.white)
            .shadow(radius: 15)
    }
}
