class AuthorSerializer < ApplicationSerializer
  attribute :id, key: author_id
	attribute :name
	attribute :createdAt
end