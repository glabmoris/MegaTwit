#!/usr/bin/perl

use warnings;
use strict;
use Net::Twitter;
use AI::MegaHAL;

# Spawn new bot brain
my $megahal = AI::MegaHAL->new('Path' => './', 'Banner' => 0, 'Prompt' => 0, 'Wrap' => 0, 'AutoSave' => 0);

#Learn corpus
while(<STDIN>){
	my $reply = $_;
	$megahal->learn($reply);
}

print $megahal->do_reply("La moustache de Manon Masse") . "\n";
