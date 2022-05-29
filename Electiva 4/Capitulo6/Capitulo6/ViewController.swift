//
//  ViewController.swift
//  Capitulo6
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var name1Label: UILabel!
    @IBAction func showName (sender: AnyObject)
    {
        nameLabel.text = "Mi nombre es : Hugo Ernesto Jovel Martinez "
        
    }
    
    @IBAction func showCapitulo (sender: AnyObject)
    {
        
            name1Label.text = "Capitulo 6 - Solucion "
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


