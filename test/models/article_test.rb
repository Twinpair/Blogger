require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test "should not save article without params" do
    article = Article.new()
    assert_not article.save
  end

  test "should not save article without title" do
    article = Article.new(body: "Body", author_name: "Author")
    assert_not article.save
  end

  test "should not save article without body" do
    article = Article.new(title: "Title", author_name: "Author")
    assert_not article.save
  end

  test "should not save article without a author name" do
    article = Article.new(title: "Title", body: "Body")
    assert_not article.save
  end

  test "should save article with required params" do
    article = Article.new(title: "Title", body: "Body", author_name: "Author")
    assert article.save
  end

end
