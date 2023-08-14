//
//  TeamInfoViewController.swift
//  EFL Grounds
//
//  Created by Macbook Pro on 15/08/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TeamInfoViewController: UIViewController {

    @IBOutlet weak var teamInfoText: UITextView!
           
    override func viewDidLoad() {
        let carInfo = (parent as! TeamViewController).teamCarInfo
        let trainInfo = (parent as! TeamViewController).teamTrainInfo
        let drinkInfo = (parent as! TeamViewController).teamDrinkInfo
        let stadiumName = (parent as! TeamViewController).teamStadiumName
        
        
        let stadiumFont = UIFont.boldSystemFont(ofSize: 20.0)
        let headerFont = UIFont.boldSystemFont(ofSize: 18.0)
        let bodyFont = UIFont.systemFont(ofSize: 15.0)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        
        let stadiumParagraphStyle = NSMutableParagraphStyle()
        stadiumParagraphStyle.alignment = .center
        
        let stadiumNameAttributes: [NSAttributedString.Key: Any] = [
            .font: stadiumFont,
            .paragraphStyle: stadiumParagraphStyle,
            .foregroundColor: UIColor.label
        ]
        
        let headerAttributes: [NSAttributedString.Key: Any] = [
            .font: headerFont,
            .foregroundColor: UIColor.label
        ]
        
        let bodyAttributes: [NSAttributedString.Key: Any] = [
            .font: bodyFont,
            .paragraphStyle: paragraphStyle,
            .foregroundColor: UIColor.label
        ]
        
        let infoText = NSMutableAttributedString(string: stadiumName, attributes: stadiumNameAttributes)
        let carTitle = NSMutableAttributedString(string: "\n\nBy Car\n", attributes: headerAttributes)
        let carContentText = NSMutableAttributedString(string: carInfo, attributes: bodyAttributes)
        let trainTitle = NSMutableAttributedString(string: "\n\nBy Train\n", attributes: headerAttributes)
        let trainContentText = NSMutableAttributedString(string: trainInfo, attributes: bodyAttributes)
        let drinkTitle = NSMutableAttributedString(string: "\n\nFood & Drink\n", attributes: headerAttributes)
        let drinkContentText = NSMutableAttributedString(string: drinkInfo, attributes: bodyAttributes)
        
        infoText.append(carTitle)
        infoText.append(carContentText)
        infoText.append(trainTitle)
        infoText.append(trainContentText)
        infoText.append(drinkTitle)
        infoText.append(drinkContentText)
        
        teamInfoText.attributedText = infoText
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
