import SwiftUI


struct LandmarkList: View {
    var landmark : Landmark
    @State private var searchText: String = ""
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }.searchable(text: $searchText)
    }
}


#Preview {
    LandmarkList(landmark: landmarks[0])
}
