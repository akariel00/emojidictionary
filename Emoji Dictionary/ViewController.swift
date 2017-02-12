//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ariel Nelson on 1/30/17.
//  Copyright © 2017 Ariel Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableViewMain: UITableView!
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableViewMain.dataSource = self
        tableViewMain.delegate = self
        
        emojis = makeEmojiArray()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print (indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😄"
        emoji1.year = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Smiley face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.year = 2012
        emoji2.category = "Thing"
        emoji2.definition = "Shit face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😭"
        emoji3.year = 2014
        emoji3.category = "Smiley"
        emoji3.definition = "Cry face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😱"
        emoji4.year = 2006
        emoji4.category = "Smiley"
        emoji4.definition = "Sacred face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👩🏼"
        emoji5.year = 2007
        emoji5.category = "People"
        emoji5.definition = "Blonde girl"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😜"
        emoji6.year = 2011
        emoji6.category = "Smiley"
        emoji6.definition = "Winky tounge face"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🤠"
        emoji7.year = 2009
        emoji7.category = "Smiley"
        emoji7.definition = "Cowboy face"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🤡"
        emoji8.year = 2009
        emoji8.category = "Smiley"
        emoji8.definition = "Clown face"
        
        return[emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8]

    }

}

