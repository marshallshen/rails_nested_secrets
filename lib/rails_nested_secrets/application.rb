module DotSecrets
  module Application
    @@loaded_nested_secrets = false

    def secrets
      super

      unless @@loaded_nested_secrets
        @secrets.deep_transform_values!
        @@loaded_nested_secrets = true
      end

      @secrets
    end
  end
end
