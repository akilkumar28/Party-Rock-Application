//
//  ViewController.swift
//  Party Rock Application
//
//  Created by AKIL KUMAR THOTA on 12/22/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    
    var PartyRock = [PartyRockModel]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        let p1 = PartyRockModel(VideoImg:"http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", VideoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", VideoTitle: "What Do you Mean")
        
        let p2 = PartyRockModel(VideoImg:"https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", VideoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", VideoTitle: "Titanium David Guietta")
        
        PartyRock.append(p1)
        PartyRock.append(p2)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PartyRock.count     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
        
        let partyrock = PartyRock[indexPath.row]
        
        cell.updateUI(partyrock: partyrock)
            
        return cell
            
        } else {
            return UITableViewCell()
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyrock = PartyRock[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyrock)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRockModel {
                destination.WebLbl = party
            }
        }
    }
    
    
    
    
    }
    
    




