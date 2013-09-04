module Views
	module Articles
		class Edit < ActionView::Mustache
			include Rails.application.routes.url_helpers

			def update_article_url
				article_path(@article)
			end
		end
	end
end