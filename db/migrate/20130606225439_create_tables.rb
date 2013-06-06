class CreateTables < ActiveRecord::Migration
  def up
  	create_table :deals do |t|
      t.string  :name
      t.integer :company_id

      t.timestamps
    end
    create_table :uploads do |t|
      t.integer :deal_id
      t.string  :filepicker_url
      t.string  :description

      t.timestamps
    end
    create_table :request_docs do |t|
      t.integer :deal_id
      t.integer :uploads_id
      t.string  :doc_name
      t.string  :from
      t.date    :by_date
      t.string  :description

      t.timestamps
    end
    create_table :approvals do |t|
      t.integer :deal_id
      t.integer :uploads_id
      t.string  :names
      t.date 	:by_date
      t.string  :description

      t.timestamps
    end
    create_table :get_signatures do |t|
      t.integer :uploads_id
      t.string  :from
      t.date    :by_date

      t.timestamps
    end
    create_table :signatures do |t|
      t.integer :deal_id
      t.string :signedBy
      t.string :signature

      t.timestamps
    end
    create_table :comments do |t|
      t.integer :deal_id
      t.string  :comments

      t.timestamps
    end
    create_table :companies do |t|
      t.integer :deal_id
      t.string  :company

      t.timestamps
    end
    create_table :inviteds do |t|
      t.integer :deal_id
      t.string :email
      t.string :full_names
      t.string :user_type

      t.timestamps
    end
    create_table :deal_members do |t|
      t.integer :deal_id
      t.integer :name_id
      t.integer :email_id

      t.timestamps
    end
  end

  def down
  	drop_table :approvals
  	drop_table :signatures
  	drop_table :uploads
  	drop_table :comments
  	drop_table :companies
  	drop_table :deal_members
  	drop_table :deals
  	drop_table :get_signatures
  	drop_table :inviteds
  	drop_table :request_docs
  end
end
