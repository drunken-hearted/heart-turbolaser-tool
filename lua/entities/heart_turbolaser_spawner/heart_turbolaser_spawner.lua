AddCSLuaFile();

ENT.Type = "point";
ENT.Base = "base_gmodentity";
ENT.Author = "drunken hearted";

ENT.Spawnable = false;

function ENT:Initialize()
end

function ENT:Spawner()
	if SERVER then
		timer.Create()
	end
end