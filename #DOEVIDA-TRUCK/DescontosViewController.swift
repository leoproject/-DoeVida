//
//  DescontosViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by PDI on 17/02/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class DescontosViewController: UIViewController {

    
    var descontos : Float?
    
    @IBOutlet weak var panielDescontoLabel: UILabel!
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    var usuario : Doador! {
        return DoadoresDAO.usuarioLogado
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        panielDescontoLabel.text = String( usuario.desconto)
        nomeLabel.text = usuario.nome
        
        
        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
