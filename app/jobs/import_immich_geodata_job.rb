# frozen_string_literal: true

class ImportImmichGeodataJob < ApplicationJob
  queue_as :imports

  def perform(user_id)
    user = User.find(user_id)

    Immich::ImportGeodata.new(user).call
  end
end
