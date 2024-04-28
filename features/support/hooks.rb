After do |scn|
  image = page.save_screenshot("results/screenshots/#{scn.name}.png")
  attach(image, 'image/png')

  Capybara.current_session.driver.quit
end

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'results/report.json'
    config.report_path = 'results/report'
    config.report_types = [:html]
    config.report_title = 'Relatório teste técnico'
    config.compress_images = false
    config.color = 'indigo'
  end
  ReportBuilder.build_report
end