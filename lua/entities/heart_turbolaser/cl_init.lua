include("shared.lua");
util.PrecacheModel("models/kingpommes/starwars/venator/vanilla/turbolaser_bolt.mdl");

function ENT:Initialize()
	self.model = ClientsideModel("models/kingpommes/starwars/venator/vanilla/turbolaser_bolt.mdl");
	self.model:SetModelScale(self:GetScale(), 0);
end

function ENT:Draw()
end

function ENT:Think()
	if not self:IsValid() then self.model:Remove() end

	self.model:SetPos(self:GetPos());
	self.model:SetAngles(self:GetAngles());
end

function ENT:OnRemove()
	self.model:Remove();
end

language.Add("heart_turbolaser", "Turbolaser");