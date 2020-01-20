require "archiver/version"

module Archiver
  class Error < StandardError; end
  
  def archiver
    self.update(archived_at: Time.now)
  end

  def restore
    self.update(archived_at: nil)
  end

  def archived?
    self.archived_at != nil
  end
end
