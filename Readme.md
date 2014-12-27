# Simple Data Source 

## Intent

Make table view controllers re-usable and lean when presenting a small amount of data that may have many different types of cell.

## Motivation

Table views where originally designed for presenting large amounts of the same information. The cellForRowAtIndexPath methods stays very lean when only dealing with one type of cell. 

Table views are now very popular in displaying details about a model object (e.g. the details view controller in the master-details combo). Every cell in the table may be different. Dealing with a larger amount of different cells makes the cellForRowAtIndexPath very hard to manage. Ugly if-then-else statements make the code hard to undestand. 

## Participants

- Table View Controller
- Custom Table View Cells
- Data Source / Delagate 
- Model 
- View Controller

## Flow

A View Controller has access to a model and creates a Data Source instance for that model. 
The View Controller calls a table view controller with a data source.

The data source implements the UITableViewDataSource and UITableViewDelegate protocols so it can provide table view cells and the height of the cells to the table view controller.

The table view is responsoible for providing a consitent look and feel of the table (and navigation bar) independent of the data source. All data and cell-related tasks are delegated to the data source by the table view controller.

## Description

The data source is strictly speaking a combination of table view data source and table view delegate. It takes care the that the cells are presented in the correct order.

The data source has a designated initialiser that takes a model object. The model object is then used to configure a particular cell.


## Notes

- The ugly switch statement in cellForRowAtIndexPath should not rely on hardocded numbers. Use enum instead

	typedef enum {
	    kFirstIndex = 0,
	    kSecondIndex
	} BigtDataSourceIndexType;
    
