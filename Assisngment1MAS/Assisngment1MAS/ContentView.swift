//
//  ContentView.swift
//  Assisngment1MAS
//
//  Created by Maxwell Nelson on Sepetember 4, 2022
//

import SwiftUI
import FirebaseDatabase
import FirebaseDatabaseSwift

struct ContentView: View {
    @State var count : Int = 0
    
    private let ref = Database.database().reference()
    
    
    
    var body: some View {
            VStack {
                Text("\(count)")
                    .font(Font.system(size: 50))
                Button(action: {self.count = count + 1}) {
                Text("Add to counter")
                        .font(.headline)
            }
                Button(action: {self.count = count * 0}) {
                Text("Reset")
                        .font(.headline)
            }
                Button(action: {ref.setValue(count)}) {
                Text("Sync")
                        .font(.headline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }


