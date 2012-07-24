# Irctc

Ever spent time dumbly calculating when IRCTC.com will open ticket counter for
Diwali or some important festivals and holidays?

I did.

That's why I built this handy utility. Now don't miss any more money on
expensive "Redbuses"!

## Installation

    $ gem install irctc

## Usage

It's a command-line awesomness.

To find when the counter opens for a future date, use the `-f` switch:

    irctc -f 'nov 12, 2012'

To find for what future date, the counter opens for the given date, use the
`-p` switch:

    irctc -p 'jul 24, 2012'

## Contributing

More awesome functionality can be added! For example, a gmail integration would
be great. It could send mail for the interested people for their preferred
days. I'm working on it already. Feel great to provide a helping hand.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
