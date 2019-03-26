%% Specimen Directions
% This section describes the class *vector3d* and gives an overview how to
% deal with specimen directions in MTEX.
%
%% Open in Editor
%
%% Contents
%
%% Class Description 
% Specimen directions are three-dimensional vectors in the Euclidean space
% represented by coordinates with respect to an outer specimen coordinate
% system x, y, z. In MTEX Specimen directions are represented by variables
% of the class *vector3d*. 
%
%% SUB: Defining Specimen Directions
%
% The standard way to define a specimen directions is by its coordinates. 

v = vector3d(1,1,0); 

%%
% This gives a single vector with coordinates (1,1,0) with respect to the
% x, y , z coordinate system. A second way to define a specimen directions
% is by its spherical coordinates, i.e. by its polar angle and its azimuth
% angle. This is done by the option *polar*. 

polar_angle = 60*degree;
azimuth_angle = 45*degree;
v = vector3d('polar',polar_angle,azimuth_angle); 

%%
% Finally, one can also define a vector as a linear combination of the
% predefined vectors <xvector.html xvector>, <yvector.html yvector>, and
% <zvector.html zvector>

v = xvector + 2*yvector; 


%% SUB: Calculating with Specimen Directions
%
% As we have seen in the last example. One can calculate with specimen
% directions as with ordinary number. Moreover, all basic vector operation as 
% <vector3d.plus.html "+">, <vector3d.minus.html "-">, 
% <vector3d.times.html "*">, <vector3d.dot.html inner product>, 
% <vector3d.cross.html cross product> are implemented. 

u = dot(v,xvector) * yvector + 2 * cross(v,zvector);

%% 
% Using the brackets |v = [v1,v2]| two specimen directions can be concatened. Now each
% single vector is accesable via |v(1)| and |v(2)|.

w = [v,u];
w(1)
w(2)

%%
% When calculating with concatenated specimen directions all operations are
% performed componentwise for each specimen direction.

w = w + v;

%%
% Besides the standard linear algebra operations, there are also the
% following functions available in MTEX.
%
%  [[vector3d.angle.html,angle(v1,v2)]] % angle between two specimen  directions
%  [[vector3d.dot.html,dot(v1,v2)]]   % inner product
%  [[vector3d.cross.html,cross(v1,v2)]] % cross product
%  [[vector3d.norm.html,norm(v)]]      % length of the specimen directions
%  [[vector3d.sum.html,sum(v)]]       % sum over all specimen directions in v
%  [[vector3d.mean.html,mean(v)]]      % mean over all specimen directions in v  
%  [[vector3d.polar.html,polar(v)]]     % conversion to spherical coordinates

% A simple example for applying the norm function is to normalize a set of
% specimen directions

w = w ./ norm(w)

%% SUB: Plotting three dimensionl vectors
% 
% The [[vector3d.plot.html,plot]] function allows you to visualize an 
% arbitrary number of specimen directions in a spherical projection

plot([zvector,xvector+yvector+zvector],'labeled')

%% random vectors


%% equispaced grids

%% regular grids

%% alginment of the plot



