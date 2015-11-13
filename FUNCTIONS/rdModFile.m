% function to read model control file
% usage:
% [ModName,GridName,Fxy_ll]=rdModFile(Model,k);
%
% Model - control file name for a tidal model, consisting of lines
%         <elevation file name>
%         <transport file name>
%         <grid file name>
%         <function to convert lat,lon to x,y>
% 4th line is given only for models on cartesian grid (in km)
% All model files should be provided in OTIS format
% k =1/2 for elevations/transports
%
% OUTPUT
% ModName - model file name for elvations/transports
% GridName - grid file name
% Fxy_ll - function to convert lat,lon to x,y
%          (only for models on cartesian grid (in km));
%          If model is on lat/lon grid Fxy_ll=[];
%
% 2015-11-13 Pierre Cazenave (Plymouth Marine Laboratory)
%   Simplified to use MATLAB native function instead of string splitting.
%
function [ModName, GridName, Fxy_ll] = rdModFile(Model, k)

[prefix, ~, ~] = fileparts(Model);

fid = fopen(Model, 'r');
assert(fid > 0, 'Error opening model file %s')
hfile = fgetl(fid);
ufile = fgetl(fid);
gfile = fgetl(fid);

GridName = getfullpath(fullfile(prefix, '..', gfile));
% Assume transport but overwrite if k == 1.
ModName = getfullpath(fullfile(prefix, '..', ufile));
if k == 1
    ModName = getfullpath(fullfile(prefix, '..', hfile));
end

Fxy_ll = fgetl(fid);
if Fxy_ll == -1
    Fxy_ll = [];
end
fclose(fid);

% check if the file exists
fid = fopen(ModName, 'r');
assert(fid >= 1, 'File %s does not exist', Model)
fclose(fid);

function canonicalpath = getfullpath(relativepath)
% Take a given relative path and get the canonical path.
%
jFile = java.io.File(relativepath);
canonicalpath = char(jFile.getCanonicalPath);