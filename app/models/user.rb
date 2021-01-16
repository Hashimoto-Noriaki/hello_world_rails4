class User < ApplicationRecord
    validates :account,presense: true, uniqueness: { case_sensitive: false}

end
