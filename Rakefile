
def run_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\"")
end

task :windows_10_ie_11 do
  run_tests('Windows 10', 'internet explorer', '11')
end

task :windows_7_firefox_latest do
  run_tests('Windows 7', 'firefox','latest')
end

task :os_x_10_14_chrome_latest do
  run_tests('OS X 10.14', 'chrome', 'latest')
end

task :ubuntu_20_04_chrome_latest do
  run_tests('Ubuntu-20.04 10.14', 'chrome', 'latest')
end
task :runner do
  Rake::Task[:ubuntu_20_04_chrome_latest].invoke('ubuntu_20_04_chrome_latest', 'chrome', 'latest')
end

