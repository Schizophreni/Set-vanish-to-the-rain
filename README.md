# Single-image-rain-removal-boosting-via-directional-gradient
##  How to model rainy images (DiG-CoM)

Suppose a rainy image **I** can be decomposed into 3 parts: background **B** which is what we need, a residual layer (rain layer) **R** and an edge layer **E**  to store details. Mathmatically, it can be formulated below:

![model](http://latex.codecogs.com/gif.latex?%5Cmathbf%7BI%7D%3D%5Cmathbf%7BB%7D&plus;%5Cmathbf%7BR%7D&plus;%5Cmathbf%7BE%7D)

Then three contraints are introduced for B, R, and E
![model](http://latex.codecogs.com/gif.latex?\\ C(B)=\lambda_1||\nabla B||_1)
![model](http://latex.codecogs.com/gif.latex?\\C(R)=\lambda_2||R||_F^2+\lambda_3||\nabla_{\theta}R||_1)
