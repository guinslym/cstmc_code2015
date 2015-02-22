module ApplicationHelper


 def language_selector
		if I18n.locale == :en
			link_to "Fr", url_for(:locale => 'fr'), :class => "btn btn-info", :target=>"_blank"
		else
			link_to "En", url_for(:locale => 'en'), :class => "btn btn-info", :target=>"_blank"
		end
	end 


end
