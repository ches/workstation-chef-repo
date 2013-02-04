#
# Cookbook Name:: workstation
# Recipe:: hipchat
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
  # Well of *course* Adobe has a non-standard installer! It's an .app, not a
  # dmg or mpkg -- let's just download the bits so the human can pick up from there...
  remote_file "#{ENV['HOME']}/Downloads/AdobeAIR.dmg" do
    source 'http://airdownload.adobe.com/air/mac/download/3.5/AdobeAIR.dmg'
    checksum '94259392b12759589b75c5cfd4882681c7bfc14c937fa204d56d26a1b6aa64fd'
    not_if { ::File.directory? '/Applications/HipChat.app' }
  end

  remote_file "#{ENV['HOME']}/Downloads/hipchat.air" do
    source 'http://downloads.hipchat.com/hipchat.air'
    checksum '45955183b754d79a5b0b3974e3e770b080f7861eab6f957828e7db52768c3cea'
    not_if { ::File.directory? '/Applications/HipChat.app' }
  end
end

