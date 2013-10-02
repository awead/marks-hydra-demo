class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: BookMetadata

  delegate :title, to: 'descMetadata', unique: true
  delegate :author, to: 'descMetadata', unique: true
  delegate :publisher, to: 'descMetadata', unique: true

  has_many :pages, :property=> :is_part_of

end
