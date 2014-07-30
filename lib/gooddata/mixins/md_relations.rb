# encoding: UTF-8

module GoodData
  module Mixin
    module MdRelations
      def dependency(uri, key = nil)
        GoodData::MdObject.dependency(obj_id, key)
      end

      # Checks for dependency
      def dependency?(type, uri)
        GoodData::MdObject.dependency?(type, uri)
      end

      # Returns which objects uses this MD resource
      def usedby(key = nil, project = GoodData.project)
        dependency("#{project.md['usedby2']}/#{obj_id}", key)
      end

      alias_method :used_by, :usedby

      # Returns which objects this MD resource uses
      def using(key = nil)
        dependency("#{GoodData.project.md['using2']}/#{obj_id}", key)
      end

      def usedby?(obj)
        GoodData::MdObject.used_by?(obj)
      end

      alias_method :used_by?, :usedby?

      # Checks if obj is using this MD resource
      def using?(obj)
        GoodData::MdObject.dependency?(:using, obj)
      end
    end
  end
end
