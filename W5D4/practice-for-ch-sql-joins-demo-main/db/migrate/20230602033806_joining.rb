class Joining < ActiveRecord::Migration[7.0]
  def change
    Comment.joins(:author).where(users: { user_name: 'tamboer' })
  end
end
