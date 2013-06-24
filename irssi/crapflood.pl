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
      if ($flood =~/-stallman/i) {
        Irssi::Windowitem::command($witem,"say  ----------------------------------------------------------------------------");
        Irssi::Windowitem::command($witem,"say / I'd just like to interject for a moment. What you're referring to as      \\");
        Irssi::Windowitem::command($witem,"say | Linux, is in fact GNU/Linux, or as I've recently taken to calling it,      |");
        Irssi::Windowitem::command($witem,"say | GNU plus Linux. Linux is not an operating system unto itself, but rather   |");
        Irssi::Windowitem::command($witem,"say | another free component of a fully functioning GNU system made useful by    |");
        Irssi::Windowitem::command($witem,"say | the GNU corelibs, shell utilities and vital system components comprising a |");
        Irssi::Windowitem::command($witem,"say \\ full OS as defined by POSIX.                                               /");
        Irssi::Windowitem::command($witem,"say  ----------------------------------------------------------------------------");
        Irssi::Windowitem::command($witem,"say           \\       @@@@@@ @");
        Irssi::Windowitem::command($witem,"say            \\    @@@@     @@");
        Irssi::Windowitem::command($witem,"say             \\  @@@@ =   =  @@");
        Irssi::Windowitem::command($witem,"say              \\@@@ @ _   _   @@");
        Irssi::Windowitem::command($witem,"say               @@@ @(0)|(0)  @@");
        Irssi::Windowitem::command($witem,"say              @@@@   ~ | ~   @@");
        Irssi::Windowitem::command($witem,"say              @@@ @  (o1o)    @@");
        Irssi::Windowitem::command($witem,"say             @@@    ######     @");
        Irssi::Windowitem::command($witem,"say             @@@   ##{+++}##   @@");
        Irssi::Windowitem::command($witem,"say            @@@@@ ## ##### ## @@@@");
        Irssi::Windowitem::command($witem,"say            @@@@@#############@@@@");
        Irssi::Windowitem::command($witem,"say           @@@@@@@###########@@@@@@");
        Irssi::Windowitem::command($witem,"say          @@@@@@@#############@@@@@");
        Irssi::Windowitem::command($witem,"say          @@@@@@@### ## ### ###@@@@");
        Irssi::Windowitem::command($witem,"say           @ @  @              @  @");
        Irssi::Windowitem::command($witem,"say             @                    @");
       }
}

Irssi::command_bind('crapflood', 'cmd_crapflood');

# EOF
