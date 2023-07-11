FROM ruby:3.2

# cache gems
COPY lib lib
COPY cld.gemspec Gemfile Gemfile.lock ./
RUN bundle

# copy rest
COPY ext ext
COPY spec spec
COPY .rspec Rakefile ./

# install cld
RUN git clone https://github.com/mzsanford/cld.git
RUN cd cld && libtoolize && ./configure && aclocal && automake --add-missing && make && make install
# RUN cd cld && autoreconf -f -i -Wall,no-obsolete && ./configure && make && make install

#RUN rake
