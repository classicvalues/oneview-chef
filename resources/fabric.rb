# (c) Copyright 2016 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

OneviewCookbook::ResourceBaseProperties.load(self)

# Vlan range containing the 'start' and the 'length' of the range
property :reserved_vlan_range, Hash

default_action :none

action :none do
end

action :set_reserved_vlan_range do
  OneviewCookbook::Helper.do_resource_action(self, :Fabric, :set_reserved_vlan_range)
end
