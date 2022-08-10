//
//  NextViewController.swift
//  InterpolateSwiftToObjectiveC
//
//  Created by iMac on 2022/08/10.
//

import Foundation
import UIKit
import SnapKit

final class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemIndigo
        let printTools = PrintTools()
        printTools.displayToolName()
        setupViews()
    }
}

private extension NextViewController {
    func setupViews() {
        navigationItem.title = "NextViewController"
    }
}
