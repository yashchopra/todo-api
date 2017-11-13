require 'rails_helper'

RSpec.describe TodoList, type: :model do
  item_1 = TodoList.create(item: 'Complete Homework', completed: 'false')
  item_2 = TodoList.create(item: nil, completed: 'false')

  it 'An item should always be present' do
    expect(item_1).to be_valid
    expect(item_2).to_not be_valid
  end
end

RSpec.describe TodoListsController, type: :controller do
  it "Create status is returned to be successful" do
    post :create
    expect(response).to have_http_status(200)
  end

  it "returns all my tasks" do
    get :index
    expect(assigns(:items)).to eq(TodoList.all)
  end
end