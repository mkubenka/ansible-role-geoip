describe file('/etc/cron.weekly/geoipupdate') do
  it { should be_mode 0755 }
end

describe command('geoiplookup -i -f /usr/share/GeoIP/GeoLiteCity.dat 8.8.8.8') do
  its(:stdout) { should match /US, CA/ }
  its(:exit_status) { should eq 0 }
end
