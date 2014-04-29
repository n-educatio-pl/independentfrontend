class symfony {
  include common::db::mysql
  include common::db::postgresql

  include php::php

  include misc::misc

  package { "ant": }

}
