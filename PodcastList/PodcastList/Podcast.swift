//
//  Podcast.swift
//  PodcastList
//
//  Created by student on 22/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import Foundation

class Podcast{
/*
 99vidas
     canal42
     mm
     naoouvo
     nerdcast
     ompdb
     rapaduracast
     reloading
     scicast
     
 */

    let name : String
    let status : String
    let image : String
    
    init (name : String, status : String, image: String){
        self.name = name
        self.status = status
        self.image = image
    }
}



class dbPodcast{

    static func getPodcast() -> [Podcast]{
    
        return[
            Podcast(name: "canal42", status: "No unplayed episodes", image: "canal42")
        
        
        
        
        ]
    }
}
