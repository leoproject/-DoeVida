//
//  Pedidos.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/14/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import Foundation

class Pedidos {
    
    let nome: String
    let tipoDeSangue: String
    var quantidadeDeBolsas: Int
    let motivo: String
    let bancoDeSangue : String
    
    
    
    init(nome: String, tipoDeSangue: String, quantidadeDeBolsas: Int, motivo: String, bancoDeSangue: String){
        self.nome = nome
        self.tipoDeSangue = tipoDeSangue
        self.quantidadeDeBolsas = quantidadeDeBolsas
        self.motivo = motivo
        self.bancoDeSangue = bancoDeSangue
    }
    
}


class PedidosDAO {
    
    static var listaPedidos : [Pedidos] = [(Pedidos(nome: "João da Silva", tipoDeSangue: "AB+", quantidadeDeBolsas: 10, motivo: "Se encontra com leucemia", bancoDeSangue:"HEMOSE" ))]
    
    static func getListaPedidos() -> [Pedidos] {
        
            
            listaPedidos.append( Pedidos(nome: "José da Silva", tipoDeSangue: "AB-", quantidadeDeBolsas: 12, motivo: "",bancoDeSangue:"HEMOSE" ))
            
            listaPedidos.append(Pedidos(nome: "João dos Santos", tipoDeSangue: "O+", quantidadeDeBolsas: 14, motivo: "",bancoDeSangue:"HEMOSE" ))
            
            listaPedidos.append(Pedidos(nome: "Leonardo da Silva", tipoDeSangue: "O-", quantidadeDeBolsas: 9, motivo: "", bancoDeSangue:"HEMOSE" ))
            
            listaPedidos.append(Pedidos(nome: "Carlos da Silva", tipoDeSangue: "A+", quantidadeDeBolsas: 10, motivo: "", bancoDeSangue:"HEMOSE" ))
            
            listaPedidos.append( Pedidos(nome: "Hilton da Silva", tipoDeSangue: "AB+", quantidadeDeBolsas: 8, motivo: "" , bancoDeSangue:"HEMOSE" ))
           listaPedidos.append(Pedidos(nome: "Coimbra da Silva", tipoDeSangue: "O+", quantidadeDeBolsas: 7, motivo: "", bancoDeSangue:"IHHS" ))
            listaPedidos.append(Pedidos(nome: "David da Silva", tipoDeSangue: "B+", quantidadeDeBolsas: 2, motivo: "", bancoDeSangue:"IHHS"))
            listaPedidos.append(Pedidos(nome: "João da Silva", tipoDeSangue: "B+", quantidadeDeBolsas: 4, motivo: "",bancoDeSangue:"IHHS"))
        
        return listaPedidos
        
            
        
    }
}
