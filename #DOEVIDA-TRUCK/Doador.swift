//
//  Doadores.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/14/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import Foundation

class Doador {

    let nome : String
    let tipoSangue : String
    let peso : Float
    let login : String
    let senha : String
    let contato : String
    var desconto : Float
//    let datasDoacao : [String]
    let sexo : String
    
    init(nome: String, tipoSangue: String, peso: Float, login: String, senha: String, contato: String, desconto : Float, sexo : String ) {
        self.nome = nome
        self.tipoSangue = tipoSangue
        self.login = login
        self.senha = senha
        self.contato = contato
        self.desconto = desconto
//        self.datasDoacao = datasDoacao
        self.peso = peso
        self.sexo = sexo
    }
}


class DoadoresDAO {
    
    static var usuarioLogado: Doador?
    
    static var listaDoadores : [Doador] = [Doador(nome: "Leonardo de Jesus Silva", tipoSangue: "A+", peso: 56.0, login: "leo@ufs", senha: "leo2017", contato: "5463653", desconto:0.0, sexo: "Masculino")]
    
    
    
    static func getListaDoadores() -> [Doador]{
    
         listaDoadores.append(Doador(nome: "Lara Moura Costa", tipoSangue: "O-", peso: 56.0, login: "lara", senha: "lara2017", contato: "5463653", desconto:0.0, sexo: "Feminino"))
        listaDoadores.append(Doador(nome: "Hilton Campelo Barbosa", tipoSangue: "AB+", peso: 78.0, login: "hilton@jobs", senha: "apple", contato: "", desconto: 0.0, sexo: "Masculino"))
        listaDoadores.append(Doador(nome: "Vanessa Costa da Silva", tipoSangue: "A-", peso: 46.0, login: "vanessa@ufs", senha: "vanessa2017", contato: "", desconto: 0.0, sexo: "Feminino"))
        
        return listaDoadores
    
    }
    
   

}
