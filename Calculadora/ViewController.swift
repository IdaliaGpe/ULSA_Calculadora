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
    
    @IBAction func BarraPropina(_ sender: Any) {
        //Propina
        //let valorSlider = Int(1)
        //let porcentaje = Int(1)
        //let propina = lblBarraPropina.value * Float(porcentaje)
        //let text = "\(propina)%"
        
        //PorcentajeBarra.text = text
        PorcentajeBarra.text = "\(Int(lblBarraPropina.value))%"
        
        lblTotal.text = "$\(TotalCuenta.text!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

