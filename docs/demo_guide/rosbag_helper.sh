#!/usr/bin/env bash

###############################################################################
# Copyright 2017 The Apollo Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${DIR}"

DEMO_BAG_URL="https://github.com/ApolloAuto/apollo/releases/download/v1.5.0/demo_1.5.np.bag";

function print_usage() {
    echo "bash rosbag_helper.sh download: retrieve rosbag file from remote"
}

function main() {
    local cmd=$1
    shift
    case $cmd in
        download)
            wget -v $DEMO_BAG_URL -O demo_1.5.np.bag
            ;;
            *)
            print_usage
            ;;
    esac
}

main $@