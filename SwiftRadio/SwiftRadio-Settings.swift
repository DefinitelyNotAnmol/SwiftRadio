//
//  SwiftRadio-Settings.swift
//  Swift Radio
//
//  Created by Anmol Jain on 7/6/19.
//  Copyright (c) Anmol Jain. All rights reserved.
//

import Foundation
import UIKit

//**************************************
// GENERAL SETTINGS
//**************************************

// Display Comments
let kDebugLog = true

// AirPlayButton Color
let globalTintColor = UIColor(red: 0, green: 189/255, blue: 233/255, alpha: 1);

//**************************************
// STATION JSON
//**************************************

// If this is set to "true", it will use the JSON file in the app
// Set it to "false" to use the JSON file at the stationDataURL

let useLocalStations = true
let stationDataURL   = "http://yoururl.com/json/stations.json"

//**************************************
// SEARCH BAR
//**************************************

// Set this to "true" to enable the search bar
let searchable = true

//**************************************
// NEXT / PREVIOUS BUTTONS
//**************************************

// Set this to "false" to show the next/previous player buttons
let hideNextPreviousButtons = true

//**************************************
// AirPlay BUTTON
//**************************************

// Set this to "true" to hide the AirPlay button
let hideAirPlayButton = true
