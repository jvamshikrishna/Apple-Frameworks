//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Vamshi krishna Jillapally on 12/4/23.
//
import SwiftUI
import SafariServices
import Foundation

struct SafariView: UIViewControllerRepresentable{
    let url: URL
    func makeUIViewController(context: Context) -> some SFSafariViewController
    {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
