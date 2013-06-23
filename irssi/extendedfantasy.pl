#!/usr/bin/perl
use strict;
use warnings;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = '0.5';
%IRSSI = (
author          =>      "VX",
contact         =>      "Let's not.",
name            =>      "Extended Fantasy Commands",
description     =>      "More fantasy commands, by default works for UnrealIRCd + Atheme",
license         =>      "GPL. Or none. Ask me how much I care.",
);



Irssi::signal_add 'message public', 'sig_message_public';
sub sig_message_public {
     my ($server, $msg, $nick, $data, $target) = @_;
     my $command = $msg;
     if ($target =~ m/#(?:chanA|chanB)/) { # works here. should have SOP
     if ($nick =~ m/(?:VX|VXsalesman)/) { # define access
         if ($msg =~ m/^`op/) {
         $command =~ s/^`op/\+o/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`deop/) {
         $command =~ s/^`deop/\-o/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`voice/) {
         $command =~ s/^`voice/\+v/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`devoice/) {
         $command =~ s/^`devoice/\-v/g;
           $server->command("mode $target $command");
	  }
         elsif ($msg =~ m/^`halfop/) {
         $command =~ s/^`halfop/\+h/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`dehalfop/) {
         $command =~ s/^`dehalfop/\-h/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`admin/) {
         $command =~ s/^`admin/\+a/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`deadmin/) {
         $command =~ s/^`deadmin/\-a/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`founder/) {
         $command =~ s/^`founder/\+q/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`defounder/) {
         $command =~ s/^`defounder/\-q/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`kick/) {
         $command =~ s/^`kick//g;
           $server->command("kick $target $command");
          }
	 elsif ($msg =~ m/^`ban/) {
         $command =~ s/^`ban/\+b/g;
           $server->command("mode $target $command");
          }
         elsif ($msg =~ m/^`kickban/) {
         $command =~ s/^`kickban//g;
           $server->command("kickban $target $command");
          }
        }
    }
}
