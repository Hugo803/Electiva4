//
//  ViewController.swift
//  20220409Ejercicio1G5
//  katherine Guadalupe Hernandez de la Cruz
//  Marcela Beatriz Sotelo Cantarero
//  Edwin Giovanni Duran Molina
//  Irvin Adrian Hernandez Campos
//  Yensy Vanessa Aguilar Mejia
//  Hugo Ernesto Jovel Martinez
//  Created by Development on 4/9/22.
//  Copyright © 2022 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var valo1: UITextField!
    @IBOutlet weak var valo2: UITextField!
    @IBOutlet weak var mypicker: UIPickerView!
    
    let pickerData = ["Suma", "Resta","Multiplicar","Division"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mypicker.dataSource=self
        mypicker.delegate=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    
    
    /*opcion=calculo.titleForSegment(at: calculo.selectedSegmentIndex)!
     resultado.text=opcion*/
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        var Valor1:Int=0
        var Valor2:Int=0
        var Resultado:Int=0
        
        Valor1=Int(valo1.text!)!
        Valor2=Int(valo2.text!)!
        
        switch row{
        case 0:
            Resultado=Valor1+Valor2
        case 1:
            Resultado=Valor1-Valor2
        case 2:
            Resultado=Valor1*Valor2
        default:
            Resultado=Valor1/Valor2
            
        }
        
        //Con datos quemados funciona.
        
        
        /* switch row{
         case 0:
         Resultado=2+2
         case 1:
         Resultado=2-2
         case 2:
         Resultado=2*2
         default:
         Resultado=25/5
         
         }*/
        
        
        resultado.text = String(Resultado)
        
        return pickerData[row]
        
    }
    
    
}



