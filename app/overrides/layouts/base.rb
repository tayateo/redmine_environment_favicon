Deface::Override.new :virtual_path  => 'layouts/base',
                     :name              => 'change-environment-favicon',
                     :original          => 'fe3189c8cb34a6f01575263fa73a181e4e936023',
                     :replace           => "erb[loud]:contains('favicon')",
                     :partial           => 'layouts/environment_favicon'
