class Estudio < ActiveRecord::Base
  has_attached_file :audio, :storage => :s3,
     :s3_credentials => "#{Rails.root.to_s}/config/s3.yml",
     :path => "/:id/:filename"

end
