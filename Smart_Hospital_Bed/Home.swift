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
            Text("Welcome to Smart Elerly Helper")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
            Image("user")
                .resizable()
                .frame(width: 50, height: 50)
            Text("User")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            HStack{
                Button(action: {}){
                    Text("Nurse")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .padding()
                }
                .frame(maxWidth: .infinity, minHeight: 100)
                .background(Color.red)
                .cornerRadius(10)
                Button(action: {}){
                    Text("Family Member")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                }
                .frame(maxWidth: .infinity, minHeight: 100)
                .background(Color.green)
                .cornerRadius(10)
            }
            HStack{
                Button(action: {}){
                    Text("Doctor Advice")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                        .foregroundColor(Color.white)
                }
                .frame(maxWidth: .infinity, minHeight: 100)
                .background(Color.blue)
                .cornerRadius(10)
                Button(action: {}){
                    Text("Social Worker")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.brown)
                        .padding(.top)
                        
                }
                .frame(maxWidth: .infinity, minHeight: 100)
                .background(Color.yellow)
                .cornerRadius(10)
            }
            Button(action:{showingAlert = true}){
                Text("Emergency Call")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.all)
                
            }
            .frame(maxWidth: 300, minHeight: 110)
            .background(Color.red)
            .cornerRadius(10)
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
