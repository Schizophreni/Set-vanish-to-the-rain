# Single-image-rain-removal-boosting-via-directional-gradient
##  How to model rainy images (DiG-CoM)

Suppose a rainy image **I** can be decomposed into 3 parts: background **B** which is what we need, a residual layer (rain layer) **R** and an edge layer **E**  to store details. Mathmatically, it can be formulated below:

![model](http://latex.codecogs.com/gif.latex?%5Cmathbf%7BI%7D%3D%5Cmathbf%7BB%7D&plus;%5Cmathbf%7BR%7D&plus;%5Cmathbf%7BE%7D)

To better decompose, as it's the case in many papers, we construct four constraints:

- Consistency: ![consistency](http://latex.codecogs.com/gif.latex?%7C%7C%5Cmathbf%7BI%7D-%5Cmathbf%7BB%7D-%5Cmathbf%7BR%7D-%5Cmathbf%7BE%7D%7C%7C_F%5E2)
- Smooth constraint for background: ![cb](http://latex.codecogs.com/gif.latex?%5Clambda_1%7C%7C%5Cnabla%5Cmathbf%7BB%7D%7C%7C_1)
- constraints for rain layer: ![cr](http://latex.codecogs.com/gif.latex?%5Clambda_2%7C%7C%5Cmathbf%7BR%7D%7C%7C_F%5E2-%5Clambda_3%7C%7C%5Cnabla_%7B%5Ctheta%7D%5Cmathbf%7BR%7D%7C%7C_1)
- constraints for edge layer: ![ce](http://latex.codecogs.com/gif.latex?%5Clambda_4%7C%7C%5Cmathbf%7BE%7D%7C%7C_F%5E2-%5Clambda_5%7C%7C%5Cnabla%5Cmathbf%7BE%7D%7C%7C_1)

In DiG-CoM, the parameter ![](http://latex.codecogs.com/gif.latex?%5Clambda_2) is set adaptively according to a metric for rain streaks below

![rho](http://latex.codecogs.com/gif.latex?%5Clambda%20%3D%20C/%28%5Crho&plus;b%29%5E2%5Cquad%20%5Crho%20%3D%20%5Cfrac%7B%5Csum%20M_r%5Codot%20Y%7D%7BHW%7D)

An overflow of optimization can be seen below

## Usage

## A Demo

## Some results on real rainy scene
<center class="rainy">
    <img src="imgs/rain-069.png" height="100"/><img src="imgs/rain-073.png" height="100"/>
</center>

## Discussion
