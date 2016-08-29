class Movie < ApplicationRecord
  belongs_to :director
  include PgSearch

  pg_search_scope :search, against: [[:title, 'B'], [:syllabus, 'A']],
    associated_against: {
      director: [ :first_name, :last_name ]
    },
		:using => { :tsearch => {:prefix => true} }

	multisearchable against: [:title, :syllabus]
end
