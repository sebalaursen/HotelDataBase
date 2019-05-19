//
//  CoreDataStack.swift
//  HotelDataBase
//
//  Created by Sebastian on /18/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit
import CoreData
//import CoreGraphics

final class CoreDataStack {
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Diary")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func load () {
//        let context = coreData.persistentContainer.viewContext
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
//
//        request.returnsObjectsAsFaults = false
//        do {
//            let results =  try context.fetch(request)
//
//            if (results.count > 0) {
//                for result in results as! [NSManagedObject] {
//                    if let name = result.value(forKey: "name") as? String, let text = result.value(forKey: "text") as? String, let favorite = result.value(forKey: "favorite") as? Bool {
//                        if(result.value(forKey: "image") != nil) {
//                            let image: UIImage = (UIImage(data: result.value(forKey: "image") as! Data))!
//                            list.append(DiaryNote(name: name, text: text, image: image, favorite: favorite))
//                        }
//                        else {
//                            list.append(DiaryNote(name: name, text: text, favorite: favorite))
//                        }
//                    }
//                }
//            }
//            favoriteList = list.filter() { $0.favorite == true }
//
//        } catch {
//            let nserror = error as NSError
//            print("Error while loading data \(nserror), \(nserror.userInfo)")
//        }
    }
    
    func add (name: String, text: String, image: UIImage?) {
//        let context = coreData.persistentContainer.viewContext
//        let newNote = NSEntityDescription.insertNewObject(forEntityName: "Note", into: context)
//
//        newNote.setValue(name, forKey: "name")
//        newNote.setValue(text, forKey: "text")
//        newNote.setValue(false, forKey: "favorite")
//        if image != nil {
//            let data: NSData = image!.jpegData(compressionQuality: 1)! as NSData
//            newNote.setValue(data, forKey: "image")
//        }
//        do {
//            try context.save()
//        }
//        catch {
//            let nserror = error as NSError
//            print("Context save error \(nserror), \(nserror.userInfo)")
//        }
    }
    
    func delete () {
//        let context = coreData.persistentContainer.viewContext
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
//
//        request.returnsObjectsAsFaults = false
//        do {
//            let results =  try context.fetch(request)
//            if (results.count > 0 && selectedItemIndex != nil) {
//                let result = results[selectedItemIndex!] as! NSManagedObject
//                context.delete(result)
//            }
//            try context.save()
//        } catch {
//            let nserror = error as NSError
//            print("Error while deleting data \(nserror), \(nserror.userInfo)")
//        }
    }
    
    func delete (at: Int) {
//        let context = coreData.persistentContainer.viewContext
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
//
//        request.returnsObjectsAsFaults = false
//        do {
//            let results =  try context.fetch(request)
//            if (results.count > 0) {
//                let result = results[at] as! NSManagedObject
//                context.delete(result)
//            }
//            try context.save()
//        } catch {
//            let nserror = error as NSError
//            print("Error while deleting data \(nserror), \(nserror.userInfo)")
//        }
    }
    
    func edit (name: String, text: String, image: UIImage?, favorite: Bool = false, at index: Int?) {
//        let context = coreData.persistentContainer.viewContext
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
//
//        request.returnsObjectsAsFaults = false
//
//        do {
//            let results =  try context.fetch(request)
//            if (results.count > 0 && index != nil) {
//                let result = results[index!] as! NSManagedObject
//                result.setValue(name, forKey: "name")
//                result.setValue(text, forKey: "text")
//                result.setValue(favorite, forKey: "favorite")
//                if image != nil {
//                    let data: NSData = image!.jpegData(compressionQuality: 1)! as NSData
//                    result.setValue(data, forKey: "image")
//                }
//            }
//
//            try context.save()
//
//        } catch {
//            let nserror = error as NSError
//            print("Error while deleting data \(nserror), \(nserror.userInfo)")
//        }
    }
}

