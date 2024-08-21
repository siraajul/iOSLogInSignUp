//
//  ContentView.swift
//  StackView
//
//  Created by Sirajul Islam on 16/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        
        VStack(spacing:20) {
            
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                Text("Get help from experts in 15 minutes")
                    .foregroundStyle(.white)
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                
                Image("student")
                    .resizable()
                .scaledToFit()
                
                Image("tutor")
                    .resizable()
                .scaledToFit()
                
            }
            .padding(.horizontal, 20)
            
            Text("Need help with coding problems? Register!")
                .foregroundStyle(.white)
            
            Spacer()
            
            if verticalSizeClass == .compact{
                HSignUpButtonGroup()
            }else{
                VSignUpButtonGroup()
            }
        }
        .background{
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

#Preview("ContentView (LandScape)",traits: .landscapeLeft) {
    ContentView()
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack{
            
            Button{
                
            }label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            
            Button{
                
            }label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        }
    }
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack{
            
            Button{
                
            }label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            Button{
                
            }label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
    }
}
