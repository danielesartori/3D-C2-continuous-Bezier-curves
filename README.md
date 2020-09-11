# 3D-C2-continuous-Bezier-curves
Enforce C2 continuity and generate 3D Bézier curves

Given 2 sets of control points (possibly representing a 3D path), this code calculates the position of the additional control points used to enforce C2 continuity and plots the 3D Bézier curves defined by them.

The repository includes:

- Main.m: definition of the points, calling the functions and plot of the curve

- points_continuity_derivative_3D.m: calculates the position of the additional control points enforcing C2 continuity

- bezier_curve_3D.m: given a set of control points, it calculates the 3D Bézier curves defined by it

This code was partially used in the paper:

D. Sartori, D. Zou, W. Yu, An efficient approach to near-optimal 3D trajectory design in cluttered environments for multirotor UAVs, 2019 IEEE 15th International Conference on Automation Science and Engineering (CASE), Vancouver, August 2019

Available at: https://ieeexplore.ieee.org/abstract/document/8842980/

@INPROCEEDINGS{8842980,
  author={D. {Sartori} and D. {Zou} and W. {Yu}},
  booktitle={2019 IEEE 15th International Conference on Automation Science and Engineering (CASE)}, 
  title={An efficient approach to near-optimal 3D trajectory design in cluttered environments for multirotor UAVs}, 
  year={2019},
  volume={},
  number={},
  pages={1016-1022},}
