//
//  ViewController.swift
//  MVVM-3
//
//  Created by Sergey Lobanov on 22.10.2021.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMovies { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // в MVVM-2 мы под ячейку создали новую отдельную вью модель. Здесь сделаем проще, тоже как вариант MVVM
        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)
        return cell
    }

}

