Exporting RSS Example

This example of the SimpleRSS takes a predefined input (in reality you would have this from a data source, like a db for instance, but so simplicties sake it is hard coded here) and creates an XML output which is saved and then displayed using a TWebBrowser component.

Then it clears itself and imports the XML file and re-generates it and saves it again and displays in in the second twebbrowser window.

Why do the import/export again?
This was originally designed as a test application for SimpleRSS. The first part was to test the exporting of a rss feed and the second part was to test the importing. Exporting it a second time and verifing the output matched is a easy way to make sure the import works the same as the export.

For more information on SimpleRSS see http://www.sourceforge.net/projects/simplerss/

Robert MacLean
robert@sadev.co.za
www.sadev.co.za