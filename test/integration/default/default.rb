describe command('geoiplookup -i -f /usr/share/GeoIP/GeoIPCity.dat 3.0.0.1') do
  its(:stdout) { should match /US, WA/ }
  its(:exit_status) { should eq 0 }
end
