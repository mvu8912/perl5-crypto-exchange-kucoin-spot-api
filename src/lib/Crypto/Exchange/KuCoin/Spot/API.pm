package Crypto::Exchange::KuCoin::Spot::API;

=head1 NAME

Crypto::Exchange::KuCoin::Spot::API - KuCoin Spot API

=head1 USAGE

 my $kucoin = Crypto::Exchange::KuCoin::Spot::API->new;

Get Prices

 $hash = $kucoin->prices(pair => { coin => 'XRP', base => 'GBP' });

 Got: $hash = { last_price => 1234, pair => {coin => 'XRP', base => 'GBP'} }

Get Wallet Balances

 $hash = $kucoin->balances();

 Got: $hash = {
    XRP => { available => 123, in_order => 0, staking => 0 },
    GBP => { available => 321, in_order => 0, staking => 0 },
 }

Get the opening orders

 $list = $kucoin->list_open_orders(pair => { coin => 'XRP', base => 'GBP' });

 Got: $list = [
    {
        pair => { coin => 'XRP', base => 'GBP' },
        order_id => 123,
        external_id => 'YOUR OWN DEFINED ID',
        buy_or_sell => 'buy|sell',
        order_qty   => 55,
        filled_qty  => 54,
        timestamp   => 131321321321,
        filled_qty  => 131231321321,
    },
    ...
 ];

=head2 open source

 git@github.com:mvu8912/perl5-crypto-exchange-kucoin-spot-api.git

=cut

use Moo;


no Moo;

1;
