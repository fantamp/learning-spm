//
//  ViewController.swift
//  DirectoryListner
//
//  Created by Andrey Mescheryakov on 17/06/2017.
//  Copyright © 2017 Andrey Mescheryakov. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {
    @IBOutlet weak var imageView: NSImageView!

    var browser: ImagesBrowser? = nil


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        super.loadView()
        browser = ImagesBrowser(dir: "/Users/fantamp/Desktop/Photos to import", delegate: self)
    }

    @IBAction func nextButtonClick(_ sender: Any) {
        browser?.move(delta: +1)
    }

    @IBAction func prevButtonClick(_ sender: Any) {
        browser?.move(delta: -1)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController: ImageBrowserProtocol {
    func onImageChanged(newImage: NSImage) {
        imageView.image = newImage
    }
}

