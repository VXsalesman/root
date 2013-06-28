#!/usr/bin/perl
use strict;
use warnings;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = '0.6';
%IRSSI = (
author          =>      "VX",
contact         =>      "Let's not.",
name            =>      "Extended Fantasy Commands",
description     =>      "More fantasy commands, by default works for UnrealIRCd + Atheme",
license         =>      "GPL. Or none. Ask me how much I care.",
);



Irssi::signal_add 'message public', 'sig_message_public';
sub sig_message_public {
     my ($server, $msg, $nick, $data, $target, $victim) = @_;
     my $command = $msg;
     my $command2 = $msg;
     my $command3 = $msg;
     my $command4 = $msg;
     my $command5 = $msg;
     if ($target =~ m/#(?:hub|boychats)/) { # works here. should have at least SOP
     if ($nick =~ m/(?:\bVX\b|\bVXsalesman\b)/) { # define restricted user access
         if ($msg =~ m/^`founder /) {
         $command =~ s/^`founder //g;
           $server->command("mode $target +q $command +o $command");
          }
         elsif ($msg =~ m/^`defounder /) {
         $command =~ s/^`defounder //g;
           $server->command("mode $target -q $command -a $command -o $command -h $command -v $command");
          }
        }
      elsif ($nick =~ m/.*/) {
         if ($msg =~ m/^`founder/) {
           $server->command("msg $target I'm afraid I can't let you do that, $nick. The risk is unacceptable.");
          }
         if ($msg =~ m/^`defounder/) {
           $server->command("msg $target I'm afraid I can't let you do that, $nick. The risk is unacceptable.");
          }
         }
     if ($nick =~ m/(?:VX|VXsalesman|poko|poko-afk|hipcrime|Trixie|mike|gaybo_the_clown|martha_the_stewart)/) { # define user access
         if ($msg =~ m/^`help/i) {
           $server->command("msg $nick (de)founder (de)admin (de)op (de)halfop (de)voice (de)silence topic topicappend topicprepend kick ban kickban");
          }
         elsif ($msg =~ m/^`op /) { # temp channel access
         $command =~ s/^`op //g;
           $server->command("mode $target +o $command");
          }
         elsif ($msg =~ m/^`deop /) {
         $command =~ s/^`deop //g;
           $server->command("mode $target -o $command -h $command -v $command");
          } 
         elsif ($msg =~ m/^`voice /) {
         $command =~ s/^`voice //g;
           $server->command("mode $target +v $command");
          }
         elsif ($msg =~ m/^`devoice /) {
         $command =~ s/^`devoice //g;
           $server->command("mode $target -v $command");
          }
         elsif ($msg =~ m/^`halfop /) {
         $command =~ s/^`halfop //g;
           $server->command("mode $target +h $command");
          }
         elsif ($msg =~ m/^`dehalfop /) {
         $command =~ s/^`dehalfop //g;
           $server->command("mode $target -h $command -v $command");
          }
         elsif ($msg =~ m/^`admin /) {
         $command =~ s/^`admin //g;
           $server->command("mode $target +a $command");
          }
         elsif ($msg =~ m/^`deadmin /) {
         $command =~ s/^`deadmin //g;
           $server->command("mode $target -a $command -o $command -h $command -v $command");
          }
         elsif ($msg =~ m/^`kick /) { # channel control
         $command =~ s/^`kick //g;
           $server->command("kick $target $command");
          }
         elsif ($msg =~ m/^`ban /) {
         $command =~ s/^`ban //g;
           $server->command("mode $target +b $command");
          }
         elsif ($msg =~ m/^`kickban /) {
         $command =~ s/^`kickban //g;
           $server->command("kickban $target $command");
          }
         elsif ($msg =~ m/^`topic /) { # channel settings
         $command =~ s/^`topic //g;
           $server->command("topic $target $command");
          }
         elsif ($msg =~ m/^`topicappend /) {
         $command =~ s/^`topicappend //g;
           $server->command("msg chanserv topicappend $target $command");
          }
         elsif ($msg =~  m/^`topicprepend /) {
         $command =~ s/^`topicprepend //g;
           $server->command("msg chanserv topicprepend $target $command");
          }
         elsif ($msg =~ m/^`silence/) {
           $server->command("mode $target +m");
          }
         elsif ($msg =~ m/^`desilence/) {
           $server->command("mode $target -m");
          }
         elsif ($msg =~ m/^`axx add /) {
           $command =~ s/^`axx add //g;
           $server->command("msg chanserv access $target $command");
          }
         elsif ($msg =~ m/^`axx del /) {
                if ($msg =~ m/^`axx del VX/) {
                $server->command("msg $target I'm afraid I can't let you do that, $nick. The risk is unacceptable.");
          } else {
           $command =~ s/m^`axx del //g;
           $server->command("msg chanserv access $target $command");
          }
        }
    }
  }
}
