#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/musicbrainz-server/lib";
use DBDefs;

my $socket = DBDefs->RENDERER_SOCKET;

system("rm $socket");
system("/app/musicbrainz/script/start_renderer.pl --daemonize --socket $socket");
