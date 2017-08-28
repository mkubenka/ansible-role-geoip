describe file('/etc/cron.weekly/geoipupdate') do
  it { should be_mode 0755 }
end

describe command('geoiplookup -i -f /usr/share/GeoIP/GeoLiteCity.dat 3.0.0.1') do
  its(:stdout) { should match /US, CT/ }
  its(:exit_status) { should eq 0 }
end
