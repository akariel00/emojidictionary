//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ariel Nelson on 1/30/17.
//  Copyright © 2017 Ariel Nelson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "no Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        emojiLabel.text = emoji

        if emoji == "🤡" {
            definitionLabel.text = "Clown Face"
        }
        if emoji == "🤠" {
            definitionLabel.text = "Cowboy"
        }
        if emoji == "😜" {
            definitionLabel.text = "Wink Tounge"
        }
        if emoji == "👩🏼" {
            definitionLabel.text = "Blonde Girl"
        }
        if emoji == "😱" {
            definitionLabel.text = "Scared"
        }
        if emoji == "😭" {
            definitionLabel.text = "Cry"
        }
        if emoji == "💩" {
            definitionLabel.text = "Poo"
        }
        if emoji == "😄" {
            definitionLabel.text = "Happy"
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
