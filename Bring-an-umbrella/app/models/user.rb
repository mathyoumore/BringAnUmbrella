require 'open-uri'
require

class UserValidator < ActiveModel::Validator
  ZIP_RULE = /\A\d{5}(-\d{4})?\Z/
  def validate(record)
    record.errors[:base] << "#{record.zip_code} is not a zip code: (#####), (#####-####)" unless record.zip_code =~ ZIP_RULE
    record.errors[:base] << "You need to check at least one hour to subscribe to" if record.hours.length < 1
  end
end


class User < ActiveRecord::Base

  validates_with UserValidator
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  attr_accessor :response

  def get_response
    response = load_api
  end
end
