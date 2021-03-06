% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roc_curve_simulation.R
\name{generate_averaged_ROC_with_coned_directions}
\alias{generate_averaged_ROC_with_coned_directions}
\title{Generates ROC curve averaged over multiple runs.}
\usage{
generate_averaged_ROC_with_coned_directions(
  runs = 5,
  nsim = 50,
  curve_length = 10,
  grid_size = 25,
  distance_to_causal_point = 0.1,
  causal_points = 10,
  shared_points = 3,
  num_cones = 5,
  eta = 0.1,
  truncated = FALSE,
  two_curves = FALSE,
  ball_radius = 2,
  ball = TRUE,
  type = "vertex",
  min_points = 2,
  directions_per_cone = 5,
  cap_radius = 0.15,
  radius = 0,
  mode = "sphere",
  num_cusps = 10,
  subdivision = 3,
  num_causal_region = 5,
  num_shared_region = 5,
  ec_type = "ECT",
  alpha = 0.5,
  reduce = max,
  write = FALSE
)
}
\arguments{
\item{runs}{(int): Number of runs to average the curves over}

\item{curve_length}{(int) : Number of sub-level sets in each EC computation.}

\item{grid_size}{(int) : The fine-ness/granularity of the interpolated shapes.}

\item{distance_to_causal_point}{(float) : For interpolated shapes, the distance from a vertex to the causal points to be considered a "causal vertex"}

\item{causal_points}{(int) : The number of causal points in each causal cusp, or number of causal points used for interpolations.}

\item{shared_points}{(int) : The number of shared points in the shared cusps, or the number of shared points in the interpolations.}

\item{num_cones}{(int): The number of cones to compute the (S/D) EC curves for the generated shapes over.}

\item{eta}{(float) : The kernel shape parameter.}

\item{truncated}{(int) : The number of "cuts" to compute TPR/FPR for the ROC curve over. Used to speed up ROC computations.}

\item{two_curves}{(boolean) : Whether or not to compute ROC curves using class specific causal points, or the set of all causal points.
Setting two_curves = TRUE will provide two curves, for each class.}

\item{ball_radius}{(float) : The radius of the bounding ball used if we compute the balled EC curve.}

\item{ball}{(boolean) : Denotes whether or not to compute the EC curves over a ball for uniform measurements}

\item{type}{(string) : The assessment scheme. We currently support 'vertex' (finding causal vertices), 'feature' (finding causal sub-level sets),
'cusp' (finding causal cusps for spheres).}

\item{min_points}{(int) : Used when type = 'feature'. The mininum number of causal vertices for a sub-level set to be associated with to be considered a causal 'feature'.}

\item{directions_per_cone}{(int): The number of directions we want generated within each cone.}

\item{cap_radius}{(float): The radius of the cones we generate (determines the size of each cone).}

\item{radius}{(int) : The number of sub-level sets "before" and "after" the selected sub-level sets we want to include (during reconstruction).}

\item{mode}{(string) : The data generation scheme. We currently support 'sphere', 'gaussian_grid", or rbf interpolations (default).}

\item{subdivision}{(int) : The fineness of the sphere meshes (if mode == 'sphere'). We currently use subdivision = 3.}

\item{num_causal_region}{(int) : The number of causal cusps (for when mode == 'sphere').}

\item{num_shared_region}{(int) : The number of shared cusps (for when mode == 'sphere').}

\item{ec_type}{(string) : The type of EC we are computing. We currently support ECT, DECT and SECT.}

\item{num_sim}{(int) : The number of replicates of data.}
}
\description{
Generates ROC curve averaged over multiple runs. We specify in the function what shapes to simulate,
paramters for the about the EC comptutation, as well as assessment scheme.
}
