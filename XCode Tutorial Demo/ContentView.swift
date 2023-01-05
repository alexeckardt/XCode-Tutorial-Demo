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
            
            ImageCard(
                imageName: "TestImage",
                title: "Niagara Falls",
                desc: "A collection of waterfalls situated on the border between Canada and the United States.",
                starCount: 4.5,
                reviewCount: 348
                )
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ImageCard: View {
    
    let imageName: String
    let title: String
    let desc: String
    let starCount: Float
    let reviewCount: Int
    
    var body: some View {

        //Visible
        VStack(alignment: .leading, spacing: 20.0) {
            
            Image(imageName)
                .resizable()
                .cornerRadius(15.0)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                
                //Title
                Text(title)
                    .fontWeight(.bold)
                    .font(.title)
                
                Spacer()
                
                //Reviews
                ReviewSection(count:starCount, reviewcount: reviewCount)
                
                
                Spacer()
                
            }
            
            //Next Line
            Text(desc)
            
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

struct ReviewSection : View {
    let count: Float;
    let reviewcount: Int;
    
    var body: some View {
        
        VStack {
            
            //Stars
            Stars(count: 2.5)
            
            //Review Count
            Text("Reviews (" + String(reviewcount) + ")")
        }
        .foregroundColor(.orange)
    }
}

struct Stars : View {
    let count: Float;
    
    var body: some View {
        
        //Sideways Stars
        HStack {
            
            //Loop 5 times
            ForEach(0..<5) { i in
                
                //Full Stars
                if (i < Int(count)) {
                    Image(systemName: "star.fill")
                }
                else
                //Half Stars
                if (Float(i) < count) {
                    Image(systemName: "star.leadinghalf.filled")
                }
                //Empty
                else
                {
                    Image(systemName: "star")
                }
            }
        }
        
    }
}
