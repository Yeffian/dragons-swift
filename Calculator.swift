import SwiftUI
import Foundation

struct ContentView: View {  
    @State var Expression: String = ""
    @State var Result: Float? = 0.0
    @State var DisplayText: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
//            Text(Expression)
//            Text(Result)
            Text(DisplayText)
            
            HStack {
                Button("7") {
                    DisplayText += "7"
                }
                
                Button("8") {
                    DisplayText += "8"
                }
                
                Button("9") {
                    DisplayText += "9"
                }
            }
            HStack {
                Button("4"){
                    DisplayText += "4"
                }
                
                Button("5") {
                    DisplayText += "5"
                }
                
                Button("6") {
                    DisplayText += "6"
                }
            }
            HStack {
                Button("1") {
                    DisplayText += "1"
                }
                
                Button("2") {
                    DisplayText += "2"
                }
                
                Button("3") {
                    DisplayText += "3"
                }
            }
            HStack {
                Button("+") {
                    DisplayText += "+"
                }
                
                Button("-") {
                    DisplayText += "-"
                } 
                
                Button("/") {
                    DisplayText += "/"
                }
                
                Button("*") {
                    DisplayText += "*"
                }
            }
            
            Button("=") {
                let expr = NSExpression(format:DisplayText)
                DisplayText = String(expr.expressionValue(with: nil, context: nil) as? Float ?? 0.0)
            }
        }
    }
}

