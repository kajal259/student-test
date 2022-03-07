class Subject < ApplicationRecord

	has_many :question
	has_many :studenttest
end
