//
//  ViewController.swift
//  IntroductionRxSwift
//
//  Created by Duy Bui on 3/22/19.
//  Copyright © 2019 DuyBui. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Create observable with the signal is String
    let observable = Observable<String>.create { (observer) -> Disposable in
        observer.onNext("First signal")
        observer.onCompleted()
      
        // This signal is sent after calling .onCompleted()
        observer.onNext("Second signal")
      return Disposables.create()
    }
    
    // Create observers
    observable.subscribe(onNext: { (element) in
      print(element)
    }).dispose()
  }
}

