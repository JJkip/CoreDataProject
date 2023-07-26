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
    @Environment(\.managedObjectContext) var moc

    @FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    let students = [Student(name: "Larry Kiplang"), Student(name: "Alice Maua"), Student(name: "Faith Atieno"), Student(name: "John Kamau")]
    var body: some View {
        VStack {
            List (wizards, id: \.self){ wizard in
                Text(wizard.name ?? "Unkown")
            }
            Button("Add") {
                let wizard = Wizard(context: moc)
                wizard.name = "John Doe"
            }
            Button("Save") {
                do {
                    try moc.save()
                } catch {
                    print(error.localizedDescription)
                }
            }
            /*
            List {
                ForEach([2, 4, 6, 8, 10], id: \.self) {
                    Text("\($0) is even")
                }
            }
            
            List(students, id: \.self) { student in
                Text(student.name)
            }
            Button("Save") {
                if moc.hasChanges {
                    try? moc.save()
                }
            }
             */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
