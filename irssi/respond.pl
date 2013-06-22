#!/usr/bin/perl
use strict;
use warnings;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = '0.5';
%IRSSI = (
 	author		=>	"VX",
	contact		=>	"Let's not.",
	name		=>	"Stupidly Simple Irssi Response Script",
	description	=>	"See above.",
	license		=>	"GPL. Or none. Ask me how much I care.",
);	

Irssi::signal_add 'message public', 'sig_message_public';
sub sig_message_public {
     my ($server, $msg, $nick, $nick_addr, $target) = @_;
     if ($target =~ m/#(?:chanA|chanB)/) { # only functions in these channels
       if ($msg =~ m/\b(hi|hello)\b/i {
	$server->command("msg $target \x02And hello to you.");
	}
       elsif ($msg =~ m/\b(bye|goodbye|so long)\b/i {
	$server->command("msg $target \x02Goodnight, sweet prince.");
	}
       elsif ($msg =~ m/\b(die|dead|death)\b/i) {
        $server->command("msg $target \x02THE EMPEROR PROTECTS.");
        }
       elsif ($msg =~ m/\brip\b/i) {
        $server->command("msg $target \x02IM PRESSIN CHARGES");
        }
   }
}

# Easily expanded. Avoids golfing. \x02 bolds text. Can be very floody.
#
# If you don't know how to alter / expand the triggers and responses,
#
# you should probably gb2mIRC.
#
# EOF
