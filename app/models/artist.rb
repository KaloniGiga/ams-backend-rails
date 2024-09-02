class Artist < ApplicationRecord
    # enum gender: { male: 'm', female: 'f', other: 'o' }
    validates :name, presence: true, uniqueness: { case_sensative: false }
    validates :dob, presence: true
    validates :gender, presence: true
    validates :address, presence: true
    validates :first_release_year, presence: true, numericality: { greater_than: 1900}
    validates :no_of_albums_released, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0}

    # validates_comparison_of :dob, less_than: -> { Date.today }
end
