# GBFPUM

A MATLAB Package for Partition of Unity Based Signal Interpolation and Approximation on Graphs

<br>

<img src="graphPUM.png" width="800"> 
Fig. 1 Sketch of a Partition of Unity on a simple graph with 10 nodes.

Description of the Code
-----------------------

The package contains several *MATLAB* functions for the generation of a partition of unity on graphs and an implementation of a kernel-based interpolation scheme based on a Partition of Unity Method (PUM).

- The routines **GBF_Jcenters_greedy.m**, **GBF_domainaugment.m** and **GBF_genPUM.m** are used to generate a partition of unity on the underlying graph 

- The routines **GBF_genGBF.m** and **GBF_RLSGBF.m** contain the code for the solution of the local interpolation problems. The function **GBF_RLSGBFPUM.m** calculates the global GBFPUM interpolant or approxiamant of a graph signal.

A simple example for the usage of the routines is provided in the script **example.m**. It demonstrates how a partition of unity is generated on the Minnesota graph and how this partition of unity can be used to merge local GBF approximants to a global interpolation signal.  

<br>

<img src="gengraph-minnesota.png" width="800"> 
Fig. 2 Result obtained from the example script. It shows the generated partition of unity on the Minnesota graph (right) as well as the global GBFPUM interpolation of a signal (left). 

<br>



Citation and Credits
--------------------

If you are using this code, please cite the following articles: 

*   [1] &nbsp; Cavoretto, R., De Rossi, A., Erb, W. <br>
    <i> Partition of Unity Methods for Signal Processing on Graphs </i> <br>
    J. Fourier Anal. Appl. 27 (2021), Art. 66  

The theory on graph basis functions (GBFs) for kernel-based interpolation of graph signals can be found in 

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
