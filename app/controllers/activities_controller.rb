class ActivitiesController < InheritedResources::Base

	def new
		@activity = Activity.new
		1.times { @activity.locations.build }
	end
end
