# frozen_string_literal: true
# require_relative nos arquivos
# create repository
# create controller
# create a router and router.run
require_relative 'repository'
require_relative 'controller'
require_relative 'task'
require_relative 'router'

repo = Repository.new
controller = Controller.new(repo)
router = Router.new(controller)

router.run
