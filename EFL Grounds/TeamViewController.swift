//
//  TeamViewController.swift
//  EFL Grounds
//
//  Created by Macbook Pro on 13/08/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TeamViewController: UITabBarController {

    var league = ""
    var teamName = ""
    var stationCode = ""
    var stadiumLat = 0.0
    var stadiumLon = 0.0
    var teamCarInfo = ""
    var teamTrainInfo = ""
    var teamDrinkInfo = ""
    var teamFixtures = ""
    var teamStadiumName = ""
    
    override func viewDidLoad() {
        navigationItem.title = teamName
        let selectedTeamData = TeamDetails.shared.loadTeamDetails(team: teamName)
        stationCode = selectedTeamData.stationCode
        stadiumLat = selectedTeamData.stadiumLat
        stadiumLon = selectedTeamData.stadiumLon
        teamCarInfo = selectedTeamData.teamCarInfo
        teamTrainInfo = selectedTeamData.teamTrainInfo
        teamDrinkInfo = selectedTeamData.teamDrinkInfo
        teamFixtures = selectedTeamData.teamFixtures
        teamStadiumName = selectedTeamData.teamStadiumName
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
