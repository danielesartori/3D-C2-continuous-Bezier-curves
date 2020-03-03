# 3D-C2-continuous-Bezier-curves
Enforce C2 continuity and generate 3D Bézier curves

Given 2 sets of control points (possibly representing a 3D path), this code calculate the position of the additional control points used to enforce C2 continuity and plots the 3D Bézier curves defined by them.

The repository includes:

- Main.m: definition of the points, calling the functions and plot of the curve

- points_continuity_derivative_3D.m: calculates the position of the additional control points enforcing C2 continuity

- bezier_curve_3D.m: given a set of control points, it calculates the 3D Bézier curves defined by it

