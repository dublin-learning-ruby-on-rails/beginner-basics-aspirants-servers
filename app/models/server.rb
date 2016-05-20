class Server < ActiveRecord::Base 
  validates :host, presence: true, uniqueness: true, url: true
  validates :session_id, presence: true
end
