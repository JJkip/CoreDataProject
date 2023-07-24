//
//  DataConroller.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 24/07/2023.
//

import Foundation
import CoreData

class DataConroller: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
            
        }
    }
}

