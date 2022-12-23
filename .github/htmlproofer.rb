#!/usr/local/bin/ruby
require 'html-proofer'

options = {
  hydra: { max_concurrency: 50 },
  typhoeus: {
    ssl_verifypeer: false,
    ssl_verifyhost: 0,
    timeout: 120,
    connecttimeout: 30,
    cookiefile: ".cookies",
    cookiejar: ".cookies"
  },
  ignore_urls: []
}

HTMLProofer.check_directory('./_site', options).run
