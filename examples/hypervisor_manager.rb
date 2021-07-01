# (c) Copyright 2021 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.
# NOTE: This resources will work for client version greater than API800.
# NOTE: Server Certificate for '<serverIp>' should be added as a pre-requisite

my_client = {
  url: ENV['ONEVIEWSDK_URL'],
  user: ENV['ONEVIEWSDK_USER'],
  password: ENV['ONEVIEWSDK_PASSWORD'],
  api_version: 3000
}

# No action will be performed
oneview_hypervisor_manager '<serverIp>' do
  client my_client
  action :none
end


# Create Hypervisor Manager
oneview_hypervisor_manager '<serverIp>' do
  client my_client
  data(
       username: '<username>',
       password: '<password>')
  action :create
end

# Updates Hypervisor Manager Registration, If doesn't exist then it will create.
oneview_hypervisor_manager '<serverIp>' do
  client my_client
  data(
    username: '<username>',
    password: '<password>',
    displayName: 'vcenter',
    force: true
  )
  action :update_registration
end

# Deletes the existing Hypervisor Manager
oneview_hypervisor_manager '<serverIp>' do 
  client my_client
  action :delete
end
