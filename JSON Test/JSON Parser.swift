//
//  JSON Parser.swift
//  JSON Test
//
//  Created by Justin Doo on 5/14/16.
//  Copyright © 2016 Justin Doo. All rights reserved.
//

import Foundation
import Gloss



class JSONConnect {

    var task: NSURLSessionTask?

  //MARK: JSON Parsing

  func getJSON (urlString: String) {

    let url = NSURL(string: urlString)!
    let urlConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
    urlConfig.timeoutIntervalForRequest = 7
    urlConfig.timeoutIntervalForResource = 7
    let session = NSURLSession(configuration: urlConfig)
    task = session.dataTaskWithURL(url) {(data, response, error) in
      dispatch_async(dispatch_get_main_queue()) {
        if (error == nil) {
          self.updateJSON(data)
        }
        else {
        }
      }
    }
    task!.resume()
  }


  func updateJSON (data: NSData!) {
    do {
      let showData = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as!
      NSDictionary

      let results = showData["results"] as! [NSDictionary]?
      if let showDataArray = results {
        for data in showDataArray {
          let logo = data["artwork_608x342"] as? String
          let channelName = data["name"] as? String
          let id = data["id"] as? NSNumber
//          let info = ChannelInfo(logo: logo!, channelName: channelName!, id: id!)
//          channelArray.append(info)
//          self.logosShown = [Bool](count: channelArray.count, repeatedValue: false)
        }
      }
    } catch {
  
    }
  //  channelCollectionView.reloadData()
  }



}
