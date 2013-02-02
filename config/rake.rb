# Configure the Rakefile's tasks.

# The company name - used for SSL certificates, and in srvious other places
COMPANY_NAME = "Nausicaa Media"

# License for new Cookbooks
# Can be :apachev2 or :none
NEW_COOKBOOK_LICENSE = :apachev2

###
# Useful Extras (which you probably don't need to change)
###

# The top of the repository checkout
TOPDIR = File.expand_path(File.join(File.dirname(__FILE__), ".."))

