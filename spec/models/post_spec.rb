require 'spec_helper'

describe Post do

  it 'should be able to find all the upvotes for the post' do
    post = Post.create(title: 'Hello world')

    post.stub upvotes: [double(:vote), double(:vote)]
    post.stub downvotes: [double(:vote)]

    expect(post.up).to eq 2
  end

  it 'should be able to find all the downvotes for the post' do
    post = Post.create(title: 'Hello world')

    post.stub upvotes: [double(:vote), double(:vote)]
    post.stub downvotes: [double(:vote)]

    expect(post.down).to eq 1
  end

  it 'should correctly calculate the positive votes' do
    post = Post.create(title: 'Hello world')

    post.stub upvotes: [double(:vote), double(:vote)]
    post.stub downvotes: [double(:vote)]

    expect(post.total_votes).to eq 1
  end

  it 'should correctly about to calculate negative votes' do
    post = Post.create(title: 'Hello world')

    post.stub upvotes: [double(:vote)]
    post.stub downvotes: [double(:vote), double(:vote)]

    expect(post.total_votes).to eq -1
  end

  it 'should return nill if there are no votes' do
    post = Post.create(title: 'Hello world')

    post.stub upvotes: []
    post.stub downvotes: []

    expect(post.total_votes).to be_nil
  end

end