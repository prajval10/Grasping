%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bernardo Aceituno C.         %
% USB C Laboratory             %
% Mechatronics Research Group  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function safe_regions = createPyramid()
	% creates a simple diamond-shape object
	safe_regions = iris.TerrainRegion.empty();

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = [1,1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], [1;1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = [1,-1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], [1;-1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = [-1,1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], [-1;1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = [-1,-1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], [-1;-1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = [0,0,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], [0;0;-1], normal);
end