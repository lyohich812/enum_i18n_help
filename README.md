# EnumI18nHelp

Help ActiveRecord::Enum feature to work fine with I18n.

As you know in Rails 4.1.0 , ActiveRecord supported Enum method. But it doesn't work fine with I18n

This gem can help you work fine with Enum and I18n

## Installation

Add this line to your application's Gemfile:

    gem 'enum_i18n_help'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install enum_i18n_help

## Usage


Required Rails 4.1.x

In model file:

```ruby
class Order < ActiveRecord::Base
  enum status: { "nopayment" => 0, "finished" => 1, "failed" => 2, "destroyed" => 3 }

  def self.restricted_statuses
    statuses.except :failed, :destroyed
  end
end
```

You can call:

```ruby
order = Order.first
order.update_attribute :status, 0
order.status
# > nopayment
order.status_i18n # if you have an i18n file defined as following, it will return "未支付".
# > 未支付
```

You can also fetch the translated enum collection, if you need to:

```ruby
Order.statuses_i18n
```

I18n local file example:

```yaml
# config/locales/model/order.zh-cn.yml
zh-cn:
  enums:
    order:
      status:
        finished: 完成
        nopayment: 未支付
        failed: 失败
        destroyed: 已删除
```


## Notice
If you want to use enum feature, field of your table can't be named with `reference`.
When it is named with 'reference' and define enum in model file, there will be raised an error as below:

    NoMethodError: super: no superclass method `enum' for...


## Thanks

Thanks for all the [contributors](https://github.com/lyohich812/enum_i18n_help/graphs/contributors).

## Contributing

1. Fork it ( https://github.com/lyohich812/enum_i18n_help/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Run test `rspec`
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
