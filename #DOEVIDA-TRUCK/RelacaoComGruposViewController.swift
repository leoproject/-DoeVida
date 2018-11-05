//
//  RelacaoComGruposViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/15/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class RelacaoComGruposViewController: UIViewController {


    @IBOutlet weak var nomeUsuarioLabel: UILabel!
   
    @IBOutlet weak var tipoSangueLabel: UILabel!
    
    @IBOutlet weak var tabelaImageView: UIImageView!
    
    
    var usuario : Doador! {
        return DoadoresDAO.usuarioLogado
    }
    
    @IBAction func doarSangue() {
        if ( usuario.sexo == "Masculino"){
            usuario.desconto = usuario.desconto+2.5
        }
        else {
              usuario.desconto = usuario.desconto+3.33
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       nomeUsuarioLabel.text = usuario.nome
       tipoSangueLabel.text = usuario.tipoSangue
        
        
        switch tipoSangueLabel.text! {
        case "A+":
            tabelaImageView.image = UIImage(named: "TABELAA+")
            break
        case "A-":
            tabelaImageView.image = UIImage(named: "TABELAA-")
            break
            
        case "B+":
            tabelaImageView.image = UIImage(named: "TABELAB+")
            break
        case "B-":
            tabelaImageView.image = UIImage(named: "TABELAB-")
            
        case "AB+":
            tabelaImageView.image = UIImage(named: "TABELAAB+")
        case "AB-":
            tabelaImageView.image = UIImage(named: "TABELAAB+")
            
            
        case "O+":
            tabelaImageView.image = UIImage(named: "TABELAO+")
            break
        case "O-":
            tabelaImageView.image = UIImage(named: "TABELA0-")
            break
            
        default:
            print("Erro")
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
