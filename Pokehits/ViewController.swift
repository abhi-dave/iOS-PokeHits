//
//  ViewController.swift
//  Pokehits
//
//  Created by Abhishek Dave on 02/07/16.
//  Copyright © 2016 Abhishek Dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var maxhits=0
    var currenthits=0

    @IBOutlet weak var pokebg: UIImageView!
    @IBOutlet weak var pokehits: UIImageView!
    @IBOutlet weak var pokeball: UIButton!
    @IBOutlet weak var hitstxtfield: UITextField!
    @IBOutlet weak var hitlabel: UILabel!
    @IBOutlet weak var pokemon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func UpdateLbl()
    {
        hitlabel.text = "\(currenthits) Hits"
    }
    func restartgame()
    {
        pokebg.isHidden = false
        pokemon.isHidden = true
        hitlabel.isHidden = true
        pokehits.isHidden = false
        pokeball.isHidden = false
        hitstxtfield.isHidden = false
    
    }
    func isgameover()-> Bool{
        if(currenthits>=maxhits)
        {
            return true
        }
        else{
            return false
        }
    }
    
    
    @IBAction func Onpokemonclick(sender:UIButton)
    {
        currenthits += 1
        if (isgameover())
        {
        restartgame()
        }
    
            UpdateLbl()
    }
    
    @IBAction func Onpokeballclick(sender: UIButton!) {
        
        if(hitstxtfield.text != nil && hitstxtfield.text != ""){
           maxhits = Int(hitstxtfield.text!)!
            currenthits=0
            
            pokebg.isHidden = false
            pokemon.isHidden = false
            hitlabel.isHidden = false
            pokehits.isHidden = true
            pokeball.isHidden = true
            hitstxtfield.isHidden = true
            UpdateLbl()
            
        }
        
      
    }
    

}

