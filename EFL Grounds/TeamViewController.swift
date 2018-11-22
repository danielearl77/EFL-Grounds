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
    
    // MARK: Championship Team Data
    func loadChampTeamData() {
        if teamName == "Aston Villa" {
            stationCode = "WTT"
            stadiumLat = 52.5088714
            stadiumLon = -1.8848723
            teamCarInfo = "Leave the M6 at Junction 6, following the signs for Birmingham (NE) and the ground is well signposted. When on Lichfield Road, turn right into Aston Hall Road and keep going until you reach the ground."
            teamTrainInfo = "Take a local train from New Street Station to Witton. Turn left out of the station and walk down to the roundabout, then left again into Witton Lane."
            teamDrinkInfo = "Most of the pubs near the ground are for home fans only. The Witton Arms does, however, admit away fans. A bit further way is the Barton Arms on High Street Aston.\n\nAlcohol is not available inside the away end of the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/aston-villa/scores-fixtures"
        } else if teamName == "Birmingham" {
            stationCode = "BHM"
              stadiumLat = 52.474486
            stadiumLon = -1.866873
            teamCarInfo = "Leave the M6 at Junction 6 and take the A38(M) towards Birmingham City Centre. Turn of the A38(M) onto the Inner Ring Road and take the Ring Road East, towards Coventry, after about 2 miles turn left into Coventry Road. The ground is well sign posted on the Inner Ring Road."
            teamTrainInfo = "New Street Station is about a 30 min walk away. Come out of the station and head towards the Bullring and Digbeth Coach Station. When you reach coach station walk along the dual carriageway (B4100) away from the city, bear left onto Coventry Road (under the railway bridge) and the ground should be visible from here."
            teamDrinkInfo = "It is best to drink in the City Centre before heading to the stadium as most of the pubs near the ground are really for home fans only. The Brighton pub on Coventry Road does permit small groups of away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/birmingham-city/scores-fixtures"
        } else if teamName == "Blackburn" {
            stationCode = "BBN"
               stadiumLat = 53.7294672
            stadiumLon = -2.4881448
            teamCarInfo = "Leave the M65 at Junction 4 and follow signs towards Blackburn. At the end of Earcroft Way turn right and follow the A666 towards Blackburn until you reach the ground."
            teamTrainInfo = "Blackburn Railway station is a 30 min walk away. Come out of the station, walk down to Darwen Street, turn left and keep walking until you reach Great Bolton Street. From here turn right and follow Bolton Road until you reach the ground."
            teamDrinkInfo = "The traditional away pub is the Fernhurst, on Bolton Road across from the away end. Other options include the Golden Cup, further up Bolton Road, and a Wetherspoons (The Postal Order) at Blackburn Railway Station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/blackburn-rovers/scores-fixtures"
        } else if teamName == "Bolton" {
            stationCode = "HWI"
            stadiumLat = 53.5807096
            stadiumLon = -2.5366891
            teamCarInfo = "Leave the M61 at Junction 6 and follow the signs to the ground. The ground is clearly visible when you come off the M61."
            teamTrainInfo = "Horwich Parkway Station is served by regular trains from Bolton, the ground is clearly visible from the station."
            teamDrinkInfo = "Most of the pubs on the retail park near the ground are for home fans only, with the exception of the Beehive Pub. As an alternative about a 10 minute walk from the ground there is the Bromilow Arms. Drive past the ground on the A6027 and turn right into Lostock Lane for the pub.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bolton-wanderers/scores-fixtures"
        } else if teamName == "Brentford" {
            stationCode = "BFD"
            stadiumLat = 51.4877305
            stadiumLon = -0.3025575
            teamCarInfo = "Leave the M4 at Junction 2 and join the A4, following the A4 as it goes under the M4 to Chiswick roundabout. Go round Chiswick roundabout taking the A4 back out of London (again under the M4).  At the first roundabout turn left into the B455 (Ealing Road), the ground is the second right."
            teamTrainInfo = "From Brentford Station, leave the station onto Boston Manor Road and turn left. Walk down Boston Manor Road and take the second left into Windmill Road.  Finally take the first right into Clifden Road, following this down to the ground."
            teamDrinkInfo = "Brentford has a pub at every corner of the ground, with the New Inn the popular away supporters pub."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/brentford/scores-fixtures"
        } else if teamName == "Bristol City" {
            stationCode = "BRI"
            stadiumLat = 51.439884
            stadiumLon = -2.6210076
            teamCarInfo = "From the M5 Junction 18 take the A4 (Portway) towards Bristol. The Portway becomes Cabot Way, and then Brunel Way over the river. Turn off Brunel Way into Winterstoke Road, the ground is on the left."
            teamTrainInfo = "Bristol Temple Meads Station is too far to walk so taxi is the best bet from here.  After the game buses run from the ground back to the City Centre and the Station."
            teamDrinkInfo = "The Nova Scotia or the Pumphouse, both by the waterfront, are suitable for away fans. Another option is the Knights Templar which is straight ahead when coming out of Temple Meads Station.\n\nThe pubs near the ground are all best avoided by away fans, and alcohol is not available inside the stadium for away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bristol-city/scores-fixtures"
        } else if teamName == "Derby County" {
            stationCode = "DBY"
            stadiumLat = 52.9146511
            stadiumLon = -1.448016
            teamCarInfo = "From the M1 Junction 25 take the A52 towards Derby. Follow the signs to Pride Park, turning off onto Wyvern Way. At the roundabout go straight over into Derwent Parade, the ground is on the right."
            teamTrainInfo = "From Derby Station exit towards the retail park onto Roundhouse Road, go straight over the roundabout into Riverside Road and follow this to the ground."
            teamDrinkInfo = "There is a Harvester on the retail park between the Station and the ground. Other popular away pubs include the Navigation Inn on London Road, a couple of pubs on the road outside the main entrance to the railway station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/derby-county/scores-fixtures"
        } else if teamName == "Hull City" {
            stationCode = "HUL"
            stadiumLat = 53.7457315
            stadiumLon = -0.3680162
            teamCarInfo = "From the end of the M62 stay on the A63 to Hull, the ground (KC Stadium) is clearly signposted from here."
            teamTrainInfo = "From Hull Station take the southern exit onto Anlaby Road, tun right and follow Anlaby Road to the Ground."
            teamDrinkInfo = "Either drink in the City Centre before heading to the ground or try 'The Brickmakers' which is opposite the main stadium car park. The Walton Street Social Club also admits away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/hull-city/scores-fixtures"
        } else if teamName == "Ipswich" {
            stationCode = "IPS"
            stadiumLat = 52.0542255
            stadiumLon = 1.1447102
            teamCarInfo = "From the A12 / A14 Junction take the A1214 (London Road) towards Ipswich, follow this road into Ipswich and after crossing the river turn right into West End Road.  Follow West End Road to Princes Street and turn left, following Princes Street into Portman Road for the ground."
            teamTrainInfo = "From Ipswich Station you can see the ground, cross over the river and follow the road to the ground."
            teamDrinkInfo = "The Station Hotel, by the railway station, is the main away pub, with the Punch and Judy on Cardinal Park another option.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/ipswich-town/scores-fixtures"
        } else if teamName == "Leeds Utd" {
            stationCode = "LDS"
            stadiumLat = 53.7771779
            stadiumLon = -1.5715315
            teamCarInfo = "The ground is well signposted. From the M621 Junction 2 take the A634, which becomes Elland Road, to the ground."
            teamTrainInfo = "From Leeds Station the easiest way the ground is using the shuttle buses. Leave the station from the main entrance, cross the road and walk down the steps the street below, the buses go from here to the ground."
            teamDrinkInfo = "The best bet is to drink in the City Centre before heading to the ground as the pubs by the stadium are not recommended for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leeds-united/scores-fixtures"
        } else if teamName == "Middlesbrough" {
            stationCode = "MBR"
            stadiumLat = 54.5781243
            stadiumLon = -1.2177641
            teamCarInfo = "From the A19 turn off onto the A66 towards Middlesbrough. The ground is signposted (Riverside Stadium), stay on the A66 past the railway station and the turn off onto Moor Road, following this to the ground."
            teamTrainInfo = "From Middlesbrough Station turn left onto Zetland Road and left again into Albert Road. After going under the railway bridge turn right into Bridge Street East, and right again into Windward Way. Follow Windward way to the ground."
            teamDrinkInfo = "Doctor Browns in the City Centre on Corporation Road is a good option. From the railway station turn right down Albert Road (crossing the A66) and then take the second left into Corporation Road.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/middlesbrough/scores-fixtures"
        } else if teamName == "Millwall" {
            stationCode = "SBM"
            stadiumLat = 51.4866709
            stadiumLon = -0.0510526
            teamCarInfo = "From the M25 Junction 3 take the A20 towards London. Stay on the A20 until it becomes the A2 at New Cross Gate Station. The ground is signposted, but from the A2 (Old Kent Road) turn right into Iiderton Road, which leads to the ground."
            teamTrainInfo = "Take the train from London Bridge to South Bermondsey Station, exit the station and turn right using the secure walkway to the away end."
            teamDrinkInfo = "None of the pubs near the ground are recommended for away fans. The George Inn on Borough High Street is a good option, as are the other pubs around London Bridge Station. After the game, however, the pubs in the London Bridge area are not recommended either.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/millwall/scores-fixtures"
        } else if teamName == "Norwich City" {
            stationCode = "NRW"
            stadiumLat = 52.6223803
            stadiumLon = 1.308603
            teamCarInfo = "From the A11 the ground is well signposted. At the A11 / A47 roundabout take the A47, turning of onto the A146 towards the City Centre. At the traffic lights at the end of the A146 turn right, and then left at the roundabout onto Bracondale. At the next lights turn right into King Street and follow this road round over the river to the ground."
            teamTrainInfo = "From Norwich Station turn left and at the main road either turn left again and follow it round to the ground or cross the road and walk through the Riverside development to the ground."
            teamDrinkInfo = "The traditional away pub the 'Compleat Angler' no longer accepts away fans, however, the Prince of Wales Pub further up Prince of Wales Road does. There are also a number of pubs and restaurants in the Riverside development between the Railway Station and the ground, however, many of these do not now admit away fans.\n\nAlcohol is also available inside the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/norwich-city/scores-fixtures"
        } else if teamName == "Nottingham Forest" {
            stationCode = "NOT"
            stadiumLat = 52.9394531
            stadiumLon = -1.1331991
            teamCarInfo = "From the M1 Junction 24 take the A453 towards Nottingham. Just before the A52 junction turn off the A453 onto the B679 (Clifton Lane). Follow the B679 to the end and turn left onto the A60 (Loughborough Road). The ground is on the right just past the Cricket Ground."
            teamTrainInfo = "From Nottingham Station turn onto Queens Road, and the right onto London Road. Follow London Road south, over the river to the ground."
            teamDrinkInfo = "The pubs near the ground are generally home fans only, with the Meadow Club (the Notts County Supporters Club) or the Nottingham Rowing Club the only places that admit away fans. Otherwise drink in the City Centre before heading to the ground.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/nottingham-forest/scores-fixtures"
        } else if teamName == "Preston" {
            stationCode = "PRE"
            stadiumLat = 53.7722293
            stadiumLon = -2.6893447
            teamCarInfo = "From the M6 Junction 31 take the A59 towards Preston. Turn off the A59 onto the A5085 (Blackpool Road) at the roundabout and follow this road to Deepdale Road for the ground."
            teamTrainInfo = "From Preston Station turn right onto Fishergate and walk through the town centre continuing on into Church Street. When at the Ringway, head towards the Prison and turn left into Deepdale Road. Follow Deepdale Road up to the ground."
            teamDrinkInfo = "There aren't many pubs near the ground, and most of the town centre pubs are best avoided as well. The pubs near the railway station should be ok.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/preston-north-end/scores-fixtures"
        } else if teamName == "QPR" {
            stationCode = "SPB"
            stadiumLat = 51.510610
            stadiumLon = -0.230760
            teamCarInfo = "From the M25 Junction 16 take the M40 towards Central London. At the BBC White City complex turn off the A40 onto the A219 (Wood Lane), go under the A40 and then turn off Wood Lane into South Africa Road which leads down to the ground."
            teamTrainInfo = "Take the Central Line to White City Tube Station, exit the station and turn right onto Wood Lane, and then take the first left down South Africa Road to the ground."
            teamDrinkInfo = "The pubs around Shepherds Bush Green (Walkabout and O'Neill's) are fine for away fans. Exit White City Tube Station turn left and walk down Wood Lane.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/queens-park-rangers/scores-fixtures"
        } else if teamName == "Reading" {
            stationCode = "RDG"
            stadiumLat = 51.4223249
            stadiumLon = -0.9834968
            teamCarInfo = "From the M4 Junction 11 take the A33 (Reading Relief Road) towards Reading, turning off the A33 into Hurst Road for the ground."
            teamTrainInfo = "From Reading Station take the Football Special bus to the ground, come out of the station cross the road and turn right for the bus stop."
            teamDrinkInfo = "There are no pubs near to the ground, so if arriving by train then drink in the town centre by the railway station before getting the buses out to the stadium.  There is also a Holiday Inn and pub called Calaghans about fifteen minutes walk from the ground on Imperial Way.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/reading/scores-fixtures"
        } else if teamName == "Rotherham" {
            stationCode = "RMC"
            stadiumLat = 53.4296308
            stadiumLon = -1.3611662
            teamCarInfo = "From the North, leave the M1 at Junction 34, onto the A6178 towards Rotherham. At the third roundabout take the first exit onto the A630, at the next roundabout turn right onto Main Street for the ground.\n\nFrom the South, leave the M1 at Junction 33, onto the A630 towards Rotherham. At the fourth roundabout turn right onto Main Street for the ground."
            teamTrainInfo = "From Rotherham Central Station exit right on to Bridge Street. Cross over the river and take the first right, walking down this footpath alongside the river.  This footpath leads to Market Street, after Tesco. At the end of Market Street turn left onto Main Street for the ground."
            teamDrinkInfo = "As the ground is near the centre of town there are several town centre pubs to choose from.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/rotherham-united/scores-fixtures"
        } else if teamName == "Sheffield Utd" {
            stationCode = "SHF"
            stadiumLat = 53.3698603
            stadiumLon = -1.4705122
            teamCarInfo = "From the M1 Junction 33 take the A630 / A57 (Sheffield Parkway) towards Sheffield. At the large roundabout take the A621 (Commercial Street) and follow this road over two roundabouts into Bramall Lane.  The ground is then on the left off Bramall Lane."
            teamTrainInfo = "From Sheffield Station turn left down Sheaf Square and at the junction bear right down Shoreham Street. Follow Shoreham Street down to the ground."
            teamDrinkInfo = "A lot of the pubs near the ground are for home fans only, however, The Earl on Queens Road admits away fans. Otherwise there is the Globe near the railway station or the Sheffield Tup at the railway station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/sheffield-united/scores-fixtures"
        } else if teamName == "Sheffield Wednesday" {
            stationCode = "SHF"
            stadiumLat = 53.4116501
            stadiumLon = -1.5021879
            teamCarInfo = "Leave the M1 at junction 36 and follow the A61 towards Sheffield. Continue along the A61 for four miles and at the 2nd roundabout take the 3rd exit (Leppings Lane).  The ground is on the left."
            teamTrainInfo = "From Sheffield Station walk to the tram station and take the yellow line to the Leppings Lane stop. Walk down Leppings Lane to the ground."
            teamDrinkInfo = "There are several pubs near the railway station, and in the City Centre before heading up to Hillsborough. Closer to the ground there is the New Bridge Inn on the A61 Penniston Road, past the ground heading out of the City Centre.\n\nAlcohol is not always available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/sheffield-wednesday/scores-fixtures"
        } else if teamName == "Stoke" {
            stationCode = "SOT"
            stadiumLat = 52.9891356
            stadiumLon = -2.1737192
            teamCarInfo = "From Junction 15 of the M6 take the A500 towards Stoke. Keep going until you reach the A50, take this road (towards Derby). Turn off the A50 at the first junction and you should see the stadium over to the right."
            teamTrainInfo = "Stoke Railway Station is over two miles away so a taxi is the best bet. There are also shuttle buses from Glebe Street in Stoke, to the ground before and after the game."
            teamDrinkInfo = "There aren't really any pubs near the stadium, so the bext option is drinking on the way into Stoke before the game. There is, however, a Holiday Inn and a Harvester pub next to the ground. There is also a Power League complex with a bar that admits away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/stoke-city/scores-fixtures"
        } else if teamName == "Swansea" {
            stationCode = "SWA"
            stadiumLat = 51.6421561
            stadiumLon = -3.9351185
            teamCarInfo = "From the M4 Junction 45 take the A4067 towards Swansea. The ground is on this road after about two miles."
            teamTrainInfo = "Swansea Station is about two miles from the ground so bus or taxi is easiest. To walk come out of the station and walk up the High Street until the Camarthen Road junction, turn right here into Bridge Street which becomes Neath Road. Follow Neath Road up to the ground."
            teamDrinkInfo = "The pubs around the stadium do not admit away fans, so drinking in Swansea city centre before heading to the stadium is the best bet.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/swansea-city/scores-fixtures"
        } else if teamName == "West Brom" {
            stationCode = "THW"
            stadiumLat = 52.5096036
            stadiumLon = -1.9638304
            teamCarInfo = "Leave the M5 at Junction 1 and take the A41 Birmingham Road towards Sandwell, the ground is on the A41."
            teamTrainInfo = "Take either the train or Metro from Birmingham Moor Street Station to The Hawthorns Station. Leave the station onto Halford's Lane and turn left to the ground."
            teamDrinkInfo = "The pubs around the stadium do not admit away fans.  One option is The Vine, from Junction 1 of the M5 head towards West Bromwich town centre and take the first left into Roebuck Street for the pub.  Another option is The Park Hotel, again just of Junction 1 of the M5.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/west-bromwich-albion/scores-fixtures"
        } else if teamName == "Wigan" {
            stationCode = "WGW"
            stadiumLat = 53.5471948
            stadiumLon = -2.6545159
            teamCarInfo = "Leave the M6 at Junction 26 and take the A449 towards Wigan town centre, after the junction with the A49 then turn left into Robin Park Road, after Pizza Hut turn left into Anjou Blvd for the ground."
            teamTrainInfo = "On leaving either Wigan North or Wallgate Station, head for Wallgate and follow this road out of Wigan, after crossing the canal and the railway turn right into Stadium Way and follow this round to the ground."
            teamDrinkInfo = "The traditional away pub is the Red Robin opposite the cinema complex near the ground. There is also often a large Marquee next to the away turnstiles holding a bar for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/wigan-athletic/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
    
    //MARK: Leauge One Team Data
    func loadOneTeamData() {
        if teamName == "AFC Wimbledon" {
            stationCode = "NBT"
            stadiumLat = 51.4060501
            stadiumLon = -0.2814285
            teamCarInfo = "Leave the M25 at Junction 10 and take the A3 towards London. Turn off the A3 at New Malden onto the A2043 and at the next roundabout turn left onto Kingston Road (A2043). Continue on Kingston Road towards Kingston and the ground is on the left after about a mile."
            teamTrainInfo = "From London Waterloo take the train to Norbiton Station. Exit the station on to either Coombe Road or Norbiton Avenue. From Coombe Road turn left and walk under the railway bridge and then turn right onto Norbiton Avenue. Follow Norbiton Avenue all the way round to Gloucester Road. Turn right onto Gloucester Road and then at the end turn left onto Cambridge Road, the ground is down the third street on the right."
            teamDrinkInfo = "Close to the ground on Kingston Road are the Duke of Wellington and the Prince of Wales. Otherwise there are pubs in Kingston or New Malden."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/afc-wimbledon/scores-fixtures"
        } else if teamName == "Accrington Stanley" {
            stationCode = "ACR"
            stadiumLat = 53.7645074
            stadiumLon = -2.3704834
            teamCarInfo = "Leave the M65 at Junction 7, taking the Clitheroe turn off at the roundabout. Turn right at the first set of traffic lights, following the A678.  Continue over the canal bridge to the next set of traffic lights.  Turn right taking the A680 towards Accrington. Carry straight on at the next set of lights, following the road as it bends to the right and then take the first left after the Crown pub into Livingstone Road for the ground."
            teamTrainInfo = "Exit Accrington Station and head towards Blackburn Road. Continue into King Street and then turn left towards Milnshaw Lane. At the roundabout take the 4th exit into Milnshaw Lane, and at the end turn left into Whalley Road. After half a mile turn right into Livingstone Road for the ground."
            teamDrinkInfo = "The Crown on Whalley Road admits both home and away fans, or further down Whalley Road (towards the M65) is The Greyhound."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/accrington-stanley/scores-fixtures"
        } else if teamName == "Barnsley" {
            stationCode = "BNY"
            stadiumLat = 53.5522662
            stadiumLon = -1.4686315
            teamCarInfo = "From the M1 Junction 37 take the A628 (Dodworth Road) to Barnsley. Stay on the A628 over two roundabouts, and after the second roundabout turn off onto the A628, bering left into Bala Street. Follow this road down to the ground."
            teamTrainInfo = "From Barnsley Station head down to the level crossing on Kendray Street, from here head under the dual-carriageway and take the first left into Bala Street.  Follow Bala Street down to the ground."
            teamDrinkInfo = "The Dove Inn on Doncaster Road is a five minute walk from the ground down Oakwell Lane. Alternatively a few minutes walk from the away end is the Metro Dome, a leisure centre with a bar that serves food and drink.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/barnsley/scores-fixtures"
        } else if teamName == "Blackpool" {
            stationCode = "BPN"
            stadiumLat = 53.8041828
            stadiumLon = -3.0467969
            teamCarInfo = "From M55 Junction 4 turn onto Preston New Road (A583) and follow this road into Blackpool. At the Waterloo Road Junction go straight over into Park Road, and then take the 4th left into Bloomfield Road, following this down to the ground."
            teamTrainInfo = "Blackpool North Station is about 2 miles from the ground. If you want to walk the easiest way is to make your way down to the seafront and walk along towards the pleasure beach. When you reach Lytham Road head inland towards the ground."
            teamDrinkInfo = "The 'No 1 Bar' a working mens club next to the away turnstiles permits away fans for a small fee, otherwise 'The Waterloo' on Waterloo Road is a good option.  There is also a Wetherspoons near Blackpool South Station and plenty of good pubs in Blackpool town centre.\n\nAlcohol is not available in the away areas of the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/blackpool/scores-fixtures"
        } else if teamName == "Bradford City" {
            stationCode = "BDI"
            stadiumLat = 53.8035782
            stadiumLon = -1.7594818
            teamCarInfo = "Take the M606 towards Bradford and at end of motorway take the middle or right hand lane, follow signs for Ring Road East onto Rooley Lane. Head over the traffic lights by Asda and turn left at the roundabout into Wakefield Road. Go over two roundabouts on to the A6037 (Shipley Airedale Road). After the Tesco store on the left go over traffic lights and turn left into the A6177 (Station Road) and left again into Queens Road. Head up the hill to third set of traffic lights and turn left into Manningham Lane. After the Petrol Station on the left take first left into Valley Parade for the ground."
            teamTrainInfo = "Exit Bradford Interchange Station and head onto Bridge St. Cross over Hall Ings, staying on Bridge Street, turning right into Tyrrel Street and then left into Bank Street. Continue straight on into Darley Street and then North Parade. At the end turn right into Hamm Strasse and then left into Midland Road. Follow Midland Road up to the ground."
            teamDrinkInfo = "The Bradford Arms on Manningham Lane admits away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bradford-city/scores-fixtures"
        } else if teamName == "Bristol Rovers" {
            stationCode = "BRI"
            stadiumLat = 51.4858436
            stadiumLon = -2.5835966
            teamCarInfo = "Leave the M5 at Junction 16 and take the A38 towards Bristol. The Ground is on the A38 in around 5 miles at the Filton Avenue junction."
            teamTrainInfo = "Bristol Parkway Station is to far from the ground to walk, taxi or bus to the ground is the best bet."
            teamDrinkInfo = "The closest pub to the ground is The Queen Victoria, five minutes away on Gloucester Road. Alternatively The Annexe is about ten minutes away on Nevil Road.  Both pubs should admit away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bristol-rovers/scores-fixtures"
        } else if teamName == "Burton Albion" {
            stationCode = "BUT"
            stadiumLat = 52.821462
            stadiumLon = -1.6270024
            teamCarInfo = "Take the A38 towards Burton, and turn off at the Clay Mills Junction onto the A5121 (Derby Road) towards Burton. Follow the A5121 over the first roundabout and the ground is on the right at the second roundabout."
            teamTrainInfo = "Exit Burton Station and turn left down the hill, taking a left onto Derby Street. Carry on all the way along Derby Street, past the junction on the left with the A511 until the roundabout with the junction with Princess Way for the ground."
            teamDrinkInfo = "The closest pub to the ground is The Beech Inn, which is on Derby Road ten minutes away in the opposite direction to the Town Centre. There are also several pubs around the station that normally admit away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/burton-albion/scores-fixtures"
        } else if teamName == "Charlton Athletic" {
            stationCode = "CTN"
            stadiumLat = 51.486687
            stadiumLon = 0.0358469
            teamCarInfo = "Leave the M25 at Junction 2 and take the A2 towards London. At the junction with Shooters Hill Road go straight over the roundabout onto the A102 towards the Blackwall Tunnel. At the A206 (Woolwich Road) turn right onto the A206 and then after passing Macro turn right again into Charlton Church Lane, then left into Floyd Road for the ground."
            teamTrainInfo = "From Charlton Station turn left down Charlton Church Lane, then left into Floyd Road for the ground."
            teamDrinkInfo = "The traditional away pub is The Antigallican, opposite Charlton Railway Station. A better option is to drink around London Bridge before getting the train out to Charlton.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/charlton-athletic/scores-fixtures"
        } else if teamName == "Coventry" {
            stationCode = "COV"
            stadiumLat = 52.4482668
            stadiumLon = -1.497429
            teamCarInfo = "From the M6 Junction 3 take the A444 (Phoenix Way) towards Coventry, the ground is on the left at the next roundabout."
            teamTrainInfo = "Coventry Station is too far to walk so either take the shuttle bus from the station or a taxi to the ground."
            teamDrinkInfo = "Most of the pubs near the ground, particularly on Longford Road are not suitable for away fans. However, The Black Horse Pub at the top of Longford Road towards Exhall is being used by away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/coventry-city/scores-fixtures"
        } else if teamName == "Doncaster Rovers" {
            stationCode = "DON"
            stadiumLat = 53.5097718
            stadiumLon = -1.1129534
            teamCarInfo = "From the M18 Junction 3 take the A6182 (White Rose Way) towards Doncaster, go straight over the next two roundabouts into Wilmington Drive. At the next roundabout turn left and follow this road to the ground."
            teamTrainInfo = "From Doncaster Station the easiest way to the ground is by Shuttle bus from Doncaster Interchange bus station or taxi. To walk come out of the station onto Trafford Way, turn left and keep walking down this road until you reach the Keepmoat Complex."
            teamDrinkInfo = "Really the only choice near the ground is 'The Lakeside' Beefeater pub on Stadium Way or 'The Toad Brewery' also on Stadium Way.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/doncaster-rovers/scores-fixtures"
        } else if teamName == "Fleetwood" {
            stationCode = "PFY"
            stadiumLat = 53.91651
            stadiumLon = -3.02478
            teamCarInfo = "Take the M55 towards Blackpool and leave at Junction 3 onto the A585 towards Fleetwood. On the edge of Fleetwood go straight over the roundabout by the Blackpool and Fylde college, and after the roundabout take the first left into Copse Road. After passing the Fire Station keep left and then turn left into Radcliffe Road, then take the next right into Stanley Road. The ground is at the bottom of Stanley Road."
            teamTrainInfo = "The nearest railway station is Poulton-le-Fylde over five miles away, however, there are local buses to Fleetwood that run from outside the station. Another option is get the train to Blackpool and then catch a bus, or the tram along the seafront, to Fleetwood."
            teamDrinkInfo = "At the ground both Jim's Sports Bar and the Highbury Club do not admit visiting supporters. The closest pub is the Queens Hotel on Poulton Road.  Walk up Highbury Avenue and turn left at St Nicholas church into Poulton Road. Alternatively there are plenty of pubs in the centre of Fleetwood.\n\nAlcohol is also available inside the stadium, if your tickets are for the Parkside Stand."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/fleetwood-town/scores-fixtures"
        } else if teamName == "Gillingham" {
            stationCode = "GLM"
            stadiumLat = 51.3848726
            stadiumLon = 0.5597597
            teamCarInfo = "Leave the M2 at junction 4 and take the A278 towards Gillingham. At the third roundabout take a left on to the A2. When you reach the junction with the A231, turn right into Nelson Road, go past the bus station and then turn right into Gillingham Road for the ground."
            teamTrainInfo = "Exit Gillingham Station, turn left into Balmoral Road. At the end of the road go straight over into Priestfield Road, the ground is at the top Priestfield Road."
            teamDrinkInfo = "The traditional away pub is the Livingstone Arms, on Gillingham Road close to the away end. Otherwise there are plenty of pubs in the town centre, which is only a short walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/gillingham/scores-fixtures"
        } else if teamName == "Luton Town" {
            stationCode = "LUT"
            stadiumLat = 51.8841800
            stadiumLon = -0.4316600
            teamCarInfo = "Leave the M1 at Junction 11 and take the Dunstable Road towards Luton Town Centre. At the next roundabout continue straight on, following Dunstable Road until the junction with Leagrave Road. After the Leagrave Road junction take the third right into Kenilworth Road for the ground."
            teamTrainInfo = "Exit Luton Railway station and turn right along Station Road, continuing into Mill Street. At the end of Mill Street turn left into New Bedford Road, then turn right into Collingdon Street. At the end of Collingdon Street take the footbridge over the roundabout, and where it splits in two bear right down into Dunstable Road. Continue straight along Dunstable Road and the ground is on the left, down either Kenilworth Road, or for the away end Oak Road."
            teamDrinkInfo = "There isn't really anything suitable for away fans near the ground. The better option is to drink in the town centre before heading to the ground.\n\nAlcohol is not available in the away end."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/luton-town/scores-fixtures"
        } else if teamName == "Oxford Utd" {
            stationCode = "OXF"
            stadiumLat = 51.7175536
            stadiumLon = -1.2112956
            teamCarInfo = "From the A423 Ring Road take the A4074 towards Reading. Take the first left into Grenoble Road, over three roundabouts to the ground."
            teamTrainInfo = "Oxford Station is over 4 miles away so take either the Football Special bus service or a taxi to the ground."
            teamDrinkInfo = "There are no pubs near the ground, but alcohol is available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/oxford-united/scores-fixtures"
        } else if teamName == "Peterborough Utd" {
            stationCode = "PBO"
            stadiumLat = 52.5652665
            stadiumLon = -0.2403379
            teamCarInfo = "Leave the A1 following signs for Peterborough (A1139) Fletton Parkway. Leave the Fletton Parkway at junction 3 and at the roundabout turn left onto the A1260 Nene Parkway. Take the first exit and at the roundabout turn right into Shrewsbury Avenue. At the t-junction after half a mile turn right into the A605 Oundle Road. The ground is on the right after a mile."
            teamTrainInfo = "From Peterborough Station walk down Station Road to Bourges Blvd. Turn right on Bourges Blvd and follow this road round past the Rivergate Shopping Centre. Turn right onto Bridge Street, cross the river and follow London Road to the ground."
            teamDrinkInfo = "Near the railway station, on Westgate, is the Brewery Tap. Other options include 'The Cherry Tree' and the 'Palmerston Arms', both on Oundle Road.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/peterborough-united/scores-fixtures"
        } else if teamName == "Plymouth" {
            stationCode = "PLY"
            stadiumLat = 50.3873937
            stadiumLon = -4.1517004
            teamCarInfo = "At the end of the M5 continue onto the A38. The ground is well signposted on the A38. On reaching Plymouth, turn left onto the A386. When the road splits in two keep on the left-hand lane (signposted Plymouth) and after about a mile the ground is on the left."
            teamTrainInfo = "From Plymouth Station exit onto Saltash Road. Turn right and cross the railway line, continuing straight on up Alma Road. Keep right into Outland Road with the ground on the right."
            teamDrinkInfo = "The best option for away fans is the Britannia, ten minutes from the ground on Milehouse Road opposite the bus station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/plymouth-argyle/scores-fixtures"
        } else if teamName == "Portsmouth" {
            stationCode = "FTN"
            stadiumLat = 50.7959228
            stadiumLon = -1.0648815
            teamCarInfo = "From the A27 turn off onto the A2030 (Eastern Road). Follow the A2030 right to the end and turn left into the A288 (Milton Road), then take the next right into Priory Crescent, and finally the third right into Carisbrooke Road for the ground."
            teamTrainInfo = "From Fratton Station exit onto Goldsmith Avenue, walk past the station complex, go straight over the roundabout and take the next left into Frogmore Road for the ground.\n\n"
            teamDrinkInfo = "The Brewers Arms on the A288 is popular with away fans, but many of the other pubs near the ground are best avoided. Otherwise the best bet is to drink in Portsmouth City Centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/portsmouth/scores-fixtures"
        } else if teamName == "Rochdale" {
            stationCode = "RCD"
            stadiumLat = 53.6191217
            stadiumLon = -2.1800118
            teamCarInfo = "Leave the M62 at Junction 20 following signs for Rochdale A627(M). Bear left before the traffic lights, passing B&Q on your right. At the next roundabout the ground is well signpost (Spotland Stadium). Go straight on at the roundabout and after around 2 miles the ground is on the right."
            teamTrainInfo = "Rochdale Station is over two miles from the ground so taxi is the best bet."
            teamDrinkInfo = "The Church Pub on Willbutts Lane is the main away fans pub. At the ground there is also Studds, and The Ratcliffe Arms.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/rochdale/scores-fixtures"
        } else if teamName == "Scunthorpe Utd" {
            stationCode = "SCU"
            stadiumLat = 53.5872359
            stadiumLon = -0.6948787
            teamCarInfo = "From the M180 Junction 3 take the M181. At the end of the M181 turn right onto the A18 (Doncaster Road) and then first right for the ground."
            teamTrainInfo = "Scunthorpe Station is about 2 miles away so taxi is the easiest option. To walk turn left out of the station go straight over at Oswald Road into Church Lane, following this to the A18 (Kingsway). Follow Kingsway to the roundabout where it become Doncaster Road, which leads to the ground."
            teamDrinkInfo = "The Old Farmhouse, on the retail park behind the Travelodge is the nearest pub to the ground./n/nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/scunthorpe-united/scores-fixtures"
        } else if teamName == "Shrewsbury Town" {
            stationCode = "SHR"
            stadiumLat = 52.6884899
            stadiumLon = -2.7484126
            teamCarInfo = "At the end of the M54 continue onto the A5 and at the junction with the A49 bear left, staying on the A5. At the next roundabout take the 3rd exit into the B4380 (Thieves Lane). Continue along Thieves Lane going straight over two roundabouts into Oteley Road for the ground."
            teamTrainInfo = "Shrewsbury Station is over 2 miles from the ground so taxi is the best option."
            teamDrinkInfo = "There are two pubs both about ten minutes walk from the ground, The Charles Darwin and The Brooklands Hotel. The Charles Darwin is right from the ground along Oteley Road, then second left into Sutton Road. The Brooklands Hotel is left from the ground along Oteley Road, left into Roman Road, and then left into Mill Street.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/shrewsbury-town/scores-fixtures"
        } else if teamName == "Southend Utd" {
            stationCode = "PRL"
            stadiumLat = 51.5492654
            stadiumLon = 0.7020663
            teamCarInfo = "Leave the M25 at Junction 29 onto the A127 towards Southend. Follow signs towards Central Southend, carry on past the Bell Pub and at the next roundabout take the third exit into Victoria Avenue. The ground is on the right hand side just past the next set of traffic lights."
            teamTrainInfo = "Take the train to Prittlewell, and exit the Station onto East Street. Turn right at the junction with Victoria Avenue and the ground is on the left hand side.  To get to the away turnstiles walk down Victoria Avenue past the main entrance and turn left into Fairfax Drive. The away entrance is on the left."
            teamDrinkInfo = "The only real option for away fans is the Railway Tavern outside Prittlewell Railway Station.\n\nAlcohol is not available to away fans inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/southend-united/scores-fixtures"
        } else if teamName == "Sunderland" {
            stationCode = "SUN"
            stadiumLat = 54.9147354
            stadiumLon = -1.3874242
            teamCarInfo = "From the A19, turn of onto the A1231 (Wessington Way) towards Sunderland. Stay on the A1231 until it becomes Queen's Road (B1289) and then Keir Hardie Way. The ground is on the right. There is a football park and ride at Sunderland Enterprise Park (well signed from the A1231)."
            teamTrainInfo = "Come out of Sunderland Train station and turn left, walk through the pedestrian area to Fawcett Street, turn left and follow this road up to the Wearmouth Bridge. Carry on up North Bridge Street and turn left into Millennium Way, the ground is then straight ahead."
            teamDrinkInfo = "The 'William Jameson' in Sunderland town centre, and two social clubs (The Sunderland Companions Club & New Democratic Club) on North Bridge Stree all admit away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/sunderland/scores-fixtures"
        } else if teamName == "Walsall" {
            stationCode = "BSC"
            stadiumLat = 52.5655187
            stadiumLon = -1.991164
            teamCarInfo = "Leave the M6 at Junction 9 taking the A461 towards Walsall. Turn right on to the A4148 (Wallowes Lane) and then turn right at the second set of traffic lights.  The ground is on the left."
            teamTrainInfo = "From Bescot Stadium Station, exit the station and walk under the M6 to the ground."
            teamDrinkInfo = "The closest pub to the ground is the King George V, on Wallowes Lane about 15 minutes walk away by Morrisions. There is also the Saddlers Club outside the ground, which admits away fans for a small fee.\n\nAlcohol is not available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/walsall/scores-fixtures"
        } else if teamName == "Wycombe Wanderers" {
            stationCode = "HWY"
            stadiumLat = 51.6311336
            stadiumLon = -0.7972369
            teamCarInfo = "Leave the M40 at junction 4 and take the A4010 (signposted Aylesbury). Go straight over the next three roundabouts into New Road and continue down the hill towards two mini roundabouts. At the first mini roundabout turn left and then at the next mini roundabout turn right into Hillbottom Road for the ground."
            teamTrainInfo = "Wycombe Station is about 3 miles from the ground so a taxi is the best bet to the ground."
            teamDrinkInfo = "There are no pubs near the ground. The closest is the Hourglass in Sands, a 15 minutes walk away. The supporters club at the ground also admits away fans for a fee if you get there early enough."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/wycombe-wanderers/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
    
    // MARK: Leauge Two Team Data
    func loadTwoTeamData() {
        if teamName == "Bury" {
            stationCode = "MCV"
            stadiumLat = 53.5809538
            stadiumLon = -2.2949566
            teamCarInfo = "Leave the M60 at junction 17 onto the A56, following signs towards Whitfield. Follow the A56 signs towards Bury through the set of traffic lights by McDonalds.  Still following the signs to Bury, turn right at the lights on to Manchester Road and follow signs towards the town centre. After about a mile, turn right into Gigg Lane for the ground."
            teamTrainInfo = "Take a Metrolink tram from Manchester (Piccadily or Victoria) to Bury. Turn left out of Bury Metrolink Station and go under the dual carriageway. On the other side turn right towards the Town Hall. Just before the Town Hall turn left into Knowsley Street and at the end turn left onto the main A56 Manchester Road. Walk down Manchester Road and turn left into Gigg Lane for the ground."
            teamDrinkInfo = "There are several pubs on Manchester Road near the ground. The popular pub with away fans is the Pack Horse, which also has a fish and chip shop next door."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bury/scores-fixtures"
        } else if teamName == "Cambridge Utd" {
            stationCode = "CBG"
            stadiumLat = 52.2121000
            stadiumLon = 0.1541300
            teamCarInfo = "Leave the A14 at Junction 34 and take the B1047 towards Fen Ditton. Follow the B1047 through Fen Ditton until you reach the junction with the A1303 (Newmarket Road), turn right onto the A1303 and follow this road until you reach the ground on the left hand side."
            teamTrainInfo = "Cambridge Station is about two miles from the ground so the best bet is either a taxi or the C3 Bus.\n\nTo walk exit the station and turn right heading towards the footbridge. Continue walking down Devonshire Road, crossing over Mill Road into Kingston Street. Walk down Kingston Street to the end and turn right into Hooper Street, and then left into Ainsworth Street. Continue down Ainsworth Street, into York Street. Take the first left into Henley Road and continue walking alongside the retail park. At B&Q you should join Newmarket Road, continue right along Newmarket Road and the ground is round the corner on the right hand side."
            teamDrinkInfo = "There is a supporters club at the ground which sometimes allows entry to away fans, otherwise there is not really anything near the ground. The best bet is to drink in Cambridge City Centre before heading out the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/cambridge-united/scores-fixtures"
        } else if teamName == "Carlisle Utd" {
            stationCode = "CAR"
            stadiumLat = 54.8958163
            stadiumLon = -2.9144752
            teamCarInfo = "Leave the M6 at Junction 43 and take the A69 towards Carlisle. The ground is on the A69, fifth right after the golf course."
            teamTrainInfo = "From Carlisle Station leave from the main entrance and follow Ct Square round to Warwick Road. Then follow Warwick Road to the ground."
            teamDrinkInfo = "There is a bar at Carlisle Rugby Club, next to the ground, which allows away fans. Another option is the Beehive, on Warwick Road, although for some games away fans are not admitted."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/carlisle-united/scores-fixtures"
        } else if teamName == "Cheltenham Town" {
            stationCode = "CNM"
            stadiumLat = 51.9055762
            stadiumLon = -2.0620928
            teamCarInfo = "Leave the M5 at junction 10 and take the A4019 towards Cheltenham. Keep straight on through the traffic lights, and at the large roundabout turn left. Continue up this road going over a double mini roundabout. After about 300 yards turn right into Swindon Lane. Go over the level crossing and the next roundabout, passing the race course. Turn right into Albert Road and at the roundabout turn left into Prestbury Road. Then turn right into Whaddon Road for the ground."
            teamTrainInfo = "Cheltenham Station is over 2 miles away so taxi is the easiest way of getting to the ground."
            teamDrinkInfo = "The best options for away fans are the Sudeley Arms or The Conservatory, both about a ten minute walk away on Prestbury Road."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/cheltenham-town/scores-fixtures"
        } else if teamName == "Colchester Utd" {
            stationCode = "COL"
            stadiumLat = 51.923364
            stadiumLon = 0.896093
            teamCarInfo = "Leave the A12 at Junction 28, the ground is next to the A12 on United Way."
            teamTrainInfo = "Colchester Station is over two miles away so taxi is the easiest way of getting to the ground."
            teamDrinkInfo = "There are no pubs near the ground which admit away fans, so a better option is to drink in Colchester town centre before heading out to the stadium.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/colchester-united/scores-fixtures"
        } else if teamName == "Crawley Town" {
            stationCode = "CRW"
            stadiumLat = 51.099568
            stadiumLon = -0.1953945
            teamCarInfo = "Leave the M23 at Junction 11 and take the A23 towards Crawley. Once on the A23 at the next roundabout take the first left onto Coachmans Drive for the ground."
            teamTrainInfo = "Crawley Station is a half hour walk away. Exit the station onto Station Way and at the end turn left onto Brighton Road. After half a mile turn left onto Southgate Drive and then right onto Barrington Road. Next turn right onto Wakehurst Drive and then left into Tyler Road. At the end turn right onto Southgate Avenue. Walk down Southgate Avenue to the roundabout for the ground."
            teamDrinkInfo = "The closest pub to the ground is the Half Moon, on Brighton Road about five minutes walk from the ground. Alternatively further down Brighton Road, into Wakehurst Drive is the Downsman."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/crawley-town/scores-fixtures"
        } else if teamName == "Crewe Alexandra" {
            stationCode = "CRE"
            stadiumLat = 53.0879308
            stadiumLon = -2.4361022
            teamCarInfo = "Leave the M6 at Junction 16 and take the A5020 towards Crewe. Once in Crewe, at the roundabout junction with the A534 (Nantwich Road) turn left. Once past the Station turn left into Gresty Road for the ground."
            teamTrainInfo = "Exit Crewe Station and turn left, then take the first left into Gresty Road for the ground."
            teamDrinkInfo = "The best option is the Royal Hotel on Nantwich Road, which has separate bars for home and away fans. There are several other pubs on Nantwich Road."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/crewe-alexandra/scores-fixtures"
        } else if teamName == "Exeter City" {
            stationCode = "SJP"
            stadiumLat = 50.7297825
            stadiumLon = -3.5209573
            teamCarInfo = "Leave the M5 at Junction 30 and take the second exit at the Middlemoor roundabout (signed Heavitree). Follow signs towards the city centre, passing through Heavitree, for around 2 miles. After the police station turn right at the roundabout onto Western Way (signposted Pinhoe and Broadclyst). At the next roundabout, take the second exit into Old Tiverton Road and then take the second left into Stadium Way."
            teamTrainInfo = "St James Park Station is right next to the ground."
            teamDrinkInfo = "Closest to the ground there is a Social Club, or on Well Street there is the Wells Tavern, both admits away fans. Alternatively there are plenty of pubs in the City Centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/exeter-city/scores-fixtures"
        } else if teamName == "Forest Green Rovers" {
            stationCode = "STD"
            stadiumLat = 51.699104
            stadiumLon = -2.237933
            teamCarInfo = "Forest Green Rovers play in the town of Nailsworth. Take the A46 Bath Road into Nailsworth and turn onto Spring Hill following the sign to Forest Green. Spring Hill becomes Nympsfield Road, go over the first roundabout and then turn left at the second roundabout onto Another Way for the ground. There is plenty of on street parking in the area.  Another option is to use the Club Park and Ride, this can be found on the A46 Stroud Road at Renishaw plc."
            teamTrainInfo = "The nearest railway station is Stroud, well over five miles away so a taxi will be your best bet. You can also get the Number 63 Bus from Stroud to Nailsworth."
            teamDrinkInfo = "The club sometimes set up a small marquee serving drinks near the away turnstiles. The George on Newmarket Road is the closest to the ground, otherwise there are several pubs in the centre of Nailsworth."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/forest-green-rovers/scores-fixtures"
        } else if teamName == "Grimsby Town" {
            stationCode = "CLE"
            stadiumLat = 53.570247
            stadiumLon = -0.046709
            teamCarInfo = "From the North take the M180 to Grimsby, and continue onto the A180, once in Grimsby stay on the A180 and follow the signs to Cleethorpes. When you reach the Blundell Park Hotel turn left into Imperial Avenue for the ground.\n\nFrom the south take the A1 North and exit  onto the A46 to Lincoln and onto Grimsby. Stay on the A46 until it becomes Clee Road and at the roundabout turn left onto the A180. Continue on the A180 until you reach the Blundell Park Hotel and then turn right into Imperial Avenue for the ground.\n\nThere is plenty of on street parking in the area."
            teamTrainInfo = "Take the train to Cleethorpes and exit the station facing the sea. Turing left, walk along the seafront and just before you reach the ground there is a footbridge over the railway line, once over the railway turn right into Harrington Street and then left into Neville Street for the ground."
            teamDrinkInfo = "The Blundell Park Hotel is the closest pub to the ground. There are also a number of pubs along the seafront if you are walking from Cleethorpes railway station."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/grimsby-town/scores-fixtures"
        } else if teamName == "Lincoln City" {
            stationCode = "LCN"
            stadiumLat = 53.2181763
            stadiumLon = -0.540056
            teamCarInfo = "Leave the A1 at Newark and take the A46 towards Lincoln. Once on the A46, at the Hykeham Roundabout, take the A1434 (Lincoln South). Follow the A1434 (Newark Road) until it becomes the A15. At the next roundabout go straight over into the High Street, and then take the ninth right into Scorer Street. Finally take the first right into Sincil Bank for the ground."
            teamTrainInfo = "Exit Lincoln Central Station and turn left, then left again at the main road (High Street). Go over the level crossing and walk down the High Street, take the seventh turning onto Scorer Street and then the first right into Sincil Bank for the ground."
            teamDrinkInfo = "The are plenty of pubs and food outlets on Lincoln High Street with the Golden Eagle and the Hop and Barley good bets. There are also plenty of options at the Lincoln Marina development not far from the Railway Station."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/lincoln-city/scores-fixtures"
        } else if teamName == "Macclesfield Town" {
            stationCode = "MAC"
            stadiumLat = 53.2439295
            stadiumLon = -2.1258639
            teamCarInfo = "Leave the M6 at Junction 17 and turn onto the A534 towards Congleton. Once in Congleton follow signs for the A54 towards Buxton. Stay on the A54 for 5 miles and then turn left on to the A523 to Macclesfield.  The ground is on the left hand side of the A523 on the outskirts of Macclesfield."
            teamTrainInfo = "Exit Macclesfield Station and at the bottom of the station approach turn left onto Sunderland Street. Follow the road until the traffic lights at Park Green, and turn left into Mill Lane.  Follow Mill Lane into London Road, and continue down London Road to the ground."
            teamDrinkInfo = "The closest pub to the ground is the Golden Lion, ten minutes away on Moss Road walking past the ground. The Keith Alexander Bar at the ground also admits both home and away fans before the game."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/macclesfield-town/scores-fixtures"
        } else if teamName == "Mansfield Town" {
            stationCode = "MFT"
            stadiumLat = 53.1380700
            stadiumLon = -1.2007600
            teamCarInfo = "Leave the M1 at Junction 28 and follow the A38 towards Mansfield. At Kings Mill Hospital turn right staying on the A38, and at the end turn right onto the A6009 Portland Street. Continue straight on, under the railway bridge, the ground is on the right down Quarry Lane."
            teamTrainInfo = "Exit Mansfield Station onto Station Road and turn left towards the A6009 (Portland Street) Dual Carriageway. Turn left and walk down Portland Street the under the railway bridge. Continue straight on over the junction with St Peter's Way. The ground is on the right down Quarry Lane."
            teamDrinkInfo = "The pubs in the town centre are best avoided by away fans. The Sandy Pate at the ground admits away fans, or there are several pubs on the A38 between the M1 and Mansfield town centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/mansfield-town/scores-fixtures"
        } else if teamName == "MK Dons" {
            stationCode = "BLY"
            stadiumLat = 52.0093942
            stadiumLon = -0.7328938
            teamCarInfo = "Leave the M1 at junction 14 towards central Milton Keynes. At the first roundabout take the third exit H6 (Portway), follow this straight over the next 9 roundabouts, past the city centre and the old Hockey Stadium ground. At the next roundabout take the first left onto the A5, take this road until the next junction. Get in the right-hand lane and take the fourth turning, V6 (Grafton Street) and turn left at the traffic lights for the ground."
            teamTrainInfo = "From Bletchley Station exit onto Buckingham Road. Turn left onto Buckingham Road and cross over the railway line. At the roundabout continue straight on into Saxon Street, following Saxon Street over four roundabouts to the ground."
            teamDrinkInfo = "The closest pub to the ground is the Inn on the Lake. From the ground walk down Dawson Road, turning right at the end into Bond Avenue for the pub.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/milton-keynes-dons/scores-fixtures"
        } else if teamName == "Morecambe" {
            stationCode = "MCM"
            stadiumLat = 54.061180
            stadiumLon = -2.866935
            teamCarInfo = "Leave the M6 at Junction 34 and follow signs to Morecambe. Cross the River Lune in the left hand lane and continue following signs for Morecambe onto the A589. At the first two roundabouts carry straight on, and at the third roundabout turn left and continue along Westgate for about a mile.  The ground is on the right after passing the Fire Station."
            teamTrainInfo = "Exit Morecambe Station and walk down station approach to Central Drive. Take the next right into Billy Hill and then right again onto West End Road. Walk down West End Road and bear left into Acre Moss Lane, which becomes Buckingham Road. Finally turn left into Westgate and the ground is down here on the left."
            teamDrinkInfo = "The closest pub to the ground for away fans is at the Regent Leisure Holiday Park, turning right from the ground a few minutes walk along Westgate. Alternatively there are plenty of pubs down on the seafront, about a fifteen minute walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/morecambe/scores-fixtures"
        } else if teamName == "Newport County" {
            stationCode = "NWP"
            stadiumLat = 51.5882700
            stadiumLon = -2.9879900
            teamCarInfo = "Leave the M4 at Junction 26 and take the A4051 into Newport. Continue under the A4042 until you reach a large roundabout, and take the second exit keeping in the filter lane following signs for the City Centre and the Railway Station. At the next roundabout take the first exit onto the B4591 across the river Usk. Bear right at the traffic lights into Chepstow Road and take the first right into Corporation Road. Take the second right into Grafton Road and then left at the end onto Rodney Street, the ground is on the left."
            teamTrainInfo = "Exit Newport Station and turn left onto Queensway, continuing along Queensway to the roundabout. Take the pedestrian underpass under the roundabout and head towards the bridge over the river Usk.  Cross the river and take the first right into Rodney Road. The ground is along Rodney Road on the left."
            teamDrinkInfo = "The closest place to the ground for away fans is the clubhouse at the ground, which admits away fans. Other than that there is a Wetherspoons, The Godfrey Morgan, on Chepstow Road or several pubs in the centre of Newport."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/newport-county/scores-fixtures"
        } else if teamName == "Northampton Town" {
            stationCode = "NMP"
            stadiumLat = 52.235099
            stadiumLon = -0.9342712
            teamCarInfo = "Leave the M1 at Junction 15A and take the A43 towards Northampton. Once on the A43 go over two roundabouts and at the third roundabout turn right into Edgar Mobbs Way for the ground."
            teamTrainInfo = "Exit Northampton Station and cross the car park to St Andrew's Road and turn right walking down to Black Lion Hill. Turn right onto Black Lion Hill, which becomes St James Road. After HSS Hire turn left into St James Mill Road, and then right into Harvey Reeves Road, which becomes Edgar Mobbs Way. Follow Edgar Mobbs Way to the ground."
            teamDrinkInfo = "There are a few options on the complex the stadium is based, although The Magic Tower and The Sixfields Tavern don't generally admit away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/northampton-town/scores-fixtures"
        } else if teamName == "Notts County" {
            stationCode = "NOT"
            stadiumLat = 52.9422431
            stadiumLon = -1.1361047
            teamCarInfo = "From the M1 Junction 24 take the A453 towards Nottingham. Just before the A52 junction turn off the A453 onto the B679 (Clifton Lane). Follow the B679 to the end and turn left onto the A60 (Loughborough Road). Continue over the river, driving past the ground, and turn right into the A6011 (County Road) for the ground."
            teamTrainInfo = "From Nottingham Station turn onto Queens Road, and the right onto London Road. Follow London Road south and take the first left into County Road for the ground."
            teamDrinkInfo = "The Globe on London Road is a good choice, as is the Southbank, across Trent Bridge. Alternatively there are plenty of pubs in Nottingham City Centre.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/notts-county/scores-fixtures"
        } else if teamName == "Oldham Athletic" {
            stationCode = "MIH"
            stadiumLat = 53.5543382
            stadiumLon = -2.1280832
            teamCarInfo = "Leave the M62 at Juntction 20 and take the A627 towards Oldham, then take the second slip road off the A627 following signs to Royton (A663). Turn left at the roundabout towards Royton (A663) then take the next right onto Hilbre Avenue for the ground."
            teamTrainInfo = "The nearest station, Oldham Mill Hills, is to far to walk so either take a taxi from here or catch a bus from Manchester Piccadilly Bus Station to Oldham. Routes 24, 181, and 182 take around 25 minutes and run past the ground."
            teamDrinkInfo = "The Clayton Green on Sheepfoot Lane is the closest pub to the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/oldham-athletic/scores-fixtures"
        } else if teamName == "Port Vale" {
            stationCode = "SOT"
            stadiumLat = 53.0503903
            stadiumLon = -2.1916971
            teamCarInfo = "Leave the M6 at Junction 16 (from the north) or Junction 15 (from the south) and join the A500. Stay on this road until the exit for Tunstall (A527). At the next roundabout turn right towards Burslem and follow this road uphill crossing a mini roundabout until you reach the traffic lights in the centre of the town. Go straight on and bear left into Hamil Road, the ground is on the left."
            teamTrainInfo = "Stoke Station is over four miles from the ground so taxi is the easiest way to the ground."
            teamDrinkInfo = "The main away fans pub is The Vine on Hamil Road. Otherwise the town centre is only about ten minutes away, with plenty of pubs fine for away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/port-vale/scores-fixtures"
        } else if teamName == "Stevenage" {
            stationCode = "SVG"
            stadiumLat = 51.8897477
            stadiumLon = -0.1920352
            teamCarInfo = "Leave the A1 at Junction 7 and take the A602 towards Stevenage. Go straight across the next two roundabouts and the ground is on the left."
            teamTrainInfo = "Exit Stevenage Station towards Stevenage Lesure Centre and head south down Lytton Way. At the first roundabout go straight over and then at the second roundabout take the second exit onto Monkswood Way. Follow Monkswood Way to the next roundabout for the ground."
            teamDrinkInfo = "The only really option near the ground is the Club House bar behind the South Stand. Otherwise there are pubs in the town centre, only a 15 to 20 minute walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/stevenage/scores-fixtures"
        } else if teamName == "Swindon Town" {
            stationCode = "SWI"
            stadiumLat = 51.5647848
            stadiumLon = -1.7699336
            teamCarInfo = "Leave the M4 at Junction 15 and take the A419 towards Swindon. At the next roundabout turn left onto the A4259 (Marlborough Road). Take the 2nd exit at the next roundabout onto Queens Drive, and then at the next set of roundabouts take the 3rd exit onto County Road. The ground is on the first right."
            teamTrainInfo = "From Swindon Station cross Station Road and walk up Wellington Street to end of road. Turn left and walk along Manchester Road to the end. At the junction turn right. The ground is up this road on the left."
            teamDrinkInfo = "The Merlin pub on Drove Road (off the magic roundabout) admits away fans, as does the bar at the Cricket Club on County Road behind the Arkells Stand.\n\nAlcohol is only available to away fans in the Arkells Stand and not the Stratton Bank End."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/swindon-town/scores-fixtures"
        } else if teamName == "Tranmere Rovers" {
            stationCode = "RFY"
            stadiumLat = 53.3732067
            stadiumLon = -3.035836
            teamCarInfo = "Leave the M53 at junction 3, and take the A552 (Woodchurch Road) towards Birkenhead. After passing Sainsburys on your left, turn right on to the B5151 (Mount Road) and then the first left for the ground."
            teamTrainInfo = "From Rock Ferry Station exit onto Bedford Road. Turn right and walk down Bedford Road, which becomes Bedford Avenue. At the roundabout with Bebington Road continue straight over into Bedford Drive.  Finally turn right into Borough Road, which leads down to the ground."
            teamDrinkInfo = "The Prenton Park Hotel is near the away end, and as a result always popular with away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/tranmere-rovers/scores-fixtures"
        } else if teamName == "Yeovil Town" {
            stationCode = "YVJ"
            stadiumLat = 50.9502207
            stadiumLon = -2.6747167
            teamCarInfo = "Leave the A303 and take the A3088 towards Yeovil. After four miles turn left at the roundabout and continue straight on. At the second roundabout turn left into Lufton Way. Follow Lufton Way round to the ground"
            teamTrainInfo = "Both Railway Stations that serve Yeovil are too far from the ground to walk, so taxi or bus is the best option."
            teamDrinkInfo = "There aren't really any pubs in the immediate area of the ground. On the way into Yeovil on Bluebell Road (left at the first roundabout after the A3088) is the Airfield Tavern, or on Preston Road (right at the second roundabout after the A3088) is the Bell Inn."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/yeovil-town/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
    
    override func viewDidLoad() {
        navigationItem.title = teamName
        if league == "champ" {
            loadChampTeamData()
        }
        if league == "one" {
            loadOneTeamData()
        }
        if league == "two" {
            loadTwoTeamData()
        }
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
