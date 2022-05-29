//
//  ViewController.swift
//  Parcial42505392015
//
//  Created by Development on 5/21/22.
//  Copyright © 2022 Development. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var managedObjectContext: NSManagedObjectContext!
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        managedObjectContext = appDelegate.persistentContainer.viewContext as NSManagedObjectContext
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func add(_ sender: UIBarButtonItem) {
        
        let book: Informacion = NSEntityDescription.insertNewObject(forEntityName: "Informacion", into: managedObjectContext) as! Informacion
        book.frases = " Producto " + String(loadBooks().count)
        do{
            try managedObjectContext.save()
        }catch let error as NSError {
            NSLog("My Error: %@", error)
        }
        myTableView.reloadData()
        
    }
    func loadBooks() -> [Informacion] {
        let fetchRequest: NSFetchRequest<Informacion> = Informacion.fetchRequest()
        var result: [AnyObject] = []
        do {
            result = try managedObjectContext.fetch(fetchRequest)
        } catch let error as NSError {
            NSLog("My Error: %@", error)
        }
        return result as! [Informacion]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loadBooks().count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as UITableViewCell?
        let book: Informacion = loadBooks()[indexPath.row]
        cell?.textLabel?.text = book.frases
        return cell!
    }
}

