//
//  ViewController.swift
//  theologicus
//
//  Created by Joseph Louthan on 1/7/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView = WKWebView(frame: view.bounds)
        view = webView

        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let baseUrl = URL(fileURLWithPath: htmlPath).deletingLastPathComponent()
            let url = URL(fileURLWithPath: htmlPath)
            webView.loadFileURL(url, allowingReadAccessTo: baseUrl)
        }
    }
}