%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="vector3d.abs.html"><tt>abs</tt></a></td><td>length of vector </td></tr><tr><td width="200px"><a href="vector3d.accumarray.html"><tt>accumarray</tt></a></td><td>for vector3d</td></tr><tr><td width="200px"><a href="vector3d.angle.html"><tt>angle</tt></a></td><td>between two vectors</td></tr><tr><td width="200px"><a href="vector3d.angle_outer.html"><tt>angle_outer</tt></a></td><td>angle between two vectors</td></tr><tr><td width="200px"><a href="vector3d.arrow3d.html"><tt>arrow3d</tt></a></td><td>plot three dimensional arrows</td></tr><tr><td width="200px"><a href="vector3d.byPolar.html"><tt>byPolar</tt></a></td><td>define vector3d by polar angles</td></tr><tr><td width="200px"><a href="vector3d.calcDelaunay.html"><tt>calcDelaunay</tt></a></td><td>compute the Delaynay triangulation for a spherical grid</td></tr><tr><td width="200px"><a href="vector3d.calcDensity.html"><tt>calcDensity</tt></a></td><td>calculate a density function out of (weighted) unit vectors</td></tr><tr><td width="200px"><a href="vector3d.calcQuadratureWeights.html"><tt>calcQuadratureWeights</tt></a></td><td>compute the area of the Voronoi decomposition</td></tr><tr><td width="200px"><a href="vector3d.calcVoronoi.html"><tt>calcVoronoi</tt></a></td><td>compute the area of the Voronoi decomposition</td></tr><tr><td width="200px"><a href="vector3d.calcVoronoiArea.html"><tt>calcVoronoiArea</tt></a></td><td>compute the spherical area of the Voronoi decomposition</td></tr><tr><td width="200px"><a href="vector3d.cat.html"><tt>cat</tt></a></td><td>implement cat for vector3d</td></tr><tr><td width="200px"><a href="vector3d.centroid.html"><tt>centroid</tt></a></td><td>compute the centroid of a 2d polygon in 3d</td></tr><tr><td width="200px"><a href="vector3d.char.html"><tt>char</tt></a></td><td>convert to char</td></tr><tr><td width="200px"><a href="vector3d.circle.html"><tt>circle</tt></a></td><td>annotated a circle</td></tr><tr><td width="200px"><a href="vector3d.contour.html"><tt>contour</tt></a></td><td>spherical contour plot</td></tr><tr><td width="200px"><a href="vector3d.contourf.html"><tt>contourf</tt></a></td><td>spherical filled contour plot</td></tr><tr><td width="200px"><a href="vector3d.cross.html"><tt>cross</tt></a></td><td>pointwise cross product of two vector3d</td></tr><tr><td width="200px"><a href="vector3d.cross_outer.html"><tt>cross_outer</tt></a></td><td>pointwise cross product of two vector3d</td></tr><tr><td width="200px"><a href="vector3d.ctranspose.html"><tt>ctranspose</tt></a></td><td>transpose vector</td></tr><tr><td width="200px"><a href="vector3d.det.html"><tt>det</tt></a></td><td>pointwise determinant or triple product of three vector3d</td></tr><tr><td width="200px"><a href="vector3d.display.html"><tt>display</tt></a></td><td>standard output</td></tr><tr><td width="200px"><a href="vector3d.dot.html"><tt>dot</tt></a></td><td>pointwise inner product</td></tr><tr><td width="200px"><a href="vector3d.dot_outer.html"><tt>dot_outer</tt></a></td><td>outer dot product</td></tr><tr><td width="200px"><a href="vector3d.double.html"><tt>double</tt></a></td><td>converts vector3d to double</td></tr><tr><td width="200px"><a href="vector3d.dyad.html"><tt>dyad</tt></a></td><td>ic tensor product </td></tr><tr><td width="200px"><a href="vector3d.eig.html"><tt>eig</tt></a></td><td>envalues and eigenvectors for a list of @vector3d</td></tr><tr><td width="200px"><a href="vector3d.end.html"><tt>end</tt></a></td><td>overloaded end function</td></tr><tr><td width="200px"><a href="vector3d.eq.html"><tt>eq</tt></a></td><td>? v1 == v2</td></tr><tr><td width="200px"><a href="vector3d.exp.html"><tt>exp</tt></a></td><td>rotation vector to rotation</td></tr><tr><td width="200px"><a href="vector3d.export.html"><tt>export</tt></a></td><td>quaternions to a ascii file</td></tr><tr><td width="200px"><a href="vector3d.find.html"><tt>find</tt></a></td><td>return index of all points in a epsilon neighborhood of a vector</td></tr><tr><td width="200px"><a href="vector3d.horzcat.html"><tt>horzcat</tt></a></td><td>overloads [v1,v2,v3..]</td></tr><tr><td width="200px"><a href="vector3d.interp.html"><tt>interp</tt></a></td><td>spherical interpolation  including some smoothing</td></tr><tr><td width="200px"><a href="vector3d.isPerp.html"><tt>isPerp</tt></a></td><td>check whether v1 and v2 are orthogonal</td></tr><tr><td width="200px"><a href="vector3d.isempty.html"><tt>isempty</tt></a></td><td>overloads isempty</td></tr><tr><td width="200px"><a href="vector3d.length.html"><tt>length</tt></a></td><td>overloads length</td></tr><tr><td width="200px"><a href="vector3d.line.html"><tt>line</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="vector3d.load.html"><tt>load</tt></a></td><td>import directions</td></tr><tr><td width="200px"><a href="vector3d.mean.html"><tt>mean</tt></a></td><td>computes the mean vector </td></tr><tr><td width="200px"><a href="vector3d.minus.html"><tt>minus</tt></a></td><td>overload minus</td></tr><tr><td width="200px"><a href="vector3d.mpower.html"><tt>mpower</tt></a></td><td>nth dyadic product</td></tr><tr><td width="200px"><a href="vector3d.mrdivide.html"><tt>mrdivide</tt></a></td><td>scalar division v / s</td></tr><tr><td width="200px"><a href="vector3d.mtimes.html"><tt>mtimes</tt></a></td><td>scalar multiplication</td></tr><tr><td width="200px"><a href="vector3d.ne.html"><tt>ne</tt></a></td><td>? v1 == v2</td></tr><tr><td width="200px"><a href="vector3d.norm.html"><tt>norm</tt></a></td><td>vector norm</td></tr><tr><td width="200px"><a href="vector3d.normalize.html"><tt>normalize</tt></a></td><td>a vector</td></tr><tr><td width="200px"><a href="vector3d.orth.html"><tt>orth</tt></a></td><td>an arbitrary orthogonal vector</td></tr><tr><td width="200px"><a href="vector3d.pcolor.html"><tt>pcolor</tt></a></td><td>spherical contour plot</td></tr><tr><td width="200px"><a href="vector3d.perp.html"><tt>perp</tt></a></td><td>conmpute an vector best orthogonal to a list of directions</td></tr><tr><td width="200px"><a href="vector3d.planeIntersect.html"><tt>planeIntersect</tt></a></td><td>pointwise determinant or triple product of three vector3d</td></tr><tr><td width="200px"><a href="vector3d.plot.html"><tt>plot</tt></a></td><td>vectors as two dimensional projections on the sphere</td></tr><tr><td width="200px"><a href="vector3d.plot3d.html"><tt>plot3d</tt></a></td><td>plot spherical data</td></tr><tr><td width="200px"><a href="vector3d.plotCustom.html"><tt>plotCustom</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="vector3d.plus.html"><tt>plus</tt></a></td><td>poitwise addition</td></tr><tr><td width="200px"><a href="vector3d.polar.html"><tt>polar</tt></a></td><td>cartesian to spherical coordinates</td></tr><tr><td width="200px"><a href="vector3d.polyArea.html"><tt>polyArea</tt></a></td><td>area of a flat polygon given by vertices v1, v2, ..., v_n</td></tr><tr><td width="200px"><a href="vector3d.project2FundamentalRegion.html"><tt>project2FundamentalRegion</tt></a></td><td>projects vectors to the fundamental sector of the inverse pole figure</td></tr><tr><td width="200px"><a href="vector3d.quiver.html"><tt>quiver</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="vector3d.quiver3.html"><tt>quiver3</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="vector3d.rank.html"><tt>rank</tt></a></td><td>= 1</td></tr><tr><td width="200px"><a href="vector3d.rdivide.html"><tt>rdivide</tt></a></td><td>scalar division v ./ s</td></tr><tr><td width="200px"><a href="vector3d.refine.html"><tt>refine</tt></a></td><td>vectors</td></tr><tr><td width="200px"><a href="vector3d.repmat.html"><tt>repmat</tt></a></td><td>overloads repmat</td></tr><tr><td width="200px"><a href="vector3d.reshape.html"><tt>reshape</tt></a></td><td>overloads reshape</td></tr><tr><td width="200px"><a href="vector3d.rotate.html"><tt>rotate</tt></a></td><td>vector3d by rotation or orientation</td></tr><tr><td width="200px"><a href="vector3d.rotate_outer.html"><tt>rotate_outer</tt></a></td><td>rotate vector3d by quaternion</td></tr><tr><td width="200px"><a href="vector3d.scatter.html"><tt>scatter</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="vector3d.scatter3d.html"><tt>scatter3d</tt></a></td><td>plot spherical data</td></tr><tr><td width="200px"><a href="vector3d.setdiff.html"><tt>setdiff</tt></a></td><td>remove vectors v2 from a set of vectors v1</td></tr><tr><td width="200px"><a href="vector3d.size.html"><tt>size</tt></a></td><td>overloads size</td></tr><tr><td width="200px"><a href="vector3d.smooth.html"><tt>smooth</tt></a></td><td>low level function for plotting functions on the sphere</td></tr><tr><td width="200px"><a href="vector3d.subSet.html"><tt>subSet</tt></a></td><td>subindex vector3d</td></tr><tr><td width="200px"><a href="vector3d.subsasgn.html"><tt>subsasgn</tt></a></td><td>overloads subsasgn</td></tr><tr><td width="200px"><a href="vector3d.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr><tr><td width="200px"><a href="vector3d.sum.html"><tt>sum</tt></a></td><td>of vectors</td></tr><tr><td width="200px"><a href="vector3d.surf.html"><tt>surf</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="vector3d.symmetrise.html"><tt>symmetrise</tt></a></td><td>symmetrcially equivalent directions and its multiple</td></tr><tr><td width="200px"><a href="vector3d.text.html"><tt>text</tt></a></td><td>display a text in a spherical plot</td></tr><tr><td width="200px"><a href="vector3d.text3.html"><tt>text3</tt></a></td><td>plot three dimensional arrows</td></tr><tr><td width="200px"><a href="vector3d.times.html"><tt>times</tt></a></td><td>.*  componenwtise multiplication</td></tr><tr><td width="200px"><a href="vector3d.transpose.html"><tt>transpose</tt></a></td><td>vector</td></tr><tr><td width="200px"><a href="vector3d.uminus.html"><tt>uminus</tt></a></td><td>overloads unitary minus</td></tr><tr><td width="200px"><a href="vector3d.unique.html"><tt>unique</tt></a></td><td>disjoint list of vectors</td></tr><tr><td width="200px"><a href="vector3d.vertcat.html"><tt>vertcat</tt></a></td><td>overloads [v1,v2,v3..]</td></tr></table></html>