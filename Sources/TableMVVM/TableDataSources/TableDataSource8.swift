//
//  TableDataSource8.swift
//  TableViewWork
//
//  Created by Scott Lydon on 9/11/21.
//

import UIKit

 class TableDataSource8<
    Section0: PrimaryTableSectionMethods,
    Section1: PrimaryTableSectionMethods,
    Section2: PrimaryTableSectionMethods,
    Section3: PrimaryTableSectionMethods,
    Section4: PrimaryTableSectionMethods,
    Section5: PrimaryTableSectionMethods,
    Section6: PrimaryTableSectionMethods,
    Section7: PrimaryTableSectionMethods
>: NSObject, UITableViewDataSource, UITableViewDelegate, HasRegistrationCandidates, HasTable
where Section0: HasInit,
      Section1: HasInit,
      Section2: HasInit,
      Section3: HasInit,
      Section4: HasInit,
      Section5: HasInit,
      Section6: HasInit,
      Section7: HasInit {

     var table: UITableView?

    init(
        section0: Section0,
        section1: Section1,
        section2: Section2,
        section3: Section3,
        section4: Section4,
        section5: Section5,
        section6: Section6,
        section7: Section7
    ) {
        self.section0 = section0
        self.section1 = section1
        self.section2 = section2
        self.section3 = section3
        self.section4 = section4
        self.section5 = section5
        self.section6 = section6
        self.section7 = section7
    }

     var registerCandidates: [RegistersCells & RegistersHeader] {
        [section0, section1, section2, section3, section4, section5, section6, section7]
    }

    var queue: DispatchQueueType = DispatchQueue.main

    var section0: Section0 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section1: Section1 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section2: Section2 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section3: Section3 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section4: Section4 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section5: Section5 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section6: Section6 = .init() {
        didSet { self.table?.reload(on: queue) }
    }
    var section7: Section7 = .init() {
        didSet { self.table?.reload(on: queue) }
    }

     func numberOfSections(in tableView: UITableView) -> Int { 8 }

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0: return section0.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 1: return section1.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 2: return section2.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 3: return section3.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 4: return section4.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 5: return section5.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 6: return section6.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        case 7: return section7.tableViewDidSelectRowAt(tableView, didSelectRowAt: indexPath)
        default: do {}
        }
    }

     func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0: return section0.tableViewViewForHeader(tableView)
        case 1: return section1.tableViewViewForHeader(tableView)
        case 2: return section2.tableViewViewForHeader(tableView)
        case 3: return section3.tableViewViewForHeader(tableView)
        case 4: return section4.tableViewViewForHeader(tableView)
        case 5: return section5.tableViewViewForHeader(tableView)
        case 6: return section6.tableViewViewForHeader(tableView)
        case 7: return section7.tableViewViewForHeader(tableView)
        default: return nil
        }
    }

     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0: return section0.tableViewHeightForHeaderInSection(tableView)
        case 1: return section1.tableViewHeightForHeaderInSection(tableView)
        case 2: return section2.tableViewHeightForHeaderInSection(tableView)
        case 3: return section3.tableViewHeightForHeaderInSection(tableView)
        case 4: return section4.tableViewHeightForHeaderInSection(tableView)
        case 5: return section5.tableViewHeightForHeaderInSection(tableView)
        case 6: return section6.tableViewHeightForHeaderInSection(tableView)
        case 7: return section7.tableViewHeightForHeaderInSection(tableView)
        default: return 0
        }
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return section0.tableViewNumberOfRows(tableView)
        case 1: return section1.tableViewNumberOfRows(tableView)
        case 2: return section2.tableViewNumberOfRows(tableView)
        case 3: return section3.tableViewNumberOfRows(tableView)
        case 4: return section4.tableViewNumberOfRows(tableView)
        case 5: return section5.tableViewNumberOfRows(tableView)
        case 6: return section6.tableViewNumberOfRows(tableView)
        case 7: return section7.tableViewNumberOfRows(tableView)
        default: return 0
        }
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0: return section0.tableView(tableView, cellForRowAt: indexPath)
        case 1: return section1.tableView(tableView, cellForRowAt: indexPath)
        case 2: return section2.tableView(tableView, cellForRowAt: indexPath)
        case 3: return section3.tableView(tableView, cellForRowAt: indexPath)
        case 4: return section4.tableView(tableView, cellForRowAt: indexPath)
        case 5: return section5.tableView(tableView, cellForRowAt: indexPath)
        case 6: return section6.tableView(tableView, cellForRowAt: indexPath)
        case 7: return section7.tableView(tableView, cellForRowAt: indexPath)
        default: return .init()
        }
    }
}