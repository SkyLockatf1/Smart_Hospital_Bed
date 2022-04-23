//
//  Extensions.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 23/4/2022.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
