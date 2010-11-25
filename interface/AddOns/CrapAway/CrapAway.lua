function caInit()
	frmcrapaway:RegisterEvent("MERCHANT_SHOW");
end

function caEvent()
	local caSlots,caLink,caQuality;
	local i=0,j;
	local _,caClass=UnitClass("player");
	repeat
		if not(GetContainerNumSlots(i)==nil)then
			caSlots=GetContainerNumSlots(i);
			j=1;
			repeat
				caLink=GetContainerItemLink(i,j);
				if not(caLink==nil)then                        
					_,_,caQuality,_,_,_,_,_,_,_=GetItemInfo(caLink);
					if(caQuality==0)then
						UseContainerItem(i,j);
					end
				end
				j=j+1;
			until(j>=caSlots+1)
		end
		i=i+1;
	until(i>=5)
end
