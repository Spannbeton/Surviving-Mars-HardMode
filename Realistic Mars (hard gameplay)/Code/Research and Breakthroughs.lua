

local OldScanCompleted = SubsurfaceAnomaly.ScanCompleted

function SubsurfaceAnomaly:ScanCompleted(scanner)
  local city = scanner and scanner.city or UICity
  local tech_action = self.tech_action 
  if tech_action == "breakthrough" then
    	BoostTechField(all, 2) 
	GrantResearchPoints(2000) 
	AddCustomOnScreenNotification("RSB","Breakthrough:","2% to all research, <research(2000)>")
		else
		--AddCustomOnScreenNotification("RSB","Test","else case")
    		OldScanCompleted(self, scanner)
	end
end
