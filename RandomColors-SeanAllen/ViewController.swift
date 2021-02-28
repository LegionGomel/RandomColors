//
//  ViewController.swift
//  RandomColors-SeanAllen
//
//  Created by Yuri Ershov on 15.02.21.
//

import UIKit

class ViewController: UIViewController {
    
    var colors: [UIColor] = []
    
    enum cells {
        // Just for not no make a typo. Link to custom cell identifier
        static let colorCell = "ColorCell"
    }
    
    enum segues {
        // Just for not no make a typo. Link to colorDetailView
        static let colorDetailVC = "ToColorsDetailViewController"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
        
    }
    
    /// Function for create 50 random colors
    /// and append them to array
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Take a link to destination view conrtoller
        let destVC = segue.destination as! ColorsDetailViewController
        // Add color parameter to destination optional
        destVC.color = sender as? UIColor

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    // Extension is just for organizational purpose
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return 50, number of random colors
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create new reusable cell with identifier that is used in storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell)
        cell?.backgroundColor = colors[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // When tapping on row, take current color
        let color = colors[indexPath.row]
        // And perform seue to destination VC with selected color.
        performSegue(withIdentifier: segues.colorDetailVC, sender: color)
    }
    
}


