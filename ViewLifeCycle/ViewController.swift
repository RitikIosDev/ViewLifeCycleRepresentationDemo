//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by ie07 on 08/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primaryLabel.text = "viewDidLoad"
        view.backgroundColor = .red
    }
    
//    override func loadView() {
//        primaryLabel.text = "viewWillLayoutSubviews"
//        view.backgroundColor = .yellow
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        primaryLabel.text = "viewWillAppear"
        view.backgroundColor = .link
    }
    
    override func viewWillLayoutSubviews() {
        primaryLabel.text = "viewWillLayoutSubviews"
        view.backgroundColor = .brown
    }
    
    override func viewDidLayoutSubviews() {
        primaryLabel.text = "viewDidLayoutSubviews"
        view.backgroundColor = .systemGreen
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        primaryLabel.text = "viewWillDisappear"
        view.backgroundColor = .magenta
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        primaryLabel.text = "viewDidDisappear"
        view.backgroundColor = .orange
    }
    
    override func didReceiveMemoryWarning() {
        primaryLabel.text = "didReceiveMemoryWarning"
        view.backgroundColor = .purple
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        primaryLabel.text = "viewWillTransition"
        view.backgroundColor = .systemPink
    }
    
}

