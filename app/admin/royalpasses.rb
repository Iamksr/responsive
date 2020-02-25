ActiveAdmin.register Royalpass do
  permit_params :name, :rp, :pts, :rnk

index :title => 'Royalpass Dashboard' do 
      selectable_column
      id_column
      column "Players Name" , :name                     
      column "Royalpass", :rp 
      column "Points", :pts   
      column "Rank", :rnk 
      # column "Kills", :die  
      actions name: "Manage"
    end

    filter :name , :label => 'Players Name'
    filter :rp, :label => 'Royalpass'
    filter :rnk, :label => 'Rank'
end 
