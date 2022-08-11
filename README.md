# GBFPUM

A MATLAB Package for Partition of Unity Based Signal Interpolation and Approximation on Graphs

<br>

<img src="img/GBF_sensor2_comparison.png" width="800"> 
Fig. 1 Comparison of GBF interpolation with bandlimited interpolation on a sensor graph. 

Description of the Code
-----------------------

The package contains three main parts

- The main *Matlab* folder contains example scripts and demos on how to use GBFs for the interpolation, regression and classification of graph signals. 

- The subfolder *./core* contains the core code of the package for the generation of the different graphs, the basis functions and the plots. 

- The subfolder *./data* contains several *.mat* files with the node information of the example graphs. 

The example scripts can be divided into two categories:

- The files of the form **GBF_example_ITP_(graph).m** are used to demonstrate how GBFs can be used for the interpolation of graph signals and how GBFs compare to bandlimited interpolation.  

- In the scripts of the form **GBF_example_SSL_(graph).m** supervised and semi-supervised classification based on feature-augmented GBF-kernels is tested on several data sets. 

<img src="img/GBF_SSL_slashedO.png" width="800"> 
Fig. 2 Classification with supervised (left) and semi-supervised (middle and right) kernel-based methods on the slashed-O data set. 



Citation and Credits
--------------------

If you are using this code, please cite the following article: 

*   [1] &nbsp; Cavoretto, R., De Rossi, A., Erb, W. <br>
    <i> Partition of Unity Methods for Signal Processing on Graphs </i> <br>
    J. Fourier Anal. Appl. 27 (2021), Art. 66  

The corresponding theory on GBFs related to kernel-based interpolation of graph signals is given in 

*   [2] &nbsp; Erb, W. <br>
    <i> Graph Signal Interpolation with Positive Definite Graph Basis Functions  </i> <br>
    Appl. Comput. Harmon. Anal. 60 (2022), 368-395
 
<br>


License
-------

Copyright (C) 2022 R. Cavoretto, A. De Rossi, W Erb

GBFPUM is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
