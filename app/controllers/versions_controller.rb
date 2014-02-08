#
# Milestone
# Copyright (C) 2012-2014 J. Polgar
# https://github.com/nirix
#
# Milestone is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 3 only.
#
# Milestone is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Milestone. If not, see <http://www.gnu.org/licenses/>.
#

class VersionsController < ApplicationController
  def index
    @milestones = current_project.versions
  end

  def show
    @milestone = current_project.versions.where(slug: params[:slug]).first
  end

  def new
    @version = Version.new
  end

  def create
    @version = Version.new version_params
    @version.project_id = current_project.id

    if @version.save
      redirect_to
    end
  end

  private

    def version_params
      params.require(:version).permit :name, :slug, :description, :status
    end
end