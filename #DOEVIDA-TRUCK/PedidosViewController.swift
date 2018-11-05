//
//  PedidosViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/14/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class PedidosViewController: UIViewController {

    
    @IBOutlet weak var nomeMaiorLabel: UILabel!
    
    
    
    
    @IBOutlet weak var tipoSanguineoLabel: UILabel!
    
    
    @IBOutlet weak var motivoLabel: UILabel!
    
    @IBOutlet weak var bancoDeSangueLabel: UILabel!
    
    @IBOutlet weak var enderecoLabel: UILabel!
    
    @IBOutlet weak var imagemImageView: UIImageView!
    var pedido: Pedidos?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let pedido = self.pedido {
            
            self.nomeMaiorLabel.text = pedido.nome
            self.tipoSanguineoLabel.text = pedido.tipoDeSangue
            self.motivoLabel.text = pedido.motivo
            self.bancoDeSangueLabel.text = pedido.bancoDeSangue
            if (pedido.bancoDeSangue == "HEMOSE"){
                self.enderecoLabel.text = "R. Quinze, s/n - Capucho, Aracaju - SE, 49095-000"
            }
            else {
               self.enderecoLabel.text = "R. Guilhermino Rezende, 187 - Salgado Filho, Aracaju - SE, 49020-270, Brasil"
            }
            self.imagemImageView.image = UIImage(named: self.tipoSanguineoLabel.text!)

            
            // Do any additional setup after loading the view.
        }
        
        
        
        
    }
    
    var usuario : Doador! {
        return DoadoresDAO.usuarioLogado
    }
    
    
    
    @IBAction func alterarBolsas() {
        var indice: Int!
        var i  = 0
        
        for doadorX in PedidosDAO.listaPedidos {
            
            if doadorX.nome == pedido?.nome && doadorX.tipoDeSangue == pedido?.tipoDeSangue {
                indice = doadorX.quantidadeDeBolsas
                PedidosDAO.listaPedidos[i].quantidadeDeBolsas = indice - 1
                print(PedidosDAO.listaPedidos[i].quantidadeDeBolsas)
            }
            i+=1
        }
        if usuario.sexo == "Masculino"{
           usuario.desconto += 2.5
        }
        else {
           usuario.desconto += 3.33
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
