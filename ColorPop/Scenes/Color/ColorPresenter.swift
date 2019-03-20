//
//  ColorPresenter.swift
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

protocol ColorPresentationLogic
{
  func presentAvailableColors(response: Color.ShowAvailableColors.Response)
}

class ColorPresenter: ColorPresentationLogic
{
  weak var viewController: ColorDisplayLogic?
  
  // MARK: Show available colors
  
  func presentAvailableColors(response: Color.ShowAvailableColors.Response)
  {
    let viewModel = Color.ShowAvailableColors.ViewModel(colors: response.colors)
    viewController?.displayAvailableColors(viewModel: viewModel)
  }
}
