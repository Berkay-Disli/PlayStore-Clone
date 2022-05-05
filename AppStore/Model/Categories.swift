//
//  Categories.swift
//  AppStore
//
//  Created by Berkay Disli on 15.04.2022.
//

import Foundation

enum Categories: String, CaseIterable {
case sizeOzel, ustSıralar, etkinlikler, kategoriler, editorunSecimi
    
    
    var title: String {
        switch self {
        case .sizeOzel:
            return "Size Özel"
        case .ustSıralar:
            return "Üst Sıralar"
        case .etkinlikler:
            return "Etkinlikler"
        case .kategoriler:
            return "Kategoriler"
        case .editorunSecimi:
            return "Editörün Seçimi"
        }
    }
}
