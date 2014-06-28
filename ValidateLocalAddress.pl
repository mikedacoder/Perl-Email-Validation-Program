#!/usr/bin/perl
use strict;
use warnings;

print "Content-type: text/html\n\n";
print "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN'\n";
print "'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>\n";
print "<html xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'\n>";
print "<head><title>Validate Local Address</title>";
print "<meta http-equiv='content-type' content='text/html; charset=UTF-8' />";
print "</head>\n<body>";

print "<h1>Validate Local Address</h1><hr />";

	# Declare array of email addresses.
	my @email = qw(
		jsmith123@example.org
		john.smith.mail@example.org
		john.smith@example.org
		john.smith@example
		jsmith123@mail.example.org);
	
	# Open a paragraph for proper formatting.		
	print "<p>";
	
	# Foreach loop to go through each email
	# address from the @email array and display
	# which ones are or are not valid e-mail addresses.		
	foreach my $emailAddress (@email){
		print "The email address &ldquo;" 
			. $emailAddress . "&rdquo; ";
		if($emailAddress =~ /^(([A-Za-z]+\d+)|([A-Za-z]+\.[A-Za-z]+))@((mail\.)?)example\.org$/){
				print " is a valid e-mail address.<br />";
		}
		else{
			print " is not a valid e-mail address.<br />";
		} 
	} 
	
	# Close the paragraph tag.
	print "</p>\n";

print "</body>\n</html>";

exit;
