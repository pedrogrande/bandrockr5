module AdminHelper
	def ends_in_s?(band_profile_name)
		if band_profile_name.last != 's'
			's'
		end
	end
end
