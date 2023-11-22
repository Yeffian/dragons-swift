import SwiftUI

struct ContentView: View {
    @State private var itemList = Array<String>()
    
    @State private var showingAlert = false
    @State private var newListItem = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(itemList, id: \.self) { contact in
                    Text(contact)
                }.onDelete { indexSet in
                    itemList.remove(atOffsets: indexSet)
                }
                .onMove { itemList.move(fromOffsets: $0, toOffset: $1)}
            }
            .toolbar {
                EditButton()
                Button("+") {
                    showingAlert.toggle()
                    print("Pressed")
                }
                .alert("Enter a list item", isPresented: $showingAlert) {
                    TextField("Enter list item", text: $newListItem)
                    Button("OK", action: submit)
                }
            }
        }
    }
    func submit() {
        print("You entered \(newListItem)")
        itemList.append(newListItem)
        
    }
}
