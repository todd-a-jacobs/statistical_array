# Statistical Array

## Copyright and Licensing

### Copyright Notice

The copyright for the software, documentation, and associated files are
held by the author.

    Copyright 2012, 2013 Todd A. Jacobs
    All rights reserved.

The AUTHORS file is also included in the source tree.

### Software License

![GPLv3 Logo](http://www.gnu.org/graphics/gplv3-88x31.png)

The software is licensed under the
[GPLv3](http://www.gnu.org/copyleft/gpl.html). The LICENSE file is
included in the source tree.

### README License

![Creative Commons BY-NC-SA
Logo](http://i.creativecommons.org/l/by-nc-sa/3.0/us/88x31.png)

This README is licensed under the [Creative Commons
Attribution-NonCommercial-ShareAlike 3.0 United States
License](http://creativecommons.org/licenses/by-nc-sa/3.0/us/).

## Purpose

Perform statistical analysis on a custom array class that doesn't
actually inherit from Array. Provides a template system for flexible
output.

## Installation and Setup

    gem install statistical_array

## Usage

    stats_array <number ...>

## Examples

No screenshots here, just samples of what you can expect to see on
standard output when you run the program.

### Command Line

    $> stats_array 1 2 3
    Minimum Value: 1
    Maximum Value: 3
    Mean: 2.0
    Median: 2
    Population Standard Deviation: 0.816496580927726
    Sample Standard Deviation: 1.1547005383792515
    Sum of Values: 6

### REPL

    require 'statistical_array'
    include StatisticalArray

    ary = StatisticalArray::StatsArray.new [2, 4, 4, 4, 5, 5, 7, 9]
    [ary.median, ary.avg, ary.pop_std]
    #=> [4.5, 5.0, 2.0]

----

[Project Home Page](https://github.com/CodeGnome/statistical_array)
