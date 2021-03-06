%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bernardo Aceituno C.         %
% USB C Laboratory             %
% Mechatronics Research Group  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [safe_regions, verts] = createBall(radius)
	% creates a simple diamond-shape object
	safe_regions = iris.TerrainRegion.empty();
	verts = [];
	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [1,1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [1,-1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;-1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [-1,1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [-1,-1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;-1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [1,1,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;1;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [1,-1,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;-1;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [-1,1,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;1;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [-1,-1,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;-1;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [1,0,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;0;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [0,-1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;-1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [-1,0,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;0;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [0,1,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;1;1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [1,0,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;0;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [0,-1,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;-1;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [-1,0,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;0;-1], normal);

	A = [0,0,1; 0,0,-1]; b = [0;0];
	normal = 0.0*rand(3,1) + [0,1,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;1;-1], normal);

	A = [1,0,0; -1,0,0]; b = [1;-1];
	normal = 0.0*rand(3,1) + [1,0,0]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[1;0;0], normal);

	A = [1,0,0; -1,0,0]; b = [-1;1];
	normal = 0.0*rand(3,1) + [-1,0,0]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[-1;0;0], normal);

	A = [0,1,0; 0,-1,0]; b = [1;-1];
	normal = 0.0*rand(3,1) + [0,1,0]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;1;0], normal);

	A = [0,1,0; 0,-1,0]; b = [-1;1];
	normal = 0.0*rand(3,1) + [0,-1,0]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;-1;0], normal);

	A = [1,0,0; -1,0,0]; b = [1;1];
	normal = 0.0*rand(3,1) + [0,0,1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;0;1], normal);

	A = [1,0,0; -1,0,0]; b = [1;1];
	normal = 0.0*rand(3,1) + [0,0,-1]';
	safe_regions(end+1) = iris.TerrainRegion(A, b, [], [], radius*[0;0;-1], normal);
end