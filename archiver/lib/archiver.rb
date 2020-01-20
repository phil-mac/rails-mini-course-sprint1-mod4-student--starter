require "archiver/version"

module Archiver
  class Error < StandardError; end
  
  def archiver
    @archived_at = Time.now
  end

  def restore
    @archived_at = nil
  end

  def archived?
    @archived_at != nil
  end
  
end
