//
//  ViewController.swift
//  SwiftUITutorials
//
//  Created by vivi wu on 2019/6/5.
//  Copyright © 2019 vivi wu. All rights reserved.
//

import UIKit
import SwiftUI  // iOS13+ available


class ViewController: UIViewController {

    struct landmark {
        var thumbnail: Image
        var name: String
    }
    var label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Apple Dark Model:
        let backgroundColor = UIColor{ (traitCollection)-> UIColor in
            switch traitCollection.userInterfaceStyle {
            case .light:
                return UIColor.white
            case .dark:
                return UIColor.black
            default:
                fatalError()
            }
        }
        view.backgroundColor = backgroundColor
        
        let labelColor = UIColor{ (traitCollection)-> UIColor in
            switch traitCollection.userInterfaceStyle{
            case .light:
                return UIColor.black
            case .dark:
                return UIColor.white
            default:
                fatalError()
            }
        }
        label.textColor = labelColor
        
        view.addSubview(label)
//        label.frame = {{50, 50}, {50, 50}}
        
        // Do any additional setup after loading the view.
        /*
        //  swiftUI：
        let landmarks = [landmark]()
        
        List(landmarks) { landmark in
            HStack {
                Image(landmark.thumbnail)
                Text(landmark.name)
                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
        }
        */
        
        
        /*
         @available(iOS 13.0, *)
         public init(dynamicProvider: @escaping (UITraitCollection) -> UIColor)
         
         required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
         }
         */
        
        
        
        
        
    }


}

