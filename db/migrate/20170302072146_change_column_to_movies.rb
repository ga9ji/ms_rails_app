class ChangeColumnToMovies < ActiveRecord::Migration[5.0]
  def change
   # 変更内容
       def up
         change_column :movies, :update_status, :integer, default: 0
       end
   # 変更前の状態
       def down
         change_column :movies, :update_status, :integer
       end

  end
end
