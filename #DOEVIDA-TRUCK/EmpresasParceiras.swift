//
//  EmpresasParceiras.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/15/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import Foundation

class EmpresasParceiras{
    let nomeEmpresa : String
    let nomeImagemEmpresa : String
    let enderecoEmpresa : String
    
    init(nomeEmpresa: String, nomeImagemEmpresa: String, enderecoEmpresa:String) {
        self.nomeEmpresa = nomeEmpresa
        self.nomeImagemEmpresa = nomeImagemEmpresa
        self.enderecoEmpresa = enderecoEmpresa
    }
    
}


class EmpresasParceirasDAO {
    static func getListaEmpresasParceiras() -> [EmpresasParceiras]{
      return [
        
            EmpresasParceiras(nomeEmpresa: "C&A", nomeImagemEmpresa: "c&a", enderecoEmpresa: "Centro da cidade"),
        
            EmpresasParceiras(nomeEmpresa: "Sal e Brasa", nomeImagemEmpresa: "Sal e Brasa", enderecoEmpresa: "Orla da Atalaia"),
        
            EmpresasParceiras(nomeEmpresa: "CineMark", nomeImagemEmpresa: "cinemark", enderecoEmpresa: "Shopping Jardins e Riomar")
        ]
        
    }

}
