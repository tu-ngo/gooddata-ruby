# encoding: UTF-8
#
# Copyright (c) 2010-2016 GoodData Corporation. All rights reserved.
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

require_relative '../base_type'

module GoodData
  module LCM2
    module Type
      class ObjectType < BaseType
        CATEGORY = :scalar
        INTERNAL_TYPE = Hash

        def check(_value)
          true
        end
      end
    end
  end
end
