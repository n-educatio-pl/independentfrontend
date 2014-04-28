class symfony {
  include php::php

  include common::db::mysql
  include common::db::postgresql

  include misc::misc

  package { "ant": }

}