json.array!(@legalissues) do |legalissue|
  json.extract! legalissue, :id, :name, :issue, :comment, :done
  json.url legalissue_url(legalissue, format: :json)
end
