//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 24/07/2023.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct ContentView: View {
    let students = [Student(name: "Larry Kiplang"), Student(name: "Alice Maua"), Student(name: "Faith Atieno"), Student(name: "John Kamau")]
    var body: some View {
        VStack {
            List {
                ForEach([2, 4, 6, 8, 10], id: \.self) {
                    Text("\($0) is even")
                }
            }
            
            List(students, id: \.self) { student in
                Text(student.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
