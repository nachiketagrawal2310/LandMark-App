//
//  LandmarkRow.swift
//  demo
//
//  Created by Nachiket Agrawal on 30/05/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image.resizable().frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

//#Preview {
//    LandmarkRow(landmark: landmarks[0])
//}
//
//
//
//#Preview {
//    LandmarkRow(landmark: landmarks[1])
//}
//
//
//#Preview {
//    LandmarkRow(landmark: landmarks[2])
//}


//#Preview("Turtle Rock") {
//    LandmarkRow(landmark: landmarks[0])
//}
//
//
//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}


#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
