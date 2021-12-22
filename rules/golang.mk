# Python

GOLANG_MAIN_VERSION = 1.15
GOLANG_VERSOIN = 1.15.15-1
GOLANG_VERSOIN_FIPS = $(GOLANG_VERSOIN)+fips
GOLANG = golang-$(GOLANG_MAIN_VERSION)_$(GOLANG_VERSOIN_FIPS)_all.deb
$(GOLANG)_SRC = $(SRC_PATH)/golang
$(GOLANG)_DEBIAN = $(SRC_PATH)/golang-debian/debian
$(GOLANG)_DEPENDS = $(SYMCRYPT_OPENSSL)

MAIN_TARGETS += $(GOLANG)
$(GOLANG)_DERIVED_DEBS = golang-$(GOLANG_MAIN_VERSION)-src_$(GOLANG_VERSOIN_FIPS)_$(ARCH).deb
$(GOLANG)_DERIVED_DEBS += golang-$(GOLANG_MAIN_VERSION)-go_$(GOLANG_VERSOIN_FIPS)_$(ARCH).deb
$(GOLANG)_DERIVED_DEBS += golang-$(GOLANG_MAIN_VERSION)-doc_$(GOLANG_VERSOIN_FIPS)_all.deb
