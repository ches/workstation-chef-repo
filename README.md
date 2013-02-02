A Chef Solo repository for configuring a workstation, currently Mac OS X only.

Usage
-----

The cookbooks will install the Command Line Tools for Xcode and other build
essentials, but you need to get Chef installed before proceeding. The Chef
Full Installer will take care of that:

    $ curl -L https://www.opscode.com/chef/install.sh | sudo bash

Then clone this repo and `cd` into the directory.

```sh
$ gem install bundler
$ bundle
$ berks install --path cookbooks
$ chef-solo -c config/solo.rb -j config/workstation.json
```

Acknowledgements
----------------

Inspired by [Joshua Timberman's articles on the subject][1], and the work of
many to make Opscode's official cookbooks OS X-friendly.

[1]: http://jtimberman.housepub.org/blog/2012/07/29/os-x-workstation-management-with-chef/

