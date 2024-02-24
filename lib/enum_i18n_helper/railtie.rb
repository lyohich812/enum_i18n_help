module EnumI18nHelper
  class Railtie < Rails::Railtie
    initializer "enum_i18n_helper.i18n" do
      ActiveSupport.on_load(:active_record) do
        extend EnumI18nHelper::I18n
      end
    end
  end
end
