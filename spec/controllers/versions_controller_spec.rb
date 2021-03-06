require 'rails_helper'

RSpec.describe VersionsController, type: :controller do
  before :each do
    @project = create(:project)
  end

  it 'should render index' do
    get :index, project_id: @project.slug
    expect(response).to render_template 'versions/index'
  end

  it 'should render show' do
    version = create(:version)
    get :show, project_id: @project.slug, id: version.id
    expect(response).to render_template 'versions/show'
  end
end
