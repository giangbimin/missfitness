json.extract! post, :id, :postname, :metakeywords, :metadescription, :metaurl, :metaimage, :content, :hide, :home, :created_at, :updated_at
json.url post_url(post, format: :json)