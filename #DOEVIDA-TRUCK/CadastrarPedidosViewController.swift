//
//  CadastrarPedidosViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by PDI on 17/02/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class CadastrarPedidosViewController: UIViewController {
    @IBOutlet weak var quantidadeTextField: UITextField!
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var motivoTextView: UITextView!
    
    @IBOutlet weak var bancoDeSangue: UISegmentedControl!
    
    let tipoSangue = ["A +","A-" , "B+","AB+", "AB-", "O+", "O-"]
    
    @IBOutlet weak var pickerViewLabel: UILabel!{
        didSet {
            pickerViewLabel.text = "Tipo de Sangue: \(sangueSelecionado)"
        }
    }
    
    @IBOutlet weak var pickerView: UIPickerView!{
        didSet {
            // Definimos que os métodos de Data Source e Delegate do Picker View foram implementados pela nossa classe
            pickerView.dataSource = self
            pickerView.delegate = self
        }
    }
    
    // Retorna o valor do componente selecionado na Picker View
    var sangueSelecionado: String {
        get {
            // Com o selectedRow(inComponent:) é possível saber qual
            // linha o usuário escolheu na Picker View
            return tipoSangue[pickerView.selectedRow(inComponent: 0)]
        }
    }
    
    @IBAction func salvarPedidos(_ sender: Any) {
        let i = bancoDeSangue.selectedSegmentIndex
        PedidosDAO.listaPedidos.append(Pedidos(nome: nomeTextField.text!, tipoDeSangue: sangueSelecionado, quantidadeDeBolsas: Int(quantidadeTextField.text!)!, motivo: motivoTextView.text, bancoDeSangue: bancoDeSangue.titleForSegment(at: i)!))
        navigationController?.popViewController(animated: true)

        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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


// MARK: -
// Aqui estamos implementando os protocolos UIPickerViewDataSource e UIPickerViewDelegate
extension CadastrarPedidosViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    // MARK: Picker View Data Source
    // Quantas colunas a Picker View deve ter?
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Quantas linhas tem em cada coluna?
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoSangue.count
    }
    
    // MARK: - Picker View Delegate
    // Qual texto vai aparecer em cada linha na coluna?
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoSangue[row]
    }
    
    // O que vai acontecer quando o usuário selecionar uma coluna?
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        pickerViewLabel.text = "Tipo de Sangue: \(sangueSelecionado)"
    }
    
}
