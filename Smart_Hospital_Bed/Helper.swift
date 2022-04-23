//
//  Helper.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 23/4/2022.
//

import Foundation
func getCreationDate(for file: URL) -> Date {
    if let attributes = try? FileManager.default.attributesOfItem(atPath: file.path) as [FileAttributeKey: Any],
        let creationDate = attributes[FileAttributeKey.creationDate] as? Date {
        return creationDate
    } else {
        return Date()
    }
}
