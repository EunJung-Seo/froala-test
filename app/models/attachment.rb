class Attachment < ApplicationRecord
  mount_uploader :file, S3Uploader
end
