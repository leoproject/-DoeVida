//
//  CadastrarViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/14/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class CadastrarViewController: UIViewController {
    // campo dos dados a serem gravados no DAO
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var sexoSegmentControl: UISegmentedControl!
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var contatoTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
   
    let tipoSangue = ["A+","A-" , "B+","AB+", "AB-", "O+", "O-"]
    
    // Outlet para a label que usamos para testar
    @IBOutlet weak var pickerViewLabel: UILabel! {
        didSet {
            pickerViewLabel.text = "Tipo de Sangue: \(sangueSelecionado)"
        }
    }
    
    // Outlet para a Picker View
    @IBOutlet weak var pickerView: UIPickerView! {
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
    
    @IBAction func cadastrarDoador(_ sender: Any) {
        let p : Float = Float(pesoTextField.text!)!
        let i = sexoSegmentControl.selectedSegmentIndex
        
//        var listaDeUsuario : [Doador]! {
//            return  DoadoresDAO.listaDoadores.append(Doador(nome: nomeTextField.text!, tipoSangue:sangueSelecionado, peso: p, login: loginTextField.text!, senha: senhaTextField.text!, contato: contatoTextField.text!, desconto: 0.0, sexo: sexoSegmentControl.titleForSegment(at: i)!))
//      }
        
      DoadoresDAO.listaDoadores.append(Doador(nome: nomeTextField.text!, tipoSangue:sangueSelecionado, peso: p, login: loginTextField.text!, senha: senhaTextField.text!, contato: contatoTextField.text!, desconto: 0.0, sexo: sexoSegmentControl.titleForSegment(at: i)!))
    
    print(DoadoresDAO.listaDoadores.count)
      
        navigationController?.popViewController(animated: true)
        
        
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//}

// MARK: -
// Aqui estamos implementando os protocolos UIPickerViewDataSource e UIPickerViewDelegate
extension CadastrarViewController: UIPickerViewDataSource, UIPickerViewDelegate {
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
