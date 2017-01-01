//
//  PartyCell.swift
//  Party Rock Application
//
//  Created by AKIL KUMAR THOTA on 12/22/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    
    @IBOutlet weak var VideoTitle: UILabel!

    @IBOutlet weak var VideoImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func updateUI(partyrock: PartyRockModel) {
        VideoTitle.text = partyrock.VideoTitle
        
        let imageURL = URL(string: partyrock.VideoImg)
        
        DispatchQueue.global().async {
            
            do {
                let data = try Data(contentsOf: imageURL!)
                
                DispatchQueue.main.sync {
                    self.VideoImg.image = UIImage(data: data)
                }
            } catch {
                    
                }
                
                
            }
            
            
            
        
        }
    
        
        
        
        
    }


