//
//  BancoDeSangueViewController.swift
//  #DOEVIDA-TRUCK
//
//  Created by Student on 2/15/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import UIKit

class BancoDeSangueViewController: UIViewController {

    @IBOutlet weak var positivoA: UIProgressView!
    @IBOutlet weak var negativoA: UIProgressView!
    @IBOutlet weak var positivoB: UIProgressView!
    @IBOutlet weak var negativoB: UIProgressView!
    @IBOutlet weak var positivoAB: UIProgressView!
    @IBOutlet weak var negativoAB: UIProgressView!
    @IBOutlet weak var positivoO: UIProgressView!
    @IBOutlet weak var negativo0: UIProgressView!
    
  
    
    
    //botões do sangue A+
    @IBAction func aumentarAPositivo() {
        positivoA.progress+=0.1
        if positivoA.progress<0.5 {
            positivoA.backgroundColor = UIColor.red
        }
        else if positivoA.progress >= 0.5 && positivoA.progress < 0.7{
            
            positivoA.backgroundColor = UIColor.yellow
        } else{
            positivoA.backgroundColor = UIColor.green
        }
    }
    @IBAction func diminuirAPositivo() {
        positivoA.progress-=0.1
        if positivoA.progress<0.5 {
            positivoA.backgroundColor = UIColor.red
        }
        else if positivoA.progress >= 0.5 && positivoA.progress < 0.7{
            
            positivoA.backgroundColor = UIColor.yellow
        } else{
            positivoA.backgroundColor = UIColor.green
        }
    }
    @IBAction func aumentar2() {
        negativoA.progress+=0.1
        if negativoA.progress<0.5 {
            negativoA.backgroundColor = UIColor.red
        }
        else if negativoA.progress >= 0.5 && negativoA.progress < 0.7{
            
            negativoA.backgroundColor = UIColor.yellow
        } else{
            negativoA.backgroundColor = UIColor.green
        }
    }
    @IBAction func diminuir2(_ sender: Any) {
        negativoA.progress-=0.1
        if negativoA.progress<0.5 {
            negativoA.backgroundColor = UIColor.red
        }
        else if negativoA.progress >= 0.5 && negativoA.progress < 0.7{
            
            negativoA.backgroundColor = UIColor.yellow
        } else{
            negativoA.backgroundColor = UIColor.green
        }
    }
    
    //aumentar3 B+
    @IBAction func aumentar3() {
        positivoB.progress+=0.1
        if positivoB.progress<0.5 {
            positivoB.backgroundColor = UIColor.red
        }
        else if positivoB.progress >= 0.5 && positivoB.progress < 0.7{
            
            positivoB.backgroundColor = UIColor.yellow
        } else{
            positivoB.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func diminuir3() {
        positivoB.progress-=0.1
        if positivoB.progress<0.5 {
            positivoB.backgroundColor = UIColor.red
        }
        else if positivoB.progress >= 0.5 && positivoB.progress < 0.7{
            
            positivoB.backgroundColor = UIColor.yellow
        } else{
            positivoB.backgroundColor = UIColor.green
        }
    }
    
    //aumentar 4 B-
    
    @IBAction func aumentar4() {
        negativoB.progress+=0.1
        if negativoB.progress<0.5 {
            negativoB.backgroundColor = UIColor.red
        }
        else if negativoB.progress >= 0.5 && negativoB.progress < 0.7{
            
            negativoB.backgroundColor = UIColor.yellow
        } else{
            negativoB.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func diminuir4() {
        negativoB.progress-=0.1
        if negativoB.progress<0.5 {
            negativoB.backgroundColor = UIColor.red
        }
        else if negativoB.progress >= 0.5 && negativoB.progress < 0.7{
            
            negativoB.backgroundColor = UIColor.yellow
        } else{
            negativoB.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func aumentar5() {
        positivoAB.progress+=0.1
        if positivoAB.progress<0.5 {
            positivoAB.backgroundColor = UIColor.red
        }
        else if positivoAB.progress >= 0.5 && positivoAB.progress < 0.7{
            
            positivoAB.backgroundColor = UIColor.yellow
        } else{
            positivoAB.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func diminuir5() {
        positivoAB.progress-=0.1
        if positivoAB.progress<0.5 {
            positivoAB.backgroundColor = UIColor.red
        }
        else if positivoAB.progress >= 0.5 && positivoAB.progress < 0.7{
            
            positivoAB.backgroundColor = UIColor.yellow
        } else{
            positivoAB.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func aumentar6() {
        negativoAB.progress+=0.1
        mudarCoraAumentar(obj: negativoAB)
//        if negativoAB.progress<0.5 {
//            negativoAB.backgroundColor = UIColor.red
//        }
//        else if negativoAB.progress >= 0.5 && negativoAB.progress < 0.7{
//            
//            negativoAB.backgroundColor = UIColor.yellow
//        } else{
//            negativoAB.backgroundColor = UIColor.green
//        }
    }
    
    @IBAction func diminuir6() {
        negativoAB.progress-=0.1
        negativoAB.backgroundColor = UIColor.green
        if negativoAB.progress<0.5 {
            negativoAB.backgroundColor = UIColor.red
        }
        else if negativoAB.progress >= 0.5 && negativoAB.progress < 0.7{
            
            negativoAB.backgroundColor = UIColor.yellow
        } else{
            negativoAB.backgroundColor = UIColor.green
        }
        
    }
    
    @IBAction func aumentar7() {
        positivoO.progress+=0.1
        if positivoO.progress<0.5 {
            positivoO.backgroundColor = UIColor.red
        }
        else if positivoO.progress >= 0.5 && positivoO.progress < 0.7{
            
            positivoO.backgroundColor = UIColor.yellow
        } else{
            positivoO.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func diminuir7() {
        positivoO.progress-=0.1
        if positivoO.progress<0.5 {
            positivoO.backgroundColor = UIColor.red
        }
        else if positivoO.progress >= 0.5 && positivoO.progress < 0.7{
            
            positivoO.backgroundColor = UIColor.yellow
        } else{
            positivoO.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func aumentar8() {
        negativo0.progress+=0.1
        if negativo0.progress<0.5 {
            negativo0.backgroundColor = UIColor.red
        }
        else if negativo0.progress >= 0.5 && negativo0.progress < 0.7{
            
            negativo0.backgroundColor = UIColor.yellow
        } else{
            negativo0.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func diminuir8() {
        negativo0.progress-=0.1
        if negativo0.progress<0.5 {
            negativo0.backgroundColor = UIColor.red
        }
        else if negativo0.progress >= 0.5 && negativo0.progress < 0.7{
            
            negativo0.backgroundColor = UIColor.yellow
        } else{
            negativo0.backgroundColor = UIColor.green
        }
    }
    
    
    func mudarCoraAumentar(obj: UIProgressView ){
        if obj.progress<0.5 {
            obj.backgroundColor = UIColor.red
        }
        else if obj.progress >= 0.5 && obj.progress < 0.7{
            
            obj.backgroundColor = UIColor.yellow
        } else{
            obj.backgroundColor = UIColor.green
        }

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
