simplewiki
==========

Beautiful and easy to use wiki for teams.

Build based on Rails and Gollum.

### Development 
You need to have Docker and Fig installed.

Prepare environment: 
1. Build image: `fig build` (done only once, image rebuilding also needed if you need to update system packages or your Gemfile changed. 
2. Initialize database: `fig run web bundle exec rake db:create db:migrate`

To start env: `fig up` <- this will run app on 3000. 
If you are on Mac then you application port will be bind to VirtualBox IP, you can find get it here: `boot2docker ip`.

To run rake/rails tasks: `fin run web bundle exec rails g contoller Main` or `fig run web bundle exec rake routes`


### Contributing

This is a product being built by the [Assembly](https://assemblymade.com) community. You can help push this idea forward by visiting [https://assemblymade.com/buckets](https://assemblymade.com/buckets). We welcome any contributions to product design/direction or code.

Assembly products are made with contributions from the community. Assembly handles the boring stuff like hosting, support, financing, legal, etc. Once the product launches we collect the revenue and split the profits amongst the contributors.


1. Choose bounty on [Assembly](https://assembly.com/simplewiki/bounties) or create new discussion if you can't find task.
2. Fork repository
3. Create your feature branch (git checkout -b my-new-feature)
4. Commit your changes (git commit -am 'Added some feature')
5. Push to the branch (git push origin my-new-feature)
6. Create new Pull Request
