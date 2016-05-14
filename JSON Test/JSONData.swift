//
//  JSONData.swift
//  JSON Test
//
//  Created by Justin Doo on 5/14/16.
//  Copyright © 2016 Justin Doo. All rights reserved.
//

import Foundation


class ChannelInfo: NSObject {
  
  var logo: String
  var channelName: String
  var id: NSNumber
  
  init(logo: String, channelName: String , id: NSNumber) {
    
    self.logo = logo
    self.channelName = channelName
    self.id = id
  }
}
