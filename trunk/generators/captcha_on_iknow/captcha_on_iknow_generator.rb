class CaptchaOnIknowGenerator < Rails::Generator::NamedBase
  def initizlize(runtime_args, runtime_options={})
    super
  end

  def manifest
    record do |m|
      m.class_collisions class_path, 'CaptchaOnIknowController', 'IKnowCaptcha'

      m.directory 'app/controllers'
      m.directory 'app/models'
      m.directory 'app/views/captcha_on_iknow'
      m.directory 'public/images'
      m.directory 'public/javascripts'
      m.directory 'public/stylesheets'

      m.template 'captcha_on_iknow_controller.rb', 'app/controllers/captcha_on_iknow_controller.rb'
      m.template 'i_know_captcha.rb', 'app/models/i_know_captcha.rb'
      m.template '_sound.html.erb', 'app/views/captcha_on_iknow/_sound.html.erb'
      m.template '_text.html.erb', 'app/views/captcha_on_iknow/_text.html.erb'
      m.template 'reload.gif', 'public/images/reload.gif'
      m.template 'replay.gif', 'public/images/replay.gif'
      m.template 'type.gif', 'public/images/type.gif'
      m.template 'volume.gif', 'public/images/volume.gif'
      m.template 'captcha_on_iknow.js', 'public/javascripts/captcha_on_iknow.js'
      m.template 'captcha_on_iknow.css', 'public/stylesheets/captcha_on_iknow.css'
    end
  end
end

