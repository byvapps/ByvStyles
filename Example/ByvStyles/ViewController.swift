//
//  ViewController.swift
//  ByvStyles
//
//  Created by adrianByv on 05/04/2018.
//  Copyright (c) 2018 adrianByv. All rights reserved.
//

import UIKit
import ByvStyles
import SwiftRichString

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.bgNamedColor("yellowText")
        
        label.styledText("<titleBoldWhite>Añade tu vehículo</titleBoldWhite>")
        
        label2.styledText("<subtitleMessages>Hay una reparación asociada a este mantenimiento pendiente de valorar.</subtitleMessages> <subtitleMessagesBold>Obtendrás un 2% de descuento</subtitleMessagesBold> <subtitleMessages>de la factura en € bigs.</subtitleMessages>")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

