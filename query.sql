select tags.name, authors.name, quotes.text, unique(quotes.text_hash) from tags, quotes, authors, quote_tag_assoc where
        (tags.id=quote_tag_assoc.tag_id and quote_tag_assoc.quote_id=quotes.id and authors.id=quotes.author_id)
    order by tags.name


