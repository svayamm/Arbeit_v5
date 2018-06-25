class SpecsheetUploader < CarrierWave::Uploader::Base
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file

  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

  # Override the directory where uploaded files will be stored.
  def store_dir
    "#{Rails.root}/public/uploads/"
  end

  def cache_dir
    "#{Rails.root}/public/uploads/cache"
  end

  def filename
    original_filename
  end

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_whitelist
    %w(pdf doc docx)
  end

  # Add a black list of content types which are not allowed to be uploaded.
  def content_type_blacklist
    ['application/text', 'application/json']
  end

end
