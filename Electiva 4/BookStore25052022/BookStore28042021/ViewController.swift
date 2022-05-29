//
//  ViewController.swift
//  BookStore25052022
//
//  Created by alexis on 25/5/22.
//  Copyright © 2022 alexis. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var myTableView: UITableView!
    
    var managedObjectContext: NSManagedObjectContext!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        managedObjectContext = appDelegate.persistentContainer.viewContext as NSManagedObjectContext
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func addNew(_ sender: UIBarButtonItem) {
        
        let book: Book = NSEntityDescription.insertNewObject(forEntityName: "Book", into: managedObjectContext) as! Book
        book.title = "My Book" + String(loadBooks().count)
        do{
            try managedObjectContext.save()
        }catch let error as NSError {
            NSLog("My Error: %@", error)
        }
        myTableView.reloadData()
    }
    
    func loadBooks() -> [Book] {
        let fetchRequest: NSFetchRequest<Book> = Book.fetchRequest()
        var result: [AnyObject] = []
        do {
            result = try managedObjectContext.fetch(fetchRequest)
        } catch let error as NSError {
            NSLog("My Error: %@", error)
        }
        return result as! [Book]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loadBooks().count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as UITableViewCell?
        let book: Book = loadBooks()[indexPath.row]
        cell?.textLabel?.text = book.title
        return cell!
    }
    
    
}

