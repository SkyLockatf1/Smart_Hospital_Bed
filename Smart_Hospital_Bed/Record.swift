//
//  Record.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 20/4/2022.
//

import SwiftUI
import AVFoundation

class RecorderController: AVAudioRecorderDelegate{
      struct Recorder: View{
    
      var body: some View {
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      }
    }
}

struct Record: View {
    var body: some View {
        NavigationView{
            List{
                Text("hi")
            }
            .navigationTitle("Doc. Record")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    NavigationLink(destination: Recorder(), label:{
                      Text("Recorder")
                    })
                }
            }
        }
    }
}

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
    }
}
