module ScormCloud
	class RegistrationDetail < ScormCloud::BaseObject

		attr_accessor :registrationId, :courseId, :courseTitle, :lastCourseVersionLaunched, :learnerId,
                  :learnerFirstName, :learnerLastName, :email, :createDate, :firstAccessDate,
                  :lastAccessDate, :completedDate

		def self.from_xml(element)
			r = RegistrationDetail.new
			r.set_attributes(element.attributes)
			element.children.each do |element|
				r.set_attr(element.name, element.text)
			end
			r
		end

	end
end
