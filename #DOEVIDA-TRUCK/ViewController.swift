//
//  ViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by PDI on 13/02/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    var doadores : [Doador] = []
    var doador : Doador!
    
    var liberar = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.doadores = DoadoresDAO.getListaDoadores()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
      self.doadores = DoadoresDAO.listaDoadores
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func entrarNoSistema(_ sender: Any) {
    
        for doador in doadores
        {
            if (( loginTextField.text == doador.login) && ( senhaTextField.text == doador.senha))
            {
                DoadoresDAO.usuarioLogado = doador
                performSegue(withIdentifier: "segueAcesso", sender: nil)
                liberar = true
            }
            
        }
        if ( liberar == false){
           print("Você precisa ter cadastro!")
        }
        
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
       if ((segue.identifier == "segueAcesso") && ( liberar == true))
    {
        
            if let novaView = segue.destination as? MenuViewController {

           }
        }
    }
       
    


}

