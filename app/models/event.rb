class Event < ActiveRecord::Base

  after_commit :keep_last_ten, on: :create

  def keep_last_ten
    (Event.all - Event.order(id: :desc).limit(10)).map(&:delete)
  end
end
