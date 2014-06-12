class Music < ActiveRecord::Base
	mount_uploader :picture, PictureUploader

	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	def self.latest
		Music.order(:updated_at).last
	end

	private

		#ensure that three are no line items refrencing this product
		def ensure_not_referenced_by_any_line_item
			if line_items.empty?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
			end
		end
end
