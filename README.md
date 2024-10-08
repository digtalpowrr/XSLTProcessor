# XSLTProcessor: Data Accessioner XSLT postprocessor

XSLTProcessor is a graphical tool to run XSLT transforms on the XML output
created by Data Accessioner. It parses the report generated by Data
Accessioner, then creates CSV and HTML reports.

Any XSLT stylesheet can be run over the Data Accessioner report to create
any output you see prefer.  Two simple XSLT stylesheets are included in the
distribution, in the `xslt` folder, to create a CSV file, suitable for import
into a spreadsheet, or an HTML report, suitable for display on the web. 

Feel free to modify these as you see fit, or create your own transforms.

The default set of xslt are intended to transform the output of files from the 
Data Accessioner 1.0, 1.1, and 1.2.

## Install

*Prerequisite: Install Java 11 or higher on your workstation*

The latest release zip distribution file can be downloaded at https://github.com/digitalpowrr/XSLTProcessor/releases/latest.

Unzip the distribution zip file in the location of your choice.
All dependencies are included within the package.

## Run

### Windows

Double-click the `XSLTProcessor` executable file or `start.bat` in the install directory.

### Mac or Linux

Open a terminal application (Terminal in Mac), then run the following commands:

    cd <XSLTPROCESSROR_DIRECTORY>
    ./start.sh

Where *<XSLTPROCESSOR_DIRECTORY>* is the folder where you installed XSLTProcessor.

## Usage

+ Double-click the Jar
+ Use the "Add Source" button to add source files (DA output files)
+ Use the "Add Transform"  button to add transforms (xslt files that generate the reports)
    + By convention all xslt files should include the destination file extension in the file name (e.g. the default report creates CSV files and so has the extension ".csv.xslt").
+ Use the "Remove" buttons to remove the sources and transforms you don't want.
+ Use the "Set Output Dir" button to select where the reports will be saved OR type a path into the box provided.
    + By default all the reports found in the accompanying "xslt" folder are added
    + Two report transform are distributed with the tool:  CSV and HTML
+ Click "Run Transforms" when you are ready
    + Reports appear in the destination directory and named by the corresponding source and report file names.
    + Status messages will appear in the big text box as it runs
    + Currently only setup and completion messages are included

## Develop
### Prerequisites

* A recent version of Java (>= 11)
* Maven (>= 3.9)

### Build

XSLTProcessor is built using Maven.  To build, clone the repository:

git clone https://github.com/digitalpowrr/xsltprocessor.git

Then execute the following command in the top-level directory:

    mvn clean package

A distributable zip file will be built and placed in the `target/`
subdirectory, with the name `XSLTProcessor-<version>-dist.zip`.

For testing purposes, you may run the created executable jar in
the `target/` folder directly:

    XSLTProcessor-<version>.jar

### Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

## Credits

[Seth Shaw](https://github.com/seth-shaw)  
[Scott Prater](https://github.com/sprater)

## License

Copyright © 2024 by Digital POWRR.
Copyright © 2014, 2017 by Seth Shaw.

DAFixity is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

DAFixity is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

