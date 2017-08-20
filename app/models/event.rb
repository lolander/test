class Event < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user

  scope :not_done, -> { where(done: [nil, false]) }
  scope :done, -> { where(done: true) }
  scope :done_or_not_done, -> (done) { where('done IN (?)', done.nil? ? [nil, false] : [true]) }

  PRIOS = [
    OpenStruct.new(name: 'Körbar'),
    OpenStruct.new(name: 'Ej körbar')
  ]

  def status_color
    if done?
      'success'
    elsif prio == 'Körbar'
      'warning'
    elsif prio == 'Ej körbar'
      'danger'
    end
  end
end
