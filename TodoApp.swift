import SwiftUI

struct ContentView: View {
    @State var todos: Array<String> = Array()
    
    var body: some View {
        Text("Todo App")
        VStack(alignment: .center) {
            List($todos, id: \.self) { todo in 
                HStack {
                    Spacer()
                    Text(todo)
                    Spacer()
                    // Initalizer 'init(_:)' requires that Binding<String> conform to 'StringProtocol"
                    Button() {
                        todos.remove(at: todos.firstIndex(of: todo))
                    }
                }
            }
            
            Button("Show") {
                todos.append("Foo")
                todos.append("Bar")
                todos.append("Baz")
            }
        }
    }
}
