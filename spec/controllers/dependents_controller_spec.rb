require 'spec_helper'

describe DependentsController do
  let(:dependent) {
      {first_name: 'test', last_name: 'best', date_of_birth: Time.now}
  }

  describe "GET index" do
    before(:each) do
      @dependent = Dependent.create! dependent
    end
    it "assigns all dependent as @dependent" do
      get :index,{},{}
      assigns(:dependents).should eq([@dependent])
    end
  end

  describe "GET show" do
    before(:each) do
      @dependent = Dependent.create! dependent
    end

    it "assigns the requested dependent as @dependent" do
      get :show, {id:  @dependent.to_param}, {}
      assigns(:dependent).should eq(@dependent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created dependent as @dependent" do
        post :create, dependent: dependent
        assigns(:dependent).should be_valid
      end

      it "should redirect you to the dependent show page" do
        post :create, dependent: dependent
        response.should redirect_to(dependent_path(assigns[:dependent]))
      end
  end

  describe "without valid params" do
    let(:dependent) {
      {first_name: '', last_name: 'best', date_of_birth: Time.now}
    }
    it "should notify that a first_name is required" do
      post :create, dependent: dependent
      assigns(:dependent).should_not be_valid
    end

    it "should notify that a last_name is required" do
      dependent[:last_name] = ''
      dependent[:first_name] = 'test'
      post :create, dependent: dependent
      assigns(:dependent).should_not be_valid
    end
  end

end
end

