//
//  StringExtension.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

extension UITableViewCell{
    public class var identifier: String {
        return String(describing: self)
    }
}
extension UICollectionViewCell{
    public class var identifier: String {
        return String(describing: self)
    }
}

extension String{
    
    static var empty: String {
        return  ""
    }
    
    var isEmpty: Bool {
        return self == .empty
    }
    
}

