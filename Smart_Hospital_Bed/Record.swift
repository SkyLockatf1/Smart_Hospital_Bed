//
//  Record.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 20/4/2022.
//

import SwiftUI
import AVFoundation

var recordButton: UIButton!
var recordingSession: AVAudioSession!
var audioRecorder: AVAudioRecorder!


struct Record: View {
    var body: some View {
        VStack{
            BottonButton(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                
            }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
    }
}
