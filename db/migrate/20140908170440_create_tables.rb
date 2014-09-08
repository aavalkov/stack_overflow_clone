class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
    end
    create_table :questions do |t|
      t.text :description
      t.string :title
      t.belongs_to :user
    end
    create_table :responses do |t|
      t.text :description
      t.string :title
      t.belongs_to :user
      t.belongs_to :question
    end

    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :response
      t.belongs_to :question
    end
  end
end
