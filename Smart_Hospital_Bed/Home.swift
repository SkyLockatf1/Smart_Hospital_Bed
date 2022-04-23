//
//  SwiftUIView.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 19/4/2022.
//

import SwiftUI



struct Home: View {
    @State private var showingAlert = false
    var body: some View {
        VStack{
            Text("Welcome to Smart Hospital Bed!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
            Image("user")
            Text("User")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            Button(action:{showingAlert = true}){
                    Text("Emergency Call")
                        .fontWeight(.bold)
                        .background(Color.red)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .padding(.all)
                    
                }
                .alert("Successfully Call Nurse", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
