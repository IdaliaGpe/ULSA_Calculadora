//
//  ViewController.swift
//  Calculadora
//
//  Created by Alumno on 8/19/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TotalCuenta: UITextField!
    @IBOutlet weak var lblBarraPropina: UISlider!
    @IBOutlet weak var PorcentajeBarra: UILabel!
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Variable Barra
    var texto = Float(0)
    
    @IBAction func BarraPropina(_ sender: Any) {
        
        //Barra
        texto = lblBarraPropina.value
        PorcentajeBarra.text = "\(Int(texto))%"
        
        //Propina
        let totalP = TotalCuenta.text!
        let total = Float(totalP) ?? 0.0
        let resulPropina = (total * (texto/100.0))
        let precioTotal = total + resulPropina
        
        //Totales
        lblPropina.text = String(format: "$ %.2f", resulPropina)
        lblTotal.text = String(format: "$ %.2f", precioTotal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

