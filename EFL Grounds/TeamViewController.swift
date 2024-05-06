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
    
    /*
    
    // MARK: Championship Team Data
    func loadChampTeamData() {
        if teamName == "Birmingham" {
            stationCode = "BHM"
            stadiumLat = 52.474486
            stadiumLon = -1.866873
            teamStadiumName = "St Andrews"
            teamCarInfo = "Sat Nav Postcode: B9 4RL\n\nLeave the M6 at Junction 6 and take the A38(M) towards Birmingham City Centre. Turn of the A38(M) onto the Inner Ring Road and take the Ring Road East, towards Coventry, after about 2 miles turn left into Coventry Road. The ground is well sign posted on the Inner Ring Road."
            teamTrainInfo = "New Street Station is about a 30 min walk away. Come out of the station and head towards the Bullring and Digbeth Coach Station. When you reach coach station walk along the dual carriageway (B4100) away from the city, bear left onto Coventry Road (under the railway bridge) and the ground should be visible from here."
            teamDrinkInfo = "It is best to drink in the City Centre before heading to the stadium as most of the pubs near the ground are really for home fans only. The Brighton pub on Coventry Road does permit small groups of away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/birmingham-city/scores-fixtures"
        } else if teamName == "Blackburn" {
            stationCode = "BBN"
            stadiumLat = 53.7294672
            stadiumLon = -2.4881448
            teamStadiumName = "Ewood Park"
            teamCarInfo = "Sat Nav Postcode: BB2 4JF\n\nLeave the M65 at Junction 4 and follow signs towards Blackburn. At the end of Earcroft Way turn right and follow the A666 towards Blackburn until you reach the ground."
            teamTrainInfo = "Blackburn Railway station is a 30 min walk away. Come out of the station, walk down to Darwen Street, turn left and keep walking until you reach Great Bolton Street. From here turn right and follow Bolton Road until you reach the ground."
            teamDrinkInfo = "The traditional away pub is the Fernhurst, on Bolton Road across from the away end. Other options include the Golden Cup, further up Bolton Road, and a Wetherspoons (The Postal Order) at Blackburn Railway Station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/blackburn-rovers/scores-fixtures"
        } else if teamName == "Bristol City" {
            stationCode = "BRI"
            stadiumLat = 51.439884
            stadiumLon = -2.6210076
            teamStadiumName = "Ashton Gate"
            teamCarInfo = "Sat Nav Postcode: BS3 2EJ\n\nFrom the M5 Junction 18 take the A4 (Portway) towards Bristol. The Portway becomes Cabot Way, and then Brunel Way over the river. Turn off Brunel Way into Winterstoke Road, the ground is on the left."
            teamTrainInfo = "Bristol Temple Meads Station is too far to walk so taxi is the best bet from here.  After the game buses run from the ground back to the City Centre and the Station."
            teamDrinkInfo = "The Nova Scotia or the Pumphouse, both by the waterfront, are suitable for away fans. Another option is the Knights Templar which is straight ahead when coming out of Temple Meads Station.\n\nThe pubs near the ground are all best avoided by away fans, and alcohol is not available inside the stadium for away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bristol-city/scores-fixtures"
        } else if teamName == "Cardiff" {
            stationCode = "NNP"
            stadiumLat = 51.472830
            stadiumLon = -3.203030
            teamStadiumName = "Cardiff City Stadium"
            teamCarInfo = "Sat Nav Postcode: CF11 8AZ\n\nFrom the M4 Junction 33 take the A4232 towards Cardiff and stay on this road round Cardiff until you reach the B4267 (Leckwith Road). Leckwith Road runs past the ground."
            teamTrainInfo = "Take a local train from Cardiff Central to Ninian Park Station, come out of the station onto Leckwith Road and walk down to the ground."
            teamDrinkInfo = "There aren't really any pubs near the ground, and most of the pubs near the old ground are very much home fans only. The best bet is to drink in the City Centre before heading out to the stadium.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/cardiff-city/scores-fixtures"
        } else if teamName == "Coventry" {
            stationCode = "COV"
            stadiumLat = 52.4482668
            stadiumLon = -1.497429
            teamStadiumName = "Coventry Building Society Arena"
            teamCarInfo = "Sat Nav Postcode: CV6 6GE\n\nFrom the M6 Junction 3 take the A444 (Phoenix Way) towards Coventry, the ground is on the left at the next roundabout."
            teamTrainInfo = "Coventry Station is too far to walk so either take the shuttle bus from the station or a taxi to the ground."
            teamDrinkInfo = "Most of the pubs near the ground, particularly on Longford Road are not suitable for away fans. However, The Black Horse Pub at the top of Longford Road towards Exhall is being used by away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/coventry-city/scores-fixtures"
        } else if teamName == "Huddersfield" {
            stationCode = "HUD"
            stadiumLat = 53.6540252
            stadiumLon = -1.7731935
            teamStadiumName = "John Smiths Stadium"
            teamCarInfo = "Sat Nav Postcode: HD1 6PX\n\nLeave the M62 at Junction 25 (signposted Galpharm Stadium). At the motorway roundabout follow signs to Huddersfield East (A62), Dewsbury A64 onto the A644 Wakefield Road.  At Cooper Bridge Roundabout after one mile, turn right and follow Huddersfield (A62) signs through several sets of lights for three miles, and then turn left (signposted Galpharm Stadium) into St Andrews Road. At the lights turn left by the car showroom to the ground."
            teamTrainInfo = "From Huddersfield Station exit onto Railway Street, turn left and walk down Railway Street to the A62 (Southgate). Cross Southgate and continue straight down the A62 (Leeds Road).  Take the third right into Gasworks Street, which becomes Stadium Way leading to the ground."
            teamDrinkInfo = "Most of the pubs near the ground are for home fans only. The Gas Club, on Gasworks Street (right next to the gas holder) does admit away fans, as does the Head of Steam at the railway station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/huddersfield-town/scores-fixtures"
        } else if teamName == "Hull City" {
            stationCode = "HUL"
            stadiumLat = 53.7457315
            stadiumLon = -0.3680162
            teamStadiumName = "KCOM Stadium"
            teamCarInfo = "Sat Nav Postcode: HU3 6HU\n\nFrom the end of the M62 stay on the A63 to Hull, the ground (KC Stadium) is clearly signposted from here."
            teamTrainInfo = "From Hull Station take the southern exit onto Anlaby Road, tun right and follow Anlaby Road to the Ground."
            teamDrinkInfo = "Either drink in the City Centre before heading to the ground or try 'The Brickmakers' which is opposite the main stadium car park. The Walton Street Social Club also admits away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/hull-city/scores-fixtures"
        } else if teamName == "Leeds Utd" {
            stationCode = "LDS"
            stadiumLat = 53.7771779
            stadiumLon = -1.5715315
            teamStadiumName = "Elland Road"
            teamCarInfo = "Sat Nav Postcode: LS11 0ES\n\nThe ground is well signposted. From the M621 Junction 2 take the A634, which becomes Elland Road, to the ground."
            teamTrainInfo = "From Leeds Station the easiest way the ground is using the shuttle buses. Leave the station from the main entrance, cross the road and walk down the steps the street below, the buses go from here to the ground."
            teamDrinkInfo = "The best bet is to drink in the City Centre before heading to the ground as the pubs by the stadium are not recommended for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leeds-united/scores-fixtures"
        } else if teamName == "Leicester" {
            stationCode = "LEI"
            stadiumLat = 52.6200439
            stadiumLon = -1.1414997
            teamStadiumName = "King Power Stadium"
            teamCarInfo = "Sat Nav Postcode: LE2 7FL\n\nFrom the M1 Junction 21 take the A5460 (Narborough Road) towards Leicester. After going under the railway bridge turn right into Upperton Road, cross the river and turn right into Eastern Boulevard following this to the ground."
            teamTrainInfo = "From Leicester Station cross over London Road and head down Waterloo Way. At the end of Waterloo Way turn left into Welford Road, then right into Almond Road. At the end of Almond Road turn left into Aylestone Road and then take the next right into Raws Dykes Road to the ground."
            teamDrinkInfo = "The best bet is to drink in the City Centre before heading to the ground as the pubs near the stadium are not recommended for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leicester-city/scores-fixtures"
        } else if teamName == "Middlesbrough" {
            stationCode = "MBR"
            stadiumLat = 54.5781243
            stadiumLon = -1.2177641
            teamStadiumName = "Riverside Stadium"
            teamCarInfo = "Sat Nav Postcode: TS3 6RS\n\nFrom the A19 turn off onto the A66 towards Middlesbrough. The ground is signposted (Riverside Stadium), stay on the A66 past the railway station and the turn off onto Moor Road, following this to the ground."
            teamTrainInfo = "From Middlesbrough Station turn left onto Zetland Road and left again into Albert Road. After going under the railway bridge turn right into Bridge Street East, and right again into Windward Way. Follow Windward way to the ground."
            teamDrinkInfo = "Doctor Browns in the City Centre on Corporation Road is a good option. From the railway station turn right down Albert Road (crossing the A66) and then take the second left into Corporation Road.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/middlesbrough/scores-fixtures"
        } else if teamName == "Millwall" {
            stationCode = "SBM"
            stadiumLat = 51.4866709
            stadiumLon = -0.0510526
            teamStadiumName = "The New Den"
            teamCarInfo = "Sat Nav Postcode: SE16 3LN\n\nFrom the M25 Junction 3 take the A20 towards London. Stay on the A20 until it becomes the A2 at New Cross Gate Station. The ground is signposted, but from the A2 (Old Kent Road) turn right into Iiderton Road, which leads to the ground."
            teamTrainInfo = "Take the train from London Bridge to South Bermondsey Station, exit the station and turn right using the secure walkway to the away end."
            teamDrinkInfo = "None of the pubs near the ground are recommended for away fans. The George Inn on Borough High Street is a good option, as are the other pubs around London Bridge Station. After the game, however, the pubs in the London Bridge area are not recommended either.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/millwall/scores-fixtures"
        } else if teamName == "Norwich City" {
            stationCode = "NRW"
            stadiumLat = 52.6223803
            stadiumLon = 1.308603
            teamStadiumName = "Carrow Road"
            teamCarInfo = "Sat Nav Postcode: NR1 1JE\n\nFrom the A11 the ground is well signposted. At the A11 / A47 roundabout take the A47, turning of onto the A146 towards the City Centre. At the traffic lights at the end of the A146 turn right, and then left at the roundabout onto Bracondale. At the next lights turn right into King Street and follow this road round over the river to the ground."
            teamTrainInfo = "From Norwich Station turn left and at the main road either turn left again and follow it round to the ground or cross the road and walk through the Riverside development to the ground."
            teamDrinkInfo = "The traditional away pub the 'Compleat Angler' no longer accepts away fans, however, the Prince of Wales Pub further up Prince of Wales Road does. There are also a number of pubs and restaurants in the Riverside development between the Railway Station and the ground, however, many of these do not now admit away fans.\n\nAlcohol is also available inside the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/norwich-city/scores-fixtures"
        } else if teamName == "Plymouth" {
            stationCode = "PLY"
            stadiumLat = 50.3873937
            stadiumLon = -4.1517004
            teamStadiumName = "Home Park"
            teamCarInfo = "Sat Nav Postcode: PL2 3DQ\n\nAt the end of the M5 continue onto the A38. The ground is well signposted on the A38. On reaching Plymouth, turn left onto the A386. When the road splits in two keep on the left-hand lane (signposted Plymouth) and after about a mile the ground is on the left."
            teamTrainInfo = "From Plymouth Station exit onto Saltash Road. Turn right and cross the railway line, continuing straight on up Alma Road. Keep right into Outland Road with the ground on the right."
            teamDrinkInfo = "The best option for away fans is the Britannia, ten minutes from the ground on Milehouse Road opposite the bus station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/plymouth-argyle/scores-fixtures"
        } else if teamName == "Preston" {
            stationCode = "PRE"
            stadiumLat = 53.7722293
            stadiumLon = -2.6893447
            teamStadiumName = "Deepdale"
            teamCarInfo = "Sat Nav Postcode: PR1 6RU\n\nFrom the M6 Junction 31 take the A59 towards Preston. Turn off the A59 onto the A5085 (Blackpool Road) at the roundabout and follow this road to Deepdale Road for the ground."
            teamTrainInfo = "From Preston Station turn right onto Fishergate and walk through the town centre continuing on into Church Street. When at the Ringway, head towards the Prison and turn left into Deepdale Road. Follow Deepdale Road up to the ground."
            teamDrinkInfo = "There aren't many pubs near the ground, and most of the town centre pubs are best avoided as well. The pubs near the railway station should be ok.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/preston-north-end/scores-fixtures"
        } else if teamName == "QPR" {
            stationCode = "SPB"
            stadiumLat = 51.510610
            stadiumLon = -0.230760
            teamStadiumName = "Kiyan Prince Foundation Stadium"
            teamCarInfo = "Sat Nav Postcode: W12 7PA\n\nFrom the M25 Junction 16 take the M40 towards Central London. At the BBC White City complex turn off the A40 onto the A219 (Wood Lane), go under the A40 and then turn off Wood Lane into South Africa Road which leads down to the ground."
            teamTrainInfo = "Take the Central Line to White City Tube Station, exit the station and turn right onto Wood Lane, and then take the first left down South Africa Road to the ground."
            teamDrinkInfo = "The pubs around Shepherds Bush Green (Walkabout and O'Neill's) are fine for away fans. Exit White City Tube Station turn left and walk down Wood Lane.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/queens-park-rangers/scores-fixtures"
        } else if teamName == "Rotherham" {
            stationCode = "RMC"
            stadiumLat = 53.4296308
            stadiumLon = -1.3611662
            teamStadiumName = "New York Stadium"
            teamCarInfo = "Sat Nav Postcode: S60 1AH\n\nFrom the North, leave the M1 at Junction 34, onto the A6178 towards Rotherham. At the third roundabout take the first exit onto the A630, at the next roundabout turn right onto Main Street for the ground.\n\nFrom the South, leave the M1 at Junction 33, onto the A630 towards Rotherham. At the fourth roundabout turn right onto Main Street for the ground."
            teamTrainInfo = "From Rotherham Central Station exit right on to Bridge Street. Cross over the river and take the first right, walking down this footpath alongside the river.  This footpath leads to Market Street, after Tesco. At the end of Market Street turn left onto Main Street for the ground."
            teamDrinkInfo = "As the ground is near the centre of town there are several town centre pubs to choose from.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/rotherham-united/scores-fixtures"
        } else if teamName == "Sheffield Wednesday" {
            stationCode = "SHF"
            stadiumLat = 53.4116501
            stadiumLon = -1.5021879
            teamStadiumName = "Hillsborough"
            teamCarInfo = "Sat Nav Postcode: S6 1SW\n\nLeave the M1 at junction 36 and follow the A61 towards Sheffield. Continue along the A61 for four miles and at the 2nd roundabout take the 3rd exit (Leppings Lane).  The ground is on the left."
            teamTrainInfo = "From Sheffield Station walk to the tram station and take the yellow line to the Leppings Lane stop. Walk down Leppings Lane to the ground."
            teamDrinkInfo = "There are several pubs near the railway station, and in the City Centre before heading up to Hillsborough. Closer to the ground there is the New Bridge Inn on the A61 Penniston Road, past the ground heading out of the City Centre.\n\nAlcohol is not always available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/sheffield-wednesday/scores-fixtures"
        } else if teamName == "Southampton" {
            stationCode = "SOU"
            stadiumLat = 50.9065298
            stadiumLon = -1.3908231
            teamStadiumName = "St Marys Stadium"
            teamCarInfo = "Sat Nav Postcode: SO14 5FP\n\nLeave the M27 at Junction 5 and take the A335 towards Southampton. Just past Swaythling Station turn left (staying on the A335) onto Thomas Lewis Way. Continue on the A335 until you reach the junction with the A3024 (Northam Road) and turn left towards Northam. Turn right after going over the railway bridge onto the B3038 (Britannia Road) for the ground."
            teamTrainInfo = "From Southampton Station exit onto Western Esplande, turn left and walk up the hill to Havelock Road, continue straight on, over Havelock Road, onto New Road. Walk along New Road through the parks to Northam Road, continuing along Northam Road to the ground."
            teamDrinkInfo = "Near to the ground the traditional away pub is the King Alfred on Northam Road, which you pass walking from the City Centre. Otherwise the only other option is Yates Wine Lodge in the City Centre really.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/southampton/scores-fixtures"
        } else if teamName == "Stoke" {
            stationCode = "SOT"
            stadiumLat = 52.9891356
            stadiumLon = -2.1737192
            teamStadiumName = "bet365 Stadium"
            teamCarInfo = "Sat Nav Postcode: ST4 4EG\n\nFrom Junction 15 of the M6 take the A500 towards Stoke. Keep going until you reach the A50, take this road (towards Derby). Turn off the A50 at the first junction and you should see the stadium over to the right."
            teamTrainInfo = "Stoke Railway Station is over two miles away so a taxi is the best bet. There are also shuttle buses from Glebe Street in Stoke, to the ground before and after the game."
            teamDrinkInfo = "There aren't really any pubs near the stadium, so the bext option is drinking on the way into Stoke before the game. There is, however, a Holiday Inn and a Harvester pub next to the ground. There is also a Power League complex with a bar that admits away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/stoke-city/scores-fixtures"
        } else if teamName == "Sunderland" {
            stationCode = "SUN"
            stadiumLat = 54.9147354
            stadiumLon = -1.3874242
            teamStadiumName = "Stadium of Light"
            teamCarInfo = "Sat Nav Postcode: SR5 1SU\n\nFrom the A19, turn of onto the A1231 (Wessington Way) towards Sunderland. Stay on the A1231 until it becomes Queen's Road (B1289) and then Keir Hardie Way. The ground is on the right. There is a football park and ride at Sunderland Enterprise Park (well signed from the A1231)."
            teamTrainInfo = "Come out of Sunderland Train station and turn left, walk through the pedestrian area to Fawcett Street, turn left and follow this road up to the Wearmouth Bridge. Carry on up North Bridge Street and turn left into Millennium Way, the ground is then straight ahead."
            teamDrinkInfo = "The 'William Jameson' in Sunderland town centre, and two social clubs (The Sunderland Companions Club & New Democratic Club) on North Bridge Stree all admit away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/sunderland/scores-fixtures"
        } else if teamName == "Swansea" {
            stationCode = "SWA"
            stadiumLat = 51.6421561
            stadiumLon = -3.9351185
            teamStadiumName = "Liberty Stadium"
            teamCarInfo = "Sat Nav Postcode: SA1 2FA\n\nFrom the M4 Junction 45 take the A4067 towards Swansea. The ground is on this road after about two miles."
            teamTrainInfo = "Swansea Station is about two miles from the ground so bus or taxi is easiest. To walk come out of the station and walk up the High Street until the Camarthen Road junction, turn right here into Bridge Street which becomes Neath Road. Follow Neath Road up to the ground."
            teamDrinkInfo = "The pubs around the stadium do not admit away fans, so drinking in Swansea city centre before heading to the stadium is the best bet.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/swansea-city/scores-fixtures"
        } else if teamName == "Watford" {
            stationCode = "WFJ"
            stadiumLat = 51.6499300
            stadiumLon = -0.4015600
            teamStadiumName = "Vicarage Road"
            teamCarInfo = "Sat Nav Postcode: WD18 0ER\n\nFrom the M1 Junction 5 take the A4008 towards Watford. At the second roundabout take the A411 into the town past Watford High Street Station. Turn right into Vicarage Road, following signs for Watford General Hospital to the ground."
            teamTrainInfo = "From Watford Junction Station walk up Clarendon Road to the High Street. Turn left and walk along the High Street as far as Market Street, at the end of Market Street turn left and then right into Vicarage Road for the ground."
            teamDrinkInfo = "A good option is Odd Fellows on Fearnley Street. The pub can be seen after walking down Market Street from the town centre. Otherwise drinking in Watford town centre is another option."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/watford/scores-fixtures"
        } else if teamName == "West Brom" {
            stationCode = "THW"
            stadiumLat = 52.5096036
            stadiumLon = -1.9638304
            teamStadiumName = "The Hawthorns"
            teamCarInfo = "Sat Nav Postcode: B71 4LF\n\nLeave the M5 at Junction 1 and take the A41 Birmingham Road towards Sandwell, the ground is on the A41."
            teamTrainInfo = "Take either the train or Metro from Birmingham Moor Street Station to The Hawthorns Station. Leave the station onto Halford's Lane and turn left to the ground."
            teamDrinkInfo = "The pubs around the stadium do not admit away fans.  One option is The Vine, from Junction 1 of the M5 head towards West Bromwich town centre and take the first left into Roebuck Street for the pub.  Another option is The Park Hotel, again just of Junction 1 of the M5.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/west-bromwich-albion/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamStadiumName = "ERROR"
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
    
    //MARK: Leauge One Team Data
    func loadOneTeamData() {
        if teamName == "Barnsley" {
            stationCode = "BNY"
            stadiumLat = 53.5522662
            stadiumLon = -1.4686315
            teamStadiumName = "Oakwell"
            teamCarInfo = "Sat Nav Postcode: S71 1ET\n\nFrom the M1 Junction 37 take the A628 (Dodworth Road) to Barnsley. Stay on the A628 over two roundabouts, and after the second roundabout turn off onto the A628, bering left into Bala Street. Follow this road down to the ground."
            teamTrainInfo = "From Barnsley Station head down to the level crossing on Kendray Street, from here head under the dual-carriageway and take the first left into Bala Street.  Follow Bala Street down to the ground."
            teamDrinkInfo = "The Dove Inn on Doncaster Road is a five minute walk from the ground down Oakwell Lane. Alternatively a few minutes walk from the away end is the Metro Dome, a leisure centre with a bar that serves food and drink.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/barnsley/scores-fixtures"
        } else if teamName == "Blackpool" {
            stationCode = "BPN"
            stadiumLat = 53.8041828
            stadiumLon = -3.0467969
            teamStadiumName = "Bloomfield Road"
            teamCarInfo = "Sat Nav Postcode: FY1 6JJ\n\nFrom M55 Junction 4 turn onto Preston New Road (A583) and follow this road into Blackpool. At the Waterloo Road Junction go straight over into Park Road, and then take the 4th left into Bloomfield Road, following this down to the ground."
            teamTrainInfo = "Blackpool North Station is about 2 miles from the ground. If you want to walk the easiest way is to make your way down to the seafront and walk along towards the pleasure beach. When you reach Lytham Road head inland towards the ground."
            teamDrinkInfo = "The 'No 1 Bar' a working mens club next to the away turnstiles permits away fans for a small fee, otherwise 'The Waterloo' on Waterloo Road is a good option.  There is also a Wetherspoons near Blackpool South Station and plenty of good pubs in Blackpool town centre.\n\nAlcohol is not available in the away areas of the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/blackpool/scores-fixtures"
        } else if teamName == "Bristol Rovers" {
            stationCode = "BRI"
            stadiumLat = 51.4858436
            stadiumLon = -2.5835966
            teamStadiumName = "Memorial Stadium"
            teamCarInfo = "Sat Nav Postcode: BS7 0BF\n\nLeave the M5 at Junction 16 and take the A38 towards Bristol. The Ground is on the A38 in around 5 miles at the Filton Avenue junction."
            teamTrainInfo = "Bristol Parkway Station is to far from the ground to walk, taxi or bus to the ground is the best bet."
            teamDrinkInfo = "The closest pub to the ground is The Queen Victoria, five minutes away on Gloucester Road. Alternatively The Annexe is about ten minutes away on Nevil Road.  Both pubs should admit away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bristol-rovers/scores-fixtures"
        } else if teamName == "Burton Albion" {
            stationCode = "BUT"
            stadiumLat = 52.821462
            stadiumLon = -1.6270024
            teamStadiumName = "Pirelli Stadium"
            teamCarInfo = "Sat Nav Postcode: DE13 0AR\n\nTake the A38 towards Burton, and turn off at the Clay Mills Junction onto the A5121 (Derby Road) towards Burton. Follow the A5121 over the first roundabout and the ground is on the right at the second roundabout."
            teamTrainInfo = "Exit Burton Station and turn left down the hill, taking a left onto Derby Street. Carry on all the way along Derby Street, past the junction on the left with the A511 until the roundabout with the junction with Princess Way for the ground."
            teamDrinkInfo = "The closest pub to the ground is The Beech Inn, which is on Derby Road ten minutes away in the opposite direction to the Town Centre. There are also several pubs around the station that normally admit away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/burton-albion/scores-fixtures"
        } else if teamName == "Bolton" {
            stationCode = "HWI"
            stadiumLat = 53.5807096
            stadiumLon = -2.5366891
            teamStadiumName = "University of Bolton Stadium"
            teamCarInfo = "Sat Nav Postcode: BL6 6JW\n\nLeave the M61 at Junction 6 and follow the signs to the ground. The ground is clearly visible when you come off the M61."
            teamTrainInfo = "Horwich Parkway Station is served by regular trains from Bolton, the ground is clearly visible from the station."
            teamDrinkInfo = "Most of the pubs on the retail park near the ground are for home fans only, with the exception of the Beehive Pub. As an alternative about a 10 minute walk from the ground there is the Bromilow Arms. Drive past the ground on the A6027 and turn right into Lostock Lane for the pub.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bolton-wanderers/scores-fixtures"
        } else if teamName == "Cambridge Utd" {
            stationCode = "CBG"
            stadiumLat = 52.2121000
            stadiumLon = 0.1541300
            teamStadiumName = "Abbey Stadium"
            teamCarInfo = "Sat Nav Postcode: CB5 8LN\n\nLeave the A14 at Junction 34 and take the B1047 towards Fen Ditton. Follow the B1047 through Fen Ditton until you reach the junction with the A1303 (Newmarket Road), turn right onto the A1303 and follow this road until you reach the ground on the left hand side."
            teamTrainInfo = "Cambridge Station is about two miles from the ground so the best bet is either a taxi or the C3 Bus.\n\nTo walk exit the station and turn right heading towards the footbridge. Continue walking down Devonshire Road, crossing over Mill Road into Kingston Street. Walk down Kingston Street to the end and turn right into Hooper Street, and then left into Ainsworth Street. Continue down Ainsworth Street, into York Street. Take the first left into Henley Road and continue walking alongside the retail park. At B&Q you should join Newmarket Road, continue right along Newmarket Road and the ground is round the corner on the right hand side."
            teamDrinkInfo = "There is a supporters club at the ground which sometimes allows entry to away fans, otherwise there is not really anything near the ground. The best bet is to drink in Cambridge City Centre before heading out the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/cambridge-united/scores-fixtures"
        } else if teamName == "Carlisle Utd" {
            stationCode = "CAR"
            stadiumLat = 54.8958163
            stadiumLon = -2.9144752
            teamStadiumName = "Brunton Park"
            teamCarInfo = "Sat Nav Postcode: CA1 1LL\n\nLeave the M6 at Junction 43 and take the A69 towards Carlisle. The ground is on the A69, fifth right after the golf course."
            teamTrainInfo = "From Carlisle Station leave from the main entrance and follow Ct Square round to Warwick Road. Then follow Warwick Road to the ground."
            teamDrinkInfo = "There is a bar at Carlisle Rugby Club, next to the ground, which allows away fans. Another option is the Beehive, on Warwick Road, although for some games away fans are not admitted."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/carlisle-united/scores-fixtures"
        } else if teamName == "Charlton Athletic" {
            stationCode = "CTN"
            stadiumLat = 51.486687
            stadiumLon = 0.0358469
            teamStadiumName = "The Valley"
            teamCarInfo = "Sat Nav Postcode: SE7 8BL\n\nLeave the M25 at Junction 2 and take the A2 towards London. At the junction with Shooters Hill Road go straight over the roundabout onto the A102 towards the Blackwall Tunnel. At the A206 (Woolwich Road) turn right onto the A206 and then after passing Macro turn right again into Charlton Church Lane, then left into Floyd Road for the ground."
            teamTrainInfo = "From Charlton Station turn left down Charlton Church Lane, then left into Floyd Road for the ground."
            teamDrinkInfo = "The traditional away pub is The Antigallican, opposite Charlton Railway Station. A better option is to drink around London Bridge before getting the train out to Charlton.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/charlton-athletic/scores-fixtures"
        } else if teamName == "Cheltenham Town" {
            stationCode = "CNM"
            stadiumLat = 51.9055762
            stadiumLon = -2.0620928
            teamStadiumName = "Jonny-Rocks Stadium"
            teamCarInfo = "Sat Nav Postcode: GL52 5NA\n\nLeave the M5 at junction 10 and take the A4019 towards Cheltenham. Keep straight on through the traffic lights, and at the large roundabout turn left. Continue up this road going over a double mini roundabout. After about 300 yards turn right into Swindon Lane. Go over the level crossing and the next roundabout, passing the race course. Turn right into Albert Road and at the roundabout turn left into Prestbury Road. Then turn right into Whaddon Road for the ground."
            teamTrainInfo = "Cheltenham Station is over 2 miles away so taxi is the easiest way of getting to the ground."
            teamDrinkInfo = "The best options for away fans are the Sudeley Arms or The Conservatory, both about a ten minute walk away on Prestbury Road."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/cheltenham-town/scores-fixtures"
        } else if teamName == "Derby County" {
            stationCode = "DBY"
            stadiumLat = 52.9146511
            stadiumLon = -1.448016
            teamStadiumName = "Pride Park"
            teamCarInfo = "Sat Nav Postcode: DE24 8XL\n\nFrom the M1 Junction 25 take the A52 towards Derby. Follow the signs to Pride Park, turning off onto Wyvern Way. At the roundabout go straight over into Derwent Parade, the ground is on the right."
            teamTrainInfo = "From Derby Station exit towards the retail park onto Roundhouse Road, go straight over the roundabout into Riverside Road and follow this to the ground."
            teamDrinkInfo = "There is a Harvester on the retail park between the Station and the ground. Other popular away pubs include the Navigation Inn on London Road, a couple of pubs on the road outside the main entrance to the railway station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/derby-county/scores-fixtures"
        } else if teamName == "Exeter City" {
            stationCode = "SJP"
            stadiumLat = 50.7297825
            stadiumLon = -3.5209573
            teamStadiumName = "St James Park"
            teamCarInfo = "Sat Nav Postcode: EX4 6PX\n\nLeave the M5 at Junction 30 and take the second exit at the Middlemoor roundabout (signed Heavitree). Follow signs towards the city centre, passing through Heavitree, for around 2 miles. After the police station turn right at the roundabout onto Western Way (signposted Pinhoe and Broadclyst). At the next roundabout, take the second exit into Old Tiverton Road and then take the second left into Stadium Way."
            teamTrainInfo = "St James Park Station is right next to the ground."
            teamDrinkInfo = "Closest to the ground there is a Social Club, or on Well Street there is the Wells Tavern, both admits away fans. Alternatively there are plenty of pubs in the City Centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/exeter-city/scores-fixtures"
        } else if teamName == "Fleetwood" {
            stationCode = "PFY"
            stadiumLat = 53.91651
            stadiumLon = -3.02478
            teamStadiumName = "Highbury Stadium"
            teamCarInfo = "Sat Nav Postcode: FY7 6TX\n\nTake the M55 towards Blackpool and leave at Junction 3 onto the A585 towards Fleetwood. On the edge of Fleetwood go straight over the roundabout by the Blackpool and Fylde college, and after the roundabout take the first left into Copse Road. After passing the Fire Station keep left and then turn left into Radcliffe Road, then take the next right into Stanley Road. The ground is at the bottom of Stanley Road."
            teamTrainInfo = "The nearest railway station is Poulton-le-Fylde over five miles away, however, there are local buses to Fleetwood that run from outside the station. Another option is get the train to Blackpool and then catch a bus, or the tram along the seafront, to Fleetwood."
            teamDrinkInfo = "At the ground both Jim's Sports Bar and the Highbury Club do not admit visiting supporters. The closest pub is the Queens Hotel on Poulton Road.  Walk up Highbury Avenue and turn left at St Nicholas church into Poulton Road. Alternatively there are plenty of pubs in the centre of Fleetwood.\n\nAlcohol is also available inside the stadium, if your tickets are for the Parkside Stand."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/fleetwood-town/scores-fixtures"
        } else if teamName == "Leyton Orient" {
            stationCode = "SRA"
            stadiumLat = 51.5602116
            stadiumLon = -0.0118855
            teamStadiumName = "Breyer Group Stadium"
            teamCarInfo = "Sat Nav Postcode: E10 5NF\n\nLeave the M25 at junction 27 and take the M11 southbound.  At the end of the M11, bear right (A406 N. Circ. Rd West, London N and W) onto the North Circular Road.  Keep in left hand lanes and take first exit (signposted Walthamstow and City A104).  At the roundabout turn left into Woodford New Road (A104). At next roundabout take 2nd exit and follow road round to left into Lea Bridge Road.  After 0.5 miles turn left at lights into Leyton Green Road.  Filter left after 0.3 miles and turn left at the T-junction into Leyton High Road.  After 1.2 miles ground is on the right down Buckingham Road."
            teamTrainInfo = "Take the Central Line to Leyton Tube Station.  Exit the station and turn right onto the High Road Leyton.  Walk up the High Road and then take the seventh left into Buckingham Road for the ground.  The nearest National Rail Station is Stratford, where you can change to the Central Line."
            teamDrinkInfo = "The supporters club at the ground (in the West Stand) admits away fans.  The nearest pub to the ground is the Coach & Horses, on Leyton High Road.  Turn right out of the tube station and walk along the High Road (past the turning for the ground) for about half a mile."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leyton-orient/scores-fixtures"
        } else if teamName == "Lincoln City" {
            stationCode = "LCN"
            stadiumLat = 53.2181763
            stadiumLon = -0.540056
            teamStadiumName = "LNER Stadium"
            teamCarInfo = "Sat Nav Postcode: LN5 8LD\n\nLeave the A1 at Newark and take the A46 towards Lincoln. Once on the A46, at the Hykeham Roundabout, take the A1434 (Lincoln South). Follow the A1434 (Newark Road) until it becomes the A15. At the next roundabout go straight over into the High Street, and then take the ninth right into Scorer Street. Finally take the first right into Sincil Bank for the ground."
            teamTrainInfo = "Exit Lincoln Central Station and turn left, then left again at the main road (High Street). Go over the level crossing and walk down the High Street, take the seventh turning onto Scorer Street and then the first right into Sincil Bank for the ground."
            teamDrinkInfo = "The are plenty of pubs and food outlets on Lincoln High Street with the Golden Eagle and the Hop and Barley good bets. There are also plenty of options at the Lincoln Marina development not far from the Railway Station."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/lincoln-city/scores-fixtures"
        } else if teamName == "Northampton Town" {
            stationCode = "NMP"
            stadiumLat = 52.235099
            stadiumLon = -0.9342712
            teamStadiumName = "PTS Academy Stadium"
            teamCarInfo = "Sat Nav Postcode: NN5 5QA\n\nLeave the M1 at Junction 15A and take the A43 towards Northampton. Once on the A43 go over two roundabouts and at the third roundabout turn right into Edgar Mobbs Way for the ground."
            teamTrainInfo = "Exit Northampton Station and cross the car park to St Andrew's Road and turn right walking down to Black Lion Hill. Turn right onto Black Lion Hill, which becomes St James Road. After HSS Hire turn left into St James Mill Road, and then right into Harvey Reeves Road, which becomes Edgar Mobbs Way. Follow Edgar Mobbs Way to the ground."
            teamDrinkInfo = "There are a few options on the complex the stadium is based, although The Magic Tower and The Sixfields Tavern don't generally admit away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/northampton-town/scores-fixtures"
        } else if teamName == "Oxford Utd" {
            stationCode = "OXF"
            stadiumLat = 51.7175536
            stadiumLon = -1.2112956
            teamStadiumName = "Kassam Stadium"
            teamCarInfo = "Sat Nav Postcode: OX4 4XP\n\nFrom the A423 Ring Road take the A4074 towards Reading. Take the first left into Grenoble Road, over three roundabouts to the ground."
            teamTrainInfo = "Oxford Station is over 4 miles away so take either the Football Special bus service or a taxi to the ground."
            teamDrinkInfo = "There are no pubs near the ground, but alcohol is available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/oxford-united/scores-fixtures"
        } else if teamName == "Peterborough Utd" {
            stationCode = "PBO"
            stadiumLat = 52.5652665
            stadiumLon = -0.2403379
            teamStadiumName = "Weston Homes Stadium"
            teamCarInfo = "Sat Nav Postcode: PE2 8AL\n\nLeave the A1 following signs for Peterborough (A1139) Fletton Parkway. Leave the Fletton Parkway at junction 3 and at the roundabout turn left onto the A1260 Nene Parkway. Take the first exit and at the roundabout turn right into Shrewsbury Avenue. At the t-junction after half a mile turn right into the A605 Oundle Road. The ground is on the right after a mile."
            teamTrainInfo = "From Peterborough Station walk down Station Road to Bourges Blvd. Turn right on Bourges Blvd and follow this road round past the Rivergate Shopping Centre. Turn right onto Bridge Street, cross the river and follow London Road to the ground."
            teamDrinkInfo = "Near the railway station, on Westgate, is the Brewery Tap. Other options include 'The Cherry Tree' and the 'Palmerston Arms', both on Oundle Road.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/peterborough-united/scores-fixtures"
        } else if teamName == "Port Vale" {
            stationCode = "SOT"
            stadiumLat = 53.0503903
            stadiumLon = -2.1916971
            teamStadiumName = "Vale Park"
            teamCarInfo = "Sat Nav Postcode: ST6 1AW\n\nLeave the M6 at Junction 16 (from the north) or Junction 15 (from the south) and join the A500. Stay on this road until the exit for Tunstall (A527). At the next roundabout turn right towards Burslem and follow this road uphill crossing a mini roundabout until you reach the traffic lights in the centre of the town. Go straight on and bear left into Hamil Road, the ground is on the left."
            teamTrainInfo = "Stoke Station is over four miles from the ground so taxi is the easiest way to the ground."
            teamDrinkInfo = "The main away fans pub is The Vine on Hamil Road. Otherwise the town centre is only about ten minutes away, with plenty of pubs fine for away fans."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/port-vale/scores-fixtures"
        } else if teamName == "Portsmouth" {
            stationCode = "FTN"
            stadiumLat = 50.7959228
            stadiumLon = -1.0648815
            teamStadiumName = "Fratton Park"
            teamCarInfo = "Sat Nav Postcode: PO4 8RA\n\nFrom the A27 turn off onto the A2030 (Eastern Road). Follow the A2030 right to the end and turn left into the A288 (Milton Road), then take the next right into Priory Crescent, and finally the third right into Carisbrooke Road for the ground."
            teamTrainInfo = "From Fratton Station exit onto Goldsmith Avenue, walk past the station complex, go straight over the roundabout and take the next left into Frogmore Road for the ground.\n\n"
            teamDrinkInfo = "The Brewers Arms on the A288 is popular with away fans, but many of the other pubs near the ground are best avoided. Otherwise the best bet is to drink in Portsmouth City Centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/portsmouth/scores-fixtures"
        } else if teamName == "Reading" {
            stationCode = "RDG"
            stadiumLat = 51.4223249
            stadiumLon = -0.9834968
            teamStadiumName = "Madejski Stadium"
            teamCarInfo = "Sat Nav Postcode: RG2 0FL\n\nFrom the M4 Junction 11 take the A33 (Reading Relief Road) towards Reading, turning off the A33 into Hurst Road for the ground."
            teamTrainInfo = "From Reading Station take the Football Special bus to the ground, come out of the station cross the road and turn right for the bus stop."
            teamDrinkInfo = "There are no pubs near to the ground, so if arriving by train then drink in the town centre by the railway station before getting the buses out to the stadium.  There is also a Holiday Inn and pub called Calaghans about fifteen minutes walk from the ground on Imperial Way.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/reading/scores-fixtures"
        } else if teamName == "Shrewsbury Town" {
            stationCode = "SHR"
            stadiumLat = 52.6884899
            stadiumLon = -2.7484126
            teamStadiumName = "Montgomery Waters Meadow"
            teamCarInfo = "Sat Nav Postcode: SY2 6ST\n\nAt the end of the M54 continue onto the A5 and at the junction with the A49 bear left, staying on the A5. At the next roundabout take the 3rd exit into the B4380 (Thieves Lane). Continue along Thieves Lane going straight over two roundabouts into Oteley Road for the ground."
            teamTrainInfo = "Shrewsbury Station is over 2 miles from the ground so taxi is the best option."
            teamDrinkInfo = "There are two pubs both about ten minutes walk from the ground, The Charles Darwin and The Brooklands Hotel. The Charles Darwin is right from the ground along Oteley Road, then second left into Sutton Road. The Brooklands Hotel is left from the ground along Oteley Road, left into Roman Road, and then left into Mill Street.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/shrewsbury-town/scores-fixtures"
        } else if teamName == "Stevenage" {
            stationCode = "SVG"
            stadiumLat = 51.8897477
            stadiumLon = -0.1920352
            teamStadiumName = "Lamex Stadium"
            teamCarInfo = "Sat Nav Postcode: SG2 8RH\n\nLeave the A1 at Junction 7 and take the A602 towards Stevenage. Go straight across the next two roundabouts and the ground is on the left."
            teamTrainInfo = "Exit Stevenage Station towards Stevenage Lesure Centre and head south down Lytton Way. At the first roundabout go straight over and then at the second roundabout take the second exit onto Monkswood Way. Follow Monkswood Way to the next roundabout for the ground."
            teamDrinkInfo = "The only really option near the ground is the Club House bar behind the South Stand. Otherwise there are pubs in the town centre, only a 15 to 20 minute walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/stevenage/scores-fixtures"
        } else if teamName == "Wigan" {
            stationCode = "WGW"
            stadiumLat = 53.5471948
            stadiumLon = -2.6545159
            teamStadiumName = "DW Stadium"
            teamCarInfo = "Sat Nav Postcode: WN5 0UZ\n\nLeave the M6 at Junction 26 and take the A449 towards Wigan town centre, after the junction with the A49 then turn left into Robin Park Road, after Pizza Hut turn left into Anjou Blvd for the ground."
            teamTrainInfo = "On leaving either Wigan North or Wallgate Station, head for Wallgate and follow this road out of Wigan, after crossing the canal and the railway turn right into Stadium Way and follow this round to the ground."
            teamDrinkInfo = "The traditional away pub is the Red Robin opposite the cinema complex near the ground. There is also often a large Marquee next to the away turnstiles holding a bar for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/wigan-athletic/scores-fixtures"
        } else if teamName == "Wycombe Wanderers" {
            stationCode = "HWY"
            stadiumLat = 51.6311336
            stadiumLon = -0.7972369
            teamStadiumName = "Adams Park"
            teamCarInfo = "Sat Nav Postcode: HP12 4HJ\n\nLeave the M40 at junction 4 and take the A4010 (signposted Aylesbury). Go straight over the next three roundabouts into New Road and continue down the hill towards two mini roundabouts. At the first mini roundabout turn left and then at the next mini roundabout turn right into Hillbottom Road for the ground."
            teamTrainInfo = "Wycombe Station is about 3 miles from the ground so a taxi is the best bet to the ground."
            teamDrinkInfo = "There are no pubs near the ground. The closest is the Hourglass in Sands, a 15 minutes walk away. The supporters club at the ground also admits away fans for a fee if you get there early enough."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/wycombe-wanderers/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamStadiumName = "ERROR"
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
    
    // MARK: Leauge Two Team Data
    func loadTwoTeamData() {
        if teamName == "AFC Wimbledon" {
            stationCode = "HYR"
            stadiumLat = 51.431547
            stadiumLon = -0.186599
            teamStadiumName = "Plough Lane"
            teamCarInfo = "Sat Nav Postcode: SW17 0NR\n\nLeave the M25 at Junction 10 and take the A3 towards London. Turn off the A3 at New Malden onto the A298 towards Wimbledon. Continue on the A298 for half a mile and then turn left onto Grand Drive, go past Raynes Park Station and then turn left onto the A238 and then first right onto Worple Road. Continue straight on and at the roundabout take the third exit onto Francis Grove, which becomes St Georges Road.  At the roundabout at the end take the second exit onto the B235.  Continue on the B235, over the river and past Wickes and Lidl, turn left at the next roundabout onto Summerstown and then first left onto Riverside Road, the ground is on the left down New Stadium Road."
            teamTrainInfo = "The nearest station to Plough Lane is Haydons Road, with Thameslink trains from Wimbledon or London St Pancreas. On leaving the station walk up the steps to Haydons Road and turn right. Head north on Haydons Road until you reach the junction with Gap Road and Plough Lane. Turn right onto Plough Lane and continue walking, over the river, until you reach Lidl. The ground is on the left behind the blocks of new apartments."
            teamDrinkInfo = "The nearest pub to the ground is the Corner Pin, on the corner of Summertown and Riverside Road. There are also plenty of pubs near Wimbledon Railway Station."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/afc-wimbledon/scores-fixtures"
        } else if teamName == "Accrington Stanley" {
            stationCode = "ACR"
            stadiumLat = 53.7645074
            stadiumLon = -2.3704834
            teamStadiumName = "Wham Stadium"
            teamCarInfo = "Sat Nav Postcode: BB5 5BX\n\nLeave the M65 at Junction 7, taking the Clitheroe turn off at the roundabout. Turn right at the first set of traffic lights, following the A678.  Continue over the canal bridge to the next set of traffic lights.  Turn right taking the A680 towards Accrington. Carry straight on at the next set of lights, following the road as it bends to the right and then take the first left after the Crown pub into Livingstone Road for the ground."
            teamTrainInfo = "Exit Accrington Station and head towards Blackburn Road. Continue into King Street and then turn left towards Milnshaw Lane. At the roundabout take the 4th exit into Milnshaw Lane, and at the end turn left into Whalley Road. After half a mile turn right into Livingstone Road for the ground."
            teamDrinkInfo = "The Crown on Whalley Road admits both home and away fans, or further down Whalley Road (towards the M65) is The Greyhound."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/accrington-stanley/scores-fixtures"
        } else if teamName == "Bradford City" {
            stationCode = "BDI"
            stadiumLat = 53.8035782
            stadiumLon = -1.7594818
            teamStadiumName = "Utilita Energy Stadium"
            teamCarInfo = "Sat Nav Postcode: BD8 7DY\n\nTake the M606 towards Bradford and at end of motorway take the middle or right hand lane, follow signs for Ring Road East onto Rooley Lane. Head over the traffic lights by Asda and turn left at the roundabout into Wakefield Road. Go over two roundabouts on to the A6037 (Shipley Airedale Road). After the Tesco store on the left go over traffic lights and turn left into the A6177 (Station Road) and left again into Queens Road. Head up the hill to third set of traffic lights and turn left into Manningham Lane. After the Petrol Station on the left take first left into Valley Parade for the ground."
            teamTrainInfo = "Exit Bradford Interchange Station and head onto Bridge St. Cross over Hall Ings, staying on Bridge Street, turning right into Tyrrel Street and then left into Bank Street. Continue straight on into Darley Street and then North Parade. At the end turn right into Hamm Strasse and then left into Midland Road. Follow Midland Road up to the ground."
            teamDrinkInfo = "The Bradford Arms on Manningham Lane admits away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/bradford-city/scores-fixtures"
        } else if teamName == "Barrow" {
            stationCode = "BIF"
            stadiumLat = 54.12330
            stadiumLon = -3.23494
            teamStadiumName = "The Dunes Hotel Stadium"
            teamCarInfo = "Sat Nav Postcode: LA14 5UW\n\nLeave the M6 at Junction 36 and take the A590 towards Barrow-in-Furness. As you enter Barrow you pass a Fire Station on the right. Turn left into Wilkie Road and then right into Holker Street for the ground. There is plenty of street parking near the ground."
            teamTrainInfo = "Exit Barrow-in-Furness Station and follow the small station entrance road onto Holker Street.  The ground is around a mile away further up Holker Street."
            teamDrinkInfo = "Barrow has a Club House bar called Crossbar, which is open to away supporters. There is also a pub, Soccer Bar, right next to the ground. Further afield if you go along the A590 towards the Town Centre there is a Hungry Horse chain pub and a retail park with several chain fast food outlets."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/barrow/scores-fixtures"
        } else if teamName == "Colchester Utd" {
            stationCode = "COL"
            stadiumLat = 51.923364
            stadiumLon = 0.896093
            teamStadiumName = "JobServe Stadium"
            teamCarInfo = "Sat Nav Postcode: CO4 5UP\n\nLeave the A12 at Junction 28, the ground is next to the A12 on United Way."
            teamTrainInfo = "Colchester Station is over two miles away so taxi is the easiest way of getting to the ground."
            teamDrinkInfo = "There are no pubs near the ground which admit away fans, so a better option is to drink in Colchester town centre before heading out to the stadium.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/colchester-united/scores-fixtures"
        } else if teamName == "Crawley Town" {
            stationCode = "CRW"
            stadiumLat = 51.099568
            stadiumLon = -0.1953945
            teamStadiumName = "Peoples Pension Stadium"
            teamCarInfo = "Sat Nav Postcode: RH11 9RX\n\nLeave the M23 at Junction 11 and take the A23 towards Crawley. Once on the A23 at the next roundabout take the first left onto Coachmans Drive for the ground."
            teamTrainInfo = "Crawley Station is a half hour walk away. Exit the station onto Station Way and at the end turn left onto Brighton Road. After half a mile turn left onto Southgate Drive and then right onto Barrington Road. Next turn right onto Wakehurst Drive and then left into Tyler Road. At the end turn right onto Southgate Avenue. Walk down Southgate Avenue to the roundabout for the ground."
            teamDrinkInfo = "The closest pub to the ground is the Half Moon, on Brighton Road about five minutes walk from the ground. Alternatively further down Brighton Road, into Wakehurst Drive is the Downsman."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/crawley-town/scores-fixtures"
        } else if teamName == "Crewe Alexandra" {
            stationCode = "CRE"
            stadiumLat = 53.0879308
            stadiumLon = -2.4361022
            teamStadiumName = "Alexandra Stadium"
            teamCarInfo = "Sat Nav Postcode: CW2 6EB\n\nLeave the M6 at Junction 16 and take the A5020 towards Crewe. Once in Crewe, at the roundabout junction with the A534 (Nantwich Road) turn left. Once past the Station turn left into Gresty Road for the ground."
            teamTrainInfo = "Exit Crewe Station and turn left, then take the first left into Gresty Road for the ground."
            teamDrinkInfo = "The best option is the Royal Hotel on Nantwich Road, which has separate bars for home and away fans. There are several other pubs on Nantwich Road."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/crewe-alexandra/scores-fixtures"
        } else if teamName == "Doncaster Rovers" {
            stationCode = "DON"
            stadiumLat = 53.5097718
            stadiumLon = -1.1129534
            teamStadiumName = "Keepmoat Stadium"
            teamCarInfo = "Sat Nav Postcode: DN4 5JW\n\nFrom the M18 Junction 3 take the A6182 (White Rose Way) towards Doncaster, go straight over the next two roundabouts into Wilmington Drive. At the next roundabout turn left and follow this road to the ground."
            teamTrainInfo = "From Doncaster Station the easiest way to the ground is by Shuttle bus from Doncaster Interchange bus station or taxi. To walk come out of the station onto Trafford Way, turn left and keep walking down this road until you reach the Keepmoat Complex."
            teamDrinkInfo = "Really the only choice near the ground is 'The Lakeside' Beefeater pub on Stadium Way or 'The Toad Brewery' also on Stadium Way.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/doncaster-rovers/scores-fixtures"
        } else if teamName == "Forest Green Rovers" {
            stationCode = "STD"
            stadiumLat = 51.699104
            stadiumLon = -2.237933
            teamStadiumName = "The New Lawn"
            teamCarInfo = "Sat Nav Postcode: GL6 0ET\n\nForest Green Rovers play in the town of Nailsworth. Take the A46 Bath Road into Nailsworth and turn onto Spring Hill following the sign to Forest Green. Spring Hill becomes Nympsfield Road, go over the first roundabout and then turn left at the second roundabout onto Another Way for the ground. There is plenty of on street parking in the area.  Another option is to use the Club Park and Ride, this can be found on the A46 Stroud Road at Renishaw plc."
            teamTrainInfo = "The nearest railway station is Stroud, well over five miles away so a taxi will be your best bet. You can also get the Number 63 Bus from Stroud to Nailsworth."
            teamDrinkInfo = "The club sometimes set up a small marquee serving drinks near the away turnstiles. The George on Newmarket Road is the closest to the ground, otherwise there are several pubs in the centre of Nailsworth."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/forest-green-rovers/scores-fixtures"
        } else if teamName == "Gillingham" {
            stationCode = "GLM"
            stadiumLat = 51.3848726
            stadiumLon = 0.5597597
            teamStadiumName = "Priestfield"
            teamCarInfo = "Sat Nav Postcode: ME7 4DD\n\nLeave the M2 at junction 4 and take the A278 towards Gillingham. At the third roundabout take a left on to the A2. When you reach the junction with the A231, turn right into Nelson Road, go past the bus station and then turn right into Gillingham Road for the ground."
            teamTrainInfo = "Exit Gillingham Station, turn left into Balmoral Road. At the end of the road go straight over into Priestfield Road, the ground is at the top Priestfield Road."
            teamDrinkInfo = "The traditional away pub is the Livingstone Arms, on Gillingham Road close to the away end. Otherwise there are plenty of pubs in the town centre, which is only a short walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/gillingham/scores-fixtures"
        } else if teamName == "Grimsby Town" {
            stationCode = "CLE"
            stadiumLat = 53.570247
            stadiumLon = -0.046709
            teamStadiumName = "Blundell Park"
            teamCarInfo = "Sat Nav Postcode: DN35 7PY\n\nFrom the North take the M180 to Grimsby, and continue onto the A180, once in Grimsby stay on the A180 and follow the signs to Cleethorpes. When you reach the Blundell Park Hotel turn left into Imperial Avenue for the ground.\n\nFrom the south take the A1 North and exit  onto the A46 to Lincoln and onto Grimsby. Stay on the A46 until it becomes Clee Road and at the roundabout turn left onto the A180. Continue on the A180 until you reach the Blundell Park Hotel and then turn right into Imperial Avenue for the ground.\n\nThere is plenty of on street parking in the area."
            teamTrainInfo = "Take the train to Cleethorpes and exit the station facing the sea. Turing left, walk along the seafront and just before you reach the ground there is a footbridge over the railway line, once over the railway turn right into Harrington Street and then left into Neville Street for the ground."
            teamDrinkInfo = "The Blundell Park Hotel is the closest pub to the ground. There are also a number of pubs along the seafront if you are walking from Cleethorpes railway station."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/grimsby-town/scores-fixtures"
        } else if teamName == "Harrogate Town" {
            stationCode = "HGT"
            stadiumLat = 53.99173
            stadiumLon = -1.51448
            teamStadiumName = "CNG Stadium"
            teamCarInfo = "Sat Nav Postcode: HG2 7SA\n\nLeave the A1(M) at Junction 47 and take the A59 towards Knaresborough. Turn onto the A658 towards Bradford and Harrogate, at the second roundabout turn right onto the A661 towards Harrogate. You will pass a Supermarket and then after the traffic lights the entrance to the ground is a bit further down on the right."
            teamTrainInfo = "Exit Harrogate Station and turn right, away from the shopping centre. Turn left and go over Station Bridge, and at the roundabout walk straight over into Station Avenue. Follow Station Avenue into North Park Road, which then becomes Knaresborough Road. Cross Knaresborough Road and then walk through the park called The Stray diagonally joining up with Wetherby Road. The ground is on Wetherby Road on the left-hand side."
            teamDrinkInfo = "There is a Club House inside the ground which admits away fans unless segregation is in force. Otherwise, the nearest pub is the Woodlands, a short distance back down the A661 Wetherby Road heading away from town. Harrogate town centre is around a 20-minute walk away, with plenty of pubs including a Wetherspoons."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/harrogate-town/scores-fixtures"
        } else if teamName == "MK Dons" {
            stationCode = "BLY"
            stadiumLat = 52.0093942
            stadiumLon = -0.7328938
            teamStadiumName = "Stadium MK"
            teamCarInfo = "Sat Nav Postcode: MK1 1ST\n\nLeave the M1 at junction 14 towards central Milton Keynes. At the first roundabout take the third exit H6 (Portway), follow this straight over the next 9 roundabouts, past the city centre and the old Hockey Stadium ground. At the next roundabout take the first left onto the A5, take this road until the next junction. Get in the right-hand lane and take the fourth turning, V6 (Grafton Street) and turn left at the traffic lights for the ground."
            teamTrainInfo = "From Bletchley Station exit onto Buckingham Road. Turn left onto Buckingham Road and cross over the railway line. At the roundabout continue straight on into Saxon Street, following Saxon Street over four roundabouts to the ground."
            teamDrinkInfo = "The closest pub to the ground is the Inn on the Lake. From the ground walk down Dawson Road, turning right at the end into Bond Avenue for the pub.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/milton-keynes-dons/scores-fixtures"
        } else if teamName == "Mansfield Town" {
            stationCode = "MFT"
            stadiumLat = 53.1380700
            stadiumLon = -1.2007600
            teamStadiumName = "One Call Stadium"
            teamCarInfo = "Sat Nav Postcode: NG18 5DA\n\nLeave the M1 at Junction 28 and follow the A38 towards Mansfield. At Kings Mill Hospital turn right staying on the A38, and at the end turn right onto the A6009 Portland Street. Continue straight on, under the railway bridge, the ground is on the right down Quarry Lane."
            teamTrainInfo = "Exit Mansfield Station onto Station Road and turn left towards the A6009 (Portland Street) Dual Carriageway. Turn left and walk down Portland Street the under the railway bridge. Continue straight on over the junction with St Peter's Way. The ground is on the right down Quarry Lane."
            teamDrinkInfo = "The pubs in the town centre are best avoided by away fans. The Sandy Pate at the ground admits away fans, or there are several pubs on the A38 between the M1 and Mansfield town centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/mansfield-town/scores-fixtures"
        } else if teamName == "Morecambe" {
            stationCode = "MCM"
            stadiumLat = 54.061180
            stadiumLon = -2.866935
            teamStadiumName = "Globe Arena"
            teamCarInfo = "Sat Nav Postcode: LA4 4TB\n\nLeave the M6 at Junction 34 and follow signs to Morecambe. Cross the River Lune in the left hand lane and continue following signs for Morecambe onto the A589. At the first two roundabouts carry straight on, and at the third roundabout turn left and continue along Westgate for about a mile.  The ground is on the right after passing the Fire Station."
            teamTrainInfo = "Exit Morecambe Station and walk down station approach to Central Drive. Take the next right into Billy Hill and then right again onto West End Road. Walk down West End Road and bear left into Acre Moss Lane, which becomes Buckingham Road. Finally turn left into Westgate and the ground is down here on the left."
            teamDrinkInfo = "The closest pub to the ground for away fans is at the Regent Leisure Holiday Park, turning right from the ground a few minutes walk along Westgate. Alternatively there are plenty of pubs down on the seafront, about a fifteen minute walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/morecambe/scores-fixtures"
        } else if teamName == "Newport County" {
            stationCode = "NWP"
            stadiumLat = 51.5882700
            stadiumLon = -2.9879900
            teamStadiumName = "Rodney Parade"
            teamCarInfo = "Sat Nav Postcode: NP19 0UU\n\nLeave the M4 at Junction 26 and take the A4051 into Newport. Continue under the A4042 until you reach a large roundabout, and take the second exit keeping in the filter lane following signs for the City Centre and the Railway Station. At the next roundabout take the first exit onto the B4591 across the river Usk. Bear right at the traffic lights into Chepstow Road and take the first right into Corporation Road. Take the second right into Grafton Road and then left at the end onto Rodney Street, the ground is on the left."
            teamTrainInfo = "Exit Newport Station and turn left onto Queensway, continuing along Queensway to the roundabout. Take the pedestrian underpass under the roundabout and head towards the bridge over the river Usk.  Cross the river and take the first right into Rodney Road. The ground is along Rodney Road on the left."
            teamDrinkInfo = "The closest place to the ground for away fans is the clubhouse at the ground, which admits away fans. Other than that there is a Wetherspoons, The Godfrey Morgan, on Chepstow Road or several pubs in the centre of Newport."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/newport-county/scores-fixtures"
        } else if teamName == "Notts County" {
            stationCode = "NOT"
            stadiumLat = 52.94224
            stadiumLon = -1.13610
            teamStadiumName = "Meadow Lane"
            teamCarInfo = "Sat Nav Postcode: NG2 3HJ\n\nFrom the M1 Junction 24 take the A453 towards Nottingham. Just before the A52 junction turn off the A453 onto the B679 (Clifton Lane). Follow the B679 to the end and turn left onto the A60 (Loughborough Road). Continue over the river, driving past the ground, and turn right into the A6011 (County Road) for the ground."
            teamTrainInfo = "From Nottingham Station turn onto Queens Road, and the right onto London Road. Follow London Road south and take the first left into County Road for the ground."
            teamDrinkInfo = "The Globe on London Road is a good choice, as is the Southbank, across Trent Bridge. Alternatively, there are plenty of pubs in Nottingham City Centre.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/notts-county/scores-fixtures"
        } else if teamName == "Salford City" {
            stationCode = "MAN"
            stadiumLat = 53.51363
            stadiumLon = -2.27674
            teamStadiumName = "Peninsula Stadium"
            teamCarInfo = "Sat Nav Postcode: M7 3PZ\n\nThe ground is not located in Salford, but in nearby Kersal.\nLeave the M60 at Junction 17 and take the A56 towards Manchester City Centre. Continue along the A56 and after passing a Lidl on the left take the third turning on the right at the traffic lights (signposted Oaklands Hall) into Moor Lane. Take the next left into Nevile Road and you will reach the ground down on the right after the school."
            teamTrainInfo = "Salford is not great to get to by train.  The closest stations are around three miles away. The best bet is to take the train to Manchester and then get a Taxi or the Bus (97 or 98) from the City Centre. The 97 or 98 Bus to Bury stops at the end of Moor Lane, for a short walk to the ground."
            teamDrinkInfo = "The Fairways Lodge on George Street in Prestwich is the closest pub, with not many other options near the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/salford-city/scores-fixtures"
        } else if teamName == "Stockport County" {
            stationCode = "SPT"
            stadiumLat = 53.39992
            stadiumLon = -2.16712
            teamStadiumName = "Edgeley Park"
            teamCarInfo = "Sat Nav Postcode: SK3 9DD\n\nLeave the M60 at Junction 1 and follow the road into Stockport.  At the second set of traffic lights take the A560 towards Cheadle, and then the next left into Edgeley Road.  When Edgeley Road becomes Mercian Way turn right into Caroline Street for the ground."
            teamTrainInfo = "Exit Stockport Station and turn left walking up Station Road.  Continue up the hill towards the roundabout, go straight over and then turn left into Caroline Street for the ground."
            teamDrinkInfo = "Closest to the ground there is a small Labour Club by the entrance to the Railway End that allows visitors in for a small entrance fee. Otherwise there are a number of pubs along the shopping area across the main road from the Away End."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/stockport-county/scores-fixtures"
        } else if teamName == "Sutton Utd" {
            stationCode = "WSU"
            stadiumLat = 51.36759
            stadiumLon = -0.20429
            teamStadiumName = "VBS Community Stadium"
            teamCarInfo = "Sat Nav Postcode: SM1 2EY\n\nLeave the M25 at Junction 8 and take the A217 towards Sutton. When you reach a small roundabout, bear left continuing on the A217 towards Central London. At the second set of traffic lights turn right into Gander Green Lane. The ground is up here on the left."
            teamTrainInfo = "Exit West Sutton Railway Station and turn right. The ground is on the right about two minutes away."
            teamDrinkInfo = "At the ground there is a Social Club which admits away fans, and on the A217 you will find the Gander Pub. Otherwise there are several pubs in Sutton town centre."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/sutton-united/scores-fixtures"
        } else if teamName == "Swindon Town" {
            stationCode = "SWI"
            stadiumLat = 51.5647848
            stadiumLon = -1.7699336
            teamStadiumName = "County Ground"
            teamCarInfo = "Sat Nav Postcode: SN1 2ED\n\nLeave the M4 at Junction 15 and take the A419 towards Swindon. At the next roundabout turn left onto the A4259 (Marlborough Road). Take the 2nd exit at the next roundabout onto Queens Drive, and then at the next set of roundabouts take the 3rd exit onto County Road. The ground is on the first right."
            teamTrainInfo = "From Swindon Station cross Station Road and walk up Wellington Street to end of road. Turn left and walk along Manchester Road to the end. At the junction turn right. The ground is up this road on the left."
            teamDrinkInfo = "The Merlin pub on Drove Road (off the magic roundabout) admits away fans, as does the bar at the Cricket Club on County Road behind the Arkells Stand.\n\nAlcohol is only available to away fans in the Arkells Stand and not the Stratton Bank End."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/swindon-town/scores-fixtures"
        } else if teamName == "Tranmere Rovers" {
            stationCode = "RFY"
            stadiumLat = 53.3732067
            stadiumLon = -3.035836
            teamStadiumName = "Prenton Park"
            teamCarInfo = "Sat Nav Postcode: CH42 9PY\n\nLeave the M53 at junction 3, and take the A552 (Woodchurch Road) towards Birkenhead. After passing Sainsburys on your left, turn right on to the B5151 (Mount Road) and then the first left for the ground."
            teamTrainInfo = "From Rock Ferry Station exit onto Bedford Road. Turn right and walk down Bedford Road, which becomes Bedford Avenue. At the roundabout with Bebington Road continue straight over into Bedford Drive.  Finally turn right into Borough Road, which leads down to the ground."
            teamDrinkInfo = "The Prenton Park Hotel is near the away end, and as a result always popular with away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/tranmere-rovers/scores-fixtures"
        } else if teamName == "Walsall" {
            stationCode = "BSC"
            stadiumLat = 52.5655187
            stadiumLon = -1.991164
            teamStadiumName = "Banks Stadium"
            teamCarInfo = "Sat Nav Postcode: WS1 4SA\n\nLeave the M6 at Junction 9 taking the A461 towards Walsall. Turn right on to the A4148 (Wallowes Lane) and then turn right at the second set of traffic lights.  The ground is on the left."
            teamTrainInfo = "From Bescot Stadium Station, exit the station and walk under the M6 to the ground."
            teamDrinkInfo = "The closest pub to the ground is the King George V, on Wallowes Lane about 15 minutes walk away by Morrisions. There is also the Saddlers Club outside the ground, which admits away fans for a small fee.\n\nAlcohol is not available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/walsall/scores-fixtures"
        } else if teamName == "Wrexham" {
            stationCode = "WRX"
            stadiumLat = 53.05195
            stadiumLon = -3.00362
            teamStadiumName = "The Racecourse Ground"
            teamCarInfo = "Sat Nav Postcode: LL11 2AH\n\nFrom the North take the A483 towards Wrexham. Leave the A483 at the junction of the A541, the ground is 300 yards from this junction towards the Town Centre.\n\nFrom the South take the M54 to the end of the Motorway, joining the A5 towards Shrewsbury. Stay on the A5 until you reach the A483 towards Wrexham, then follow the directions from the North."
            teamTrainInfo = "Take the train to Wrexham General as it is located next to the stadium. Exit the station and walk up the approach road, turning right at the top along the main road. The stadium is along on the right."
            teamDrinkInfo = "At the ground there is the Centenary Club, which admits away fans and is close to the away turnstiles. The Turf pub is also on one corner of the ground, and admits a small number of away fans. The most popular pub with away fans is the Plas Coch, about a five-minute walk from the ground."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/wrexham/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamStadiumName = "ERROR"
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
     
    */
    
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
