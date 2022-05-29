//
//  ViewController.swift
//  Suscripcion2505392015
//
//  Created by Development on 4/23/22.
//  Copyright © 2022 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataSource = ["Diario","Semanal","Quincenal","Mensual","Bimestral","Trimestral","Semestral", "Anual"]
    
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var producto: UISegmentedControl!
    @IBOutlet weak var recurrencia: UIPickerView!
    @IBOutlet weak var valorDiario: UITextField!
    @IBOutlet weak var nDiasRecurrencia: UITextField!
    @IBOutlet weak var totalSuscripcion: UITextField!
    @IBOutlet weak var nRegistros: UILabel!
    @IBOutlet weak var btnAgregar: UIButton!
    @IBOutlet weak var btnActualizar: UIButton!
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnLeer: UIButton!
    //Declarando variables para almacenar, posicion, producto
    var suscripcion = [[String]]()
    var datos = [String]()
    var posicion:Int = 0
    var productoSeleccionado:String = ""
    //descuento
    var descuento:Double = 0.0
    //subtotal
    var subtotal:Double = 0.0
    var vdp:Double = 0.0
    var dr:Double = 0.0
    
    @IBAction func indexChanged(_ sender: Any) {
        switch  producto.selectedSegmentIndex {
        case 0:
            valorDiario.text = "1.25"
            calcular("")
        case 1:
            valorDiario.text = "1.00"
            calcular("")
        case 2:
            valorDiario.text = "0.75"
            calcular("")
        case 3:
            valorDiario.text = "0.5"
            calcular("")
        default:
            break
        }
    }
    @IBAction func calcular(_ sender: Any) {
        vdp =  (valorDiario.text! as NSString).doubleValue
        dr = (nDiasRecurrencia.text! as NSString).doubleValue
        subtotal = (vdp * dr) - ((vdp*dr)*descuento)
        totalSuscripcion.text = String(subtotal)
    }
    @IBAction func agregar(_ sender: Any) {
        //dimencion con datos
        datos.append(nombre.text!)
        datos.append(valorDiario.text!)
        datos.append(nDiasRecurrencia.text!)
        datos.append(totalSuscripcion.text!)
        //insersion array de guardado
        suscripcion.append(datos)
        nRegistros.text = String(suscripcion.count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //al iniciar la app muestra el total de numeros de registros
        nRegistros.text = String(suscripcion.count)
        recurrencia.dataSource = self
        recurrencia.delegate = self
        nDiasRecurrencia.isEnabled = false
        valorDiario.isEnabled = false
        calcular("")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (dataSource[row] == "Diario"){
            nDiasRecurrencia.text = "1"
            descuento = 0.00
            calcular("")
        }
        else if(dataSource[row] == "Semanal"){
            nDiasRecurrencia.text = "7"
            descuento = 0.00
            calcular("")
        }
        else if(dataSource[row] == "Quincenal"){
            nDiasRecurrencia.text = "15"
            descuento = 0.00
            calcular("")
        }
        else if (dataSource[row] == "Mensual"){
            nDiasRecurrencia.text = "30"
            descuento = 0.001
            calcular("")
        }
        else if(dataSource[row] == "Bimestral"){
            nDiasRecurrencia.text = "60"
            descuento = 0.004
            calcular("")
        }
        else if(dataSource[row] == "Trimestral"){
            nDiasRecurrencia.text = "90"
            descuento = 0.007
            calcular("")
        }
        else if(dataSource[row] == "Semestral"){
            nDiasRecurrencia.text = "180"
            descuento = 0.001
            calcular("")
        }
        else if(dataSource[row] == "Anual"){
            nDiasRecurrencia.text = "360"
            descuento = 0.002
            calcular("")
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        calcular("")
        return dataSource[row]
    }
}
