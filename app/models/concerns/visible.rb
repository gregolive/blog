module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

=begin
  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end
=end

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end
  
=begin
  def archived?
    status == 'archived'
  end
=end
end