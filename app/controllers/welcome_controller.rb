class WelcomeController < ApplicationController
	def new
		@person = Person.new
	end
end
