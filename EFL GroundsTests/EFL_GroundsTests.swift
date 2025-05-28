//
//  EFL_GroundsTests.swift
//  EFL GroundsTests
//
//  Created by Daniel Earl on 27/05/2025.
//  Copyright © 2025 Macbook Pro. All rights reserved.
//

import Testing
@testable import EFL_Grounds

struct EFL_GroundsTests {

    @Test("Championship Team Count") func checkNumberOfTeams() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        let team = await ChampionshipTableViewController().Teams
        #expect(team.count == 24)
    }
    
    @Test("League One Team Count") func checkNumberOfTeamsInLeagueOne() async throws {
        let team = await LeagueOneTableViewController().Teams
        #expect(team.count == 24)
    }
    
    @Test("League Two Team Count") func checkNumberOfTeamsInLeagueTwo() async throws {
        let team = await LeagueTwoTableViewController().Teams
        #expect(team.count == 24)  
    }

}
