import SwiftUI


// new-york - Find a file of new york and rename it to new-york and add to project
struct ContentView: View {
    @State var BestThing1: String = ""
    @State var BestThing2: String = ""
    @State var BestThing3: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Hygge")
                .font(.largeTitle)
                .frame(alignment: .top)
            Text("What are the three best things that happened to you today?")
                .font(.subheadline)
            
            Image("new-york")
                .resizable()
                .frame(width: 340, height: 300, alignment: .top)
            
            VStack(alignment: .center) {
                TextField("1st Best Thing that happened today!", text:
                            $BestThing1)
                .textFieldStyle(.roundedBorder)
                .padding()
                TextField("2nd Best Thing that happened today!", text: $BestThing2)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                TextField("3rd Best Thing that happened today!", text:
                            $BestThing3)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
            
            
            Button("Submit") {
                print(BestThing1)
                print(BestThing2)
                print(BestThing3)
            }
        }
    }
}

