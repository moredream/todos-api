class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :issue_url
      t.string :user_name
      t.integer :user_id
      t.string :user_avatar_url
      t.string :body

      t.timestamps
    end
  end
end
