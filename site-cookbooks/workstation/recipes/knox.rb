#
# Cookbook Name:: workstation
# Recipe:: knox
#
# Copyright 2013, Ches Martin
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node[:platform]
when 'mac_os_x'
  download_path = "#{Chef::Config[:file_cache_path]}/Knox.zip"

  remote_file 'Knox.zip' do
    path download_path
    source 'https://d13itkw33a7sus.cloudfront.net/dist/K/Knox-2.2.0.zip'
    checksum 'c19c56a35d299a2cd85c612e1e99009bff9d7536ddd24f9d565910702be9742a'
  end

  execute 'Install Knox' do
    command "unzip #{download_path}"
    cwd '/Applications'
    not_if { ::File.directory? '/Applications/Knox.app' }
  end
end

