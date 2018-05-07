class CreateCandidates < ActiveRecord::Migration

   def up
    execute "ALTER TABLE candidates ADD PRIMARY KEY (id);"
  end

  def down
    execute "ALTER TABLE candidates DROP CONSTRAINT candidates_pkey;"
  end
end
