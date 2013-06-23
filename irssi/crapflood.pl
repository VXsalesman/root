#!/usr/bin/perl
use strict;
use warnings;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = "0.1";
%IRSSI = (
  author        => 'VX',
  contact       => 'LOL no',
  name          => 'Crap Flood',
  description   => 'Floods a channel with annoying crap.',
  license       => 'GPL',
);

sub cmd_crapflood {
   my ($data, $server, $witem) = @_;
   my $flood = $data;

      if ($flood =~ /-tux/i) {
        Irssi::Windowitem::command($witem,"say                  .88888888:.");
        Irssi::Windowitem::command($witem,"say                 88888888.88888.");
        Irssi::Windowitem::command($witem,"say               .8888888888888888.");
        Irssi::Windowitem::command($witem,"say               888888888888888888");
        Irssi::Windowitem::command($witem,"say               88' _`88'_  `88888");
        Irssi::Windowitem::command($witem,"say               88 88 88 88  88888");
        Irssi::Windowitem::command($witem,"say               88_88_::_88_:88888");
        Irssi::Windowitem::command($witem,"say               88_88_::_88_:88888");
        Irssi::Windowitem::command($witem,"say               88_88_::_88_:88888");
        Irssi::Windowitem::command($witem,"say               88:::,::,:::::8888");
        Irssi::Windowitem::command($witem,"say               88`:::::::::'`8888");
        Irssi::Windowitem::command($witem,"say              .88  `::::'    8:88.");
        Irssi::Windowitem::command($witem,"say             8888            `8:888.");
        Irssi::Windowitem::command($witem,"say           .8888'             `888888.");
        Irssi::Windowitem::command($witem,"say          .8888:..  .::.  ...:'8888888:.");
        Irssi::Windowitem::command($witem,"say         .8888.'     :'     `'::`88:88888");
        Irssi::Windowitem::command($witem,"say        .8888        '         `.888:8888.");
        Irssi::Windowitem::command($witem,"say       888:8         .           888:88888");
        Irssi::Windowitem::command($witem,"say     .888:88        .:           888:88888:");
        Irssi::Windowitem::command($witem,"say     8888888.       ::           88:888888");
        Irssi::Windowitem::command($witem,"say     `.::.888.      ::          .88888888");
        Irssi::Windowitem::command($witem,"say    .::::::.888.    ::         :::`8888'.:.");
        Irssi::Windowitem::command($witem,"say   ::::::::::.888   '         .::::::::::::");
        Irssi::Windowitem::command($witem,"say   ::::::::::::.8    '      .:8::::::::::::.");
        Irssi::Windowitem::command($witem,"say  .::::::::::::::.        .:888:::::::::::::");
        Irssi::Windowitem::command($witem,"say  :::::::::::::::88:.__..:88888:::::::::::'");
        Irssi::Windowitem::command($witem,"say   `'.:::::::::::88888888888.88:::::::::'");
        Irssi::Windowitem::command($witem,"say         `':::_:' -- '' -'-' `':_::::'`");
       }
}

Irssi::command_bind('crapflood', 'cmd_crapflood');

# EOF

