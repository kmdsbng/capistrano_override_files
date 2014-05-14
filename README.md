# CapistranoOverrideFiles

Setup stage owned files when cap deploy.


## Install

Write in your Gemfile.

```
gem 'capistrano_override_files'
```

## Example

If you want to replace stage owned /initializers/env.rb, put files like below.

```
config
└── override_files
    ├── production
    │   └── config
    │       └── initializers
    │           └── env.rb
    └── staging
        └── config
            └── initializers
                └── env.rb
```


This library depend on capistrano-multistage.

This project rocks and uses MIT-LICENSE.
