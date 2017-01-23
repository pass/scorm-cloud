module ScormCloud
	class RegistrationResult < ScormCloud::BaseObject

		attr_accessor :format, :regid, :instanceid, :complete, :success,
								  :totaltime, :score

		def self.from_xml(element)
			r = RegistrationResult.new
			r.set_attributes(element.attributes)
			element.children.each do |element|
				r.set_attr(element.name, element.text)
			end
			r
		end

	end
end
