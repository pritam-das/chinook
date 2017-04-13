class Track < ActiveRecord::Base

  SHORT = 30000
  LONG = 36000

  scope :short, -> { shorter_than_or_equal_to(SHORT)}
  scope :medium, -> { where 'milliseconds > ? AND mlliseconds < ?', SHORT, LONG}
  scope :long, -> { where('milliseconds >= ?', LONG)}
  scope :shorter_than_or_equal_to, -> (milliseconds) { where(‘milliseconds <= ?’, milliseconds)}
  scope :starts_with, -> (first_char) { where(‘name ILIKE?’, "#{ first_char }%") }

  validates :name, presence: true
  validates :milliseconds, {presence: true, numericality: {greater_than_or_equal_to: 0} }
  validates :unit_price, {presence: true, numericality: {greater_than_or_equal_to: 0.0} }

  #### CUSTOM VALIDATION METHOD BELOW #####

  validate :name_must_be_titleized
private       #because it is only used for the internal operation of the class
  def name_must_be_titleized
    first_char = name[0]
    first_char_is_not_upcased = (first_char != first_char.upcase)
    errors.add(:name, 'is not a proper title') if first_char_is_not_upcased

  end

end
