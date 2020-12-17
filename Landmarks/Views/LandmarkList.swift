//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Abdul R. Arraisi on 17/12/20.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone 12"], id:\.self) { item in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: item))
                .previewDisplayName(item)
        }
    }
}
