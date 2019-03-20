//
//  SecondRouter.swift
//  ColorPop
//
//  Created by Raymond Law on 3/20/19.
//  Copyright (c) 2019 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol SecondRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol SecondDataPassing
{
  var dataStore: SecondDataStore? { get }
}

class SecondRouter: NSObject, SecondRoutingLogic, SecondDataPassing
{
  weak var viewController: SecondViewController?
  var dataStore: SecondDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: SecondViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: SecondDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
