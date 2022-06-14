# frozen_string_literal: true

class Task::ProjectTasksComponent < ViewComponent::Base
  attr_reader :project

  renders_one :task, Task::TaskComponent

  def initialize(project)
    @project = project
  end

  def statuses_for_list
    Task.statuses.except(:archive)
  end
end
