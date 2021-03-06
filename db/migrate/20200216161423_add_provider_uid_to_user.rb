# frozen_string_literal: true

class AddProviderUidToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
