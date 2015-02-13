require 'peoplefinder'

module Peoplefinder::Concerns::Completion
  extend ActiveSupport::Concern

  included do
    def completion_score_fields
      [
        :given_name,
        :surname,
        :email,
        :primary_phone_number,
        :location,
        :description,
        :groups,
        :image
      ]
    end

    scope :inadequate_profiles,
      lambda {
        where(%{
          COALESCE(image,'') = ''
          OR COALESCE(location,'') = ''
          OR COALESCE(primary_phone_number,'') = ''
        }).order(:email)
      }

    def completion_score
      completed = completion_score_fields.map { |f| send(f).present? }
      (100 * completed.select { |f| f }.length) / completion_score_fields.length
    end

    def incomplete?
      completion_score < 100
    end
  end
end
