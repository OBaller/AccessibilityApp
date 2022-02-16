//
//  ContentView.swift
//  VoiceOver
//
//  Created by naseem on 15/02/2022.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "ales-krivec",
        "galina-n",
        "kevin-horstmann",
        "nicolas-tissot"
    ]
    
    @State var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = Int.random(in: 0...3)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
