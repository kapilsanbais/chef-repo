
createusers = data_bag_item('users','kapil')
#	search(:users,'id:*').each do |createusers|

	user createusers["id"] do
		comment   createusers["comment"]
		uid	  createusers["uid"]
		end 
	#end 
