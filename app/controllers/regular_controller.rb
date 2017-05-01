class RegularController < ApplicationController
  def index
    Raven.user_context(
      id: 4,
      email: 'joe@example.com',
      username: 'jexample'
    )
    case rand(9)
    when 0
      repeat_this_what_you_said_there
    when 1
      divide_by_zero
    when 2
      raise_the_roof
    when 3
      runtime_error
    when 4
      to_be
    when 5
      aint_nobody
    when 6
      something_fun
    else
      loco('yum')
    end
  end

  def divide_by_zero
    1/0
  end

  def raise_the_roof
    raise the_roof
  end

  def runtime_error
    raise RuntimeError.new('run faster!')
  end

  def to_be
    hammy = 'cool guy'
    hammy.or_not_to_be?
  end

  def aint_nobody
    got_time = 'for that'
    aint_nobody(got_time).for_that
  end

  def loco(moco)
    if moco == 'M'
      raise ThreadError.new('you got gravy on those threads')
    end
    loco([1].map { (65 + rand(26)).chr  }.join)
  end

  def something_fun
    Raven.capture_message('Boom', level: 'fatal')
    index
  end

  def repeat_this_what_you_said_there
    repeat_what?
  end

  def repeat_what?
    repeat_this_what_you_said_there unless rand(20) == 0
    raise IndexError::StopIteration.new('Loop focus spread index violated formation circle freeze edition for cause unknown')
  end
end
