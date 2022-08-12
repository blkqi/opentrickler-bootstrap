
GitHub Gists don't allow for the `/` character in the filename, so I had to replace them with spaces.
Examples:

    etc fstab -> /etc/fstab
    usr bin bthelper -> /usr/bin/bthelper

## Dependencies
All system dependencies should be listed in the `opentrickler_prod_defconfig` file below, which may require some interpretation.
The following are packages that I had to add manually since they were not already included in Buildroot.

- python-connexion (2.7.0)
- python-pybleno (0.11)
- python-pymemcache (3.4.0)
- websocketd (0.4.1)