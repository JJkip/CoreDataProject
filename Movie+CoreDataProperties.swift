//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 25/07/2023.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var year: Int16
    @NSManaged public var director: String?
    @NSManaged public var title: String?
    
    public var wrappedTitle: String {
        title ?? "Unkwon title"
    }

}

extension Movie : Identifiable {

}
