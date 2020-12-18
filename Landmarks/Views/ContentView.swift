//
//  ContentView.swift
//  Landmarks
//
//  Created by Abdul R. Arraisi on 17/12/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .previewDevice("iPhone 12")
    }
}
