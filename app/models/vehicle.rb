class Vehicle < ActiveRecord::Base
  belongs_to :crane
  has_many :events

  has_attached_file :profile_pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/

  validates :reg_num, uniqueness: true

  def crane_size
    self.try(:crane).try(:size) || 'Ingen kran'
  end

  def status
    if events.not_done.any? { |event| event.prio == "Ej körbar" }
      return 'danger'
    elsif events.not_done.any? { |event| event.prio == "Körbar" }
      return 'warning'
    else
      return 'success'
    end
  end
end
