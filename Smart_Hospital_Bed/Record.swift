//
//  Record.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 20/4/2022.
//

import SwiftUI
import AVKit

struct Record: View{
    @State var record = false
    @State var session : AVAudioSession!
    @State var recorder: AVAudioRecorder!
    @State var alert = false
    
      var body: some View {
          VStack{
              Button(action:{
                  self.record.toggle()
              }) {
                  ZStack{
                      Circle()
                          .fill(Color.red)
                          .frame(width: 70, height: 70)
                      if self.record{
                          Circle()
                              .stroke(Color.white,lineWidth: 6)
                              .frame(width: 85, height: 85)
                      }
                  }
              }
              .padding(.vertical, 25)
          }
          .onAppear{
              do{
                  self.session = AVAudioSession.sharedInstance()
                  try self.session.setCategory(.playAndRecord)
                  self.session.requestRecordPermission{(status) in
                      if !status{
                          self.alert.toggle()
                      }
                  }
              }
              catch{
                  print(error.localizedDescription)
                  
              }
          }
      }
    }

/* struct Record: View {
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
}*/

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
        //Recorder()
    }
}
