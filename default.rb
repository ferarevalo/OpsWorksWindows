################# Chef Recipe Ruby file ################################
#
# Cookbook:: p4
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
execute 'p4vinst64_download' do
         command 'powershell.exe Invoke-WebRequest -Uri http://www.perforce.com/downloads/perforce/r19.1/bin.ntx64/p4vinst64.exe -OutFile C:\Users\Administrator\Downloads\p4vinst64.exe'
end
execute 'p4vinst64_install' do
         command 'C:\Users\Administrator\Downloads\p4vinst64.exe /s /v/qn'
end
