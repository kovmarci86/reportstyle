reportstyle
===========

Generates coding conventions documentation from CheckStyle configuration.

- Converts a checkstyle XML configuration file to an HTML report, using XSLT transformations.
- Then replaces the messages to localized texts using Maven filter plugin.


It uses the eclipse-cs plugin resource files to show detailed messages.

Usage: mvn install

TODO:
-----

- Convert to a maven report plugin
- Add checkstyle.xml message text property
- Add run from command line feature
- Add better documentation
- Create a simple site
- Release to central maven repository
