//
//  ColorInteractor.swift
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

protocol ColorBusinessLogic
{
  func showAvailableColors(request: Color.ShowAvailableColors.Request)
  var selectedColor: UIColor? { get set }
}

protocol ColorDataStore
{
  var selectedColor: UIColor? { get set }
}

class ColorInteractor: ColorBusinessLogic, ColorDataStore
{
  var presenter: ColorPresentationLogic?
  var availableColors: [UIColor] = [.red, .green, .blue]
  var selectedColor: UIColor?
  
  // MARK: Show available colors
  
  func showAvailableColors(request: Color.ShowAvailableColors.Request)
  {
    let response = Color.ShowAvailableColors.Response(colors: availableColors)
    presenter?.presentAvailableColors(response: response)
  }
}
