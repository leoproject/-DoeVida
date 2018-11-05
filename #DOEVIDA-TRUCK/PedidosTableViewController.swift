//
//  PedidosTableViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/14/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class PedidosTableViewController: UITableViewController {
    
    var pedidos: [Pedidos] = [Pedidos]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pedidos = PedidosDAO.getListaPedidos()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.pedidos = PedidosDAO.listaPedidos
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.pedidos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        
        if let pedidosCell = cell as? PedidosTableViewCell{
            
            let pedido = self.pedidos[indexPath.row]
            
            pedidosCell.nomeLabel.text = pedido.nome
            
            pedidosCell.tipoDeSangueLabel.text = pedido.tipoDeSangue
            pedidosCell.quantidadeDeSangueLabel.text = String(pedido.quantidadeDeBolsas)
            pedidosCell.sangueImage.image = UIImage(named : pedidosCell.tipoDeSangueLabel.text!)
            pedidosCell.localLabel.text = pedido.bancoDeSangue
            
        }
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetalheSegue" {
            
            if let detalheVC = segue.destination as? PedidosViewController{
                //qual linha foi selecionada
                if let indice = tableView.indexPathForSelectedRow {
                    //qual a informaçao naquela linha
                    let nomeSelecionado = self.pedidos[indice.row]
                    //passando a info pra proxima tela
                    detalheVC.pedido = nomeSelecionado
                    
                    // Get the new view controller using segue.destinationViewController.
                    // Pass the selected object to the new view controller.
                }}}}
    
    
}
