PROJECT = gen_rpc
PROJECT_DESCRIPTION = Erlang gen_rpc
PROJECT_VERSION = 1.0

DEPS = ssl_verify_fun
dep_ssl_verify_fun = git https://github.com/deadtrickster/ssl_verify_fun.erl

BUILD_DEPS = sync hut
dep_sync  = git git://github.com/rustyio/sync.git
dep_hut   = git https://github.com/turtleDeng/hut

NO_AUTOPATCH = cuttlefish

ERLC_OPTS += +debug_info
ERLC_OPTS += +'{parse_transform, lager_transform}'

TEST_ERLC_OPTS += +debug_info
TEST_ERLC_OPTS += +'{parse_transform, lager_transform}'

COVER = true

include erlang.mk

