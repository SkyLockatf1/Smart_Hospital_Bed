//
//  ContentView.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 19/4/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem{
                    Label("Home",systemImage: "house")
                }
            Record(audioRecorder: AudioRecorder())
                .tabItem{
                    Label("Record",systemImage: "list.bullet")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
