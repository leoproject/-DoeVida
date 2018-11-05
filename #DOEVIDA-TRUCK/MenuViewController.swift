//
//  MenuViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/15/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var apresentacaoLabel: UILabel!
    
    var usuario : Doador! {
        return DoadoresDAO.usuarioLogado
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if ( usuario.sexo == "Feminino") {
           apresentacaoLabel.text = ("Bem vinda \(usuario.nome)")
        }
        else{
            apresentacaoLabel.text = ("Bem vindo \(usuario.nome)")
        }
        
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
