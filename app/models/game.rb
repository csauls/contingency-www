class Game < ActiveRecord::Base
    has_attached_file :banner
    
    validates :banner,
        attachment_presence: true,
        attachment_content_type: { content_type: 'image/jpeg' }

    has_many :news_post
    
    def to_param
        slug
    end
end
