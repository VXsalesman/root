#!/usr/bin/perl
use strict;
use warnings;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = '0.5';
%IRSSI = (
 	author		=>	"VX",
	contact		=>	"Let's not.",
	name		=>	"Auto Spam",
	description	=>	"PRIVMSG any and every user when they chat.",
	license		=>	"GPL. Or none. Ask me how much I care.",
);	

Irssi::signal_add 'message public', 'sig_message_public';
sub sig_message_public {
     my ($server, $msg, $nick, $nick_addr, $target) = @_;
     if ($target =~ m/#(?:chanA|chanB)/) { # only functions in these channels
       if ($msg =~ m/\.*/i {
	$server->command("msg $nick HI THERE JOIN #DICKLICKERS FOR FREE OPS");
	}
}
# EOF
