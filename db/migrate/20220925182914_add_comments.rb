class AddComments < ActiveRecord::Migration[6.1]
  def change
      create_table :active_admin_comments do |t|
        t.string :namespace
        t.text   :body
        t.references :resource, polymorphic: true
        t.references :author, polymorphic: true
        if Rails::VERSION::MAJOR >= 5
          t.timestamps
        else
          t.timestamps null: false
        end
      end
      add_index :active_admin_comments, [:namespace]

      unless Rails::VERSION::MAJOR >= 5
        add_index :active_admin_comments, [:author_type, :author_id]
        add_index :active_admin_comments, [:resource_type, :resource_id]
      end
        end
end
