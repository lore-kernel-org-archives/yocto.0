Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.17025.1630330390214895310
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 06:33:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FDaAHKZw;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id q21so25898166ljj.6
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 06:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=dVq0aZEu7OnA5lhWGXp6p+sLr2AG8+LQkCu7B3IdnPk=;
        b=FDaAHKZwV5bvy8tiqoeHDi5RCJqv47YeidbDaODRp6T+OTnlf0WgYMJBQGknDUszLf
         O2u/scz3OBBrJN6v8Yn8hqI9tSy7vLcxn87fOgoMLKgwVNwkwE23NfziNK3A2pTQd2sQ
         WDYbU27jMlIk5XT84+zNDJz1TMDtlxd5SV7a7ubP7DyK4gs4wHdRaEgNgmWxCJR5AFlF
         1OIEKoQ8Hx4sMGPgQ0HtuB5T9Q4TSM75WQvnEizutblayYifTh89IS0n0n5BvfR/k9jn
         wTXNGth8oBZHVtJ5pFLl3p3F76Ram9AOppPMEEJSVWXK9Qp+w0N++D5JArgvd5bbsscF
         4kfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=dVq0aZEu7OnA5lhWGXp6p+sLr2AG8+LQkCu7B3IdnPk=;
        b=moGgLIZw6OctKkugC0wBHJsHXnpr0wI0LVjYSpbGi32j9bVma9sUgi2o6aoTm8oJcM
         1YGlMIt+dOQ0t466MI4zbfJITdgTbT49hh/TbIYO6NMGOcftywur8g6GSkkQ9VZJ8h2q
         aNJiZqkdKw/zGSbqj7BH5OLS0nluZosXDKYSw2TmjK+eRmB60A47IjtGuPxldGHVfFRp
         4UrLl5eOgHPASrGVeZaNEHby2JZ/hnirM6YAFrk9ZOwabd3Lu8RM9RtXZI9NN7xy3fC1
         sbUd95Yn+GmZKGqmdNT4HFhN//X58tHMzGwglr5+NlHnhE34qIw7hKBDshorSQbDNTzB
         K3Dw==
X-Gm-Message-State: AOAM532VbgKUDY974vq8cmWJDfEHXl9oQyUiFdZS/XN57hbAl4thFMaM
	KwIrfXocQqubBjUDFORoU0sX5TpOPXfkgj3JovbBq9DcIeI=
X-Google-Smtp-Source: ABdhPJz9859sUDoZud8OmMd21HueZlOpGWUzrHcDzUmYHBb/ofoEDJ24wcjTwkNrWwit/qMdVZzqRCYi+m9Ykt77To8=
X-Received: by 2002:a2e:964b:: with SMTP id z11mr8468948ljh.91.1630330387782;
 Mon, 30 Aug 2021 06:33:07 -0700 (PDT)
MIME-Version: 1.0
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Mon, 30 Aug 2021 16:32:57 +0300
Message-ID: <CAKAnv4HDouRmDgi9V60OjYF89bd_j_SOsgx2J7Av3Ae+jg0aNg@mail.gmail.com>
Subject: downgrade openssl libraryes
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hello i am trying to rollback openssl version from 1.1.1i to 1.0.2j.
Copied the recipe openssl_1.1.1i.bb to openssl_1.0.2j.bb, saved the
openssl_1.1.1i.bb version with the name openssl_1.1.1i.bb.backup

=D0=9E=D1=82=D1=80=D0=B5=D0=B4=D0=B0=D0=BA=D1=82=D0=B8=D1=80=D0=BE=D0=B2=D0=
=B0=D0=BB =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D1=84=D0=B0=D0=B9=D0=BB, =D0=B2=
=D0=BE=D1=82 =D1=80=D0=B0=D0=B7=D0=BD=D0=B8=D1=86=D0=B0 =D0=B2 =D1=84=D0=B0=
=D0=B9=D0=BB=D0=B0=D1=85:

diff -Nau ./openssl_1.1.1i.bb.backup ./openssl_1.0.2j.bb
--- ./openssl_1.1.1i.bb.backup 2021-08-27 14:46:07.085808702 +0300
+++ ./openssl_1.0.2j.bb 2021-08-27 16:12:14.216430734 +0300
@@ -7,23 +7,19 @@
 # "openssl" here actually means both OpenSSL and SSLeay licenses apply
 # (see meta/files/common-licenses/OpenSSL to which "openssl" is
SPDXLICENSEMAPped)
 LICENSE =3D "openssl"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dd343e62fc9c833710bbbed25f27364c=
8"
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef93fbf=
6"

 DEPENDS =3D "hostperl-runtime-native"

 SRC_URI =3D "http://www.openssl.org/source/openssl-${PV}.tar.gz \
            file://run-ptest \
-           file://0001-skip-test_symbol_presence.patch \
-           file://0001-buildinfo-strip-sysroot-and-debug-prefix-map-from-c=
o.patch
\
-           file://afalg.patch \
-           file://reproducible.patch \
            "

 SRC_URI_append_class-nativesdk =3D " \
            file://environment.d-openssl.sh \
            "

-SRC_URI[sha256sum] =3D
"e8be6a35fe41d10603c3cc635e93289ed00bf34b79671a3a4de64fcee00d5242"
+SRC_URI[sha256sum] =3D
"e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431"

 inherit lib_package multilib_header multilib_script ptest
 MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"
@@ -122,7 +118,7 @@
  # WARNING: do not set compiler/linker flags (-I/-D etc.) in
EXTRA_OECONF, as they will fully replace the
  # environment variables set by bitbake. Adjust the environment
variables instead.
  HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl
PERL5LIB=3D"${S}/external/perl/Text-Template-1.46/lib/" \
- perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.1 --libdir=3D${libdir}
$target
+ perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${libdir}
$target
  perl ${B}/configdata.pm --dump
 }

@@ -134,30 +130,30 @@
  # Create SSL structure for packages such as ca-certificates which
  # contain hard-coded paths to /etc/ssl. Debian does the same.
  install -d ${D}${sysconfdir}/ssl
- mv ${D}${libdir}/ssl-1.1/certs \
-    ${D}${libdir}/ssl-1.1/private \
-    ${D}${libdir}/ssl-1.1/openssl.cnf \
+ mv ${D}${libdir}/ssl-1.0/certs \
+    ${D}${libdir}/ssl-1.0/private \
+    ${D}${libdir}/ssl-1.0/openssl.cnf \
     ${D}${sysconfdir}/ssl/

  # Although absolute symlinks would be OK for the target, they become
  # invalid if native or nativesdk are relocated from sstate.
- ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
'${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.1/certs
- ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
'${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.1/private
- ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
'${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.1/openssl.cnf
+ ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
'${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.0/certs
+ ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
'${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.0/private
+ ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
'${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.0/openssl.cnf
 }

 do_install_append_class-native () {
  create_wrapper ${D}${bindir}/openssl \
-     OPENSSL_CONF=3D${libdir}/ssl-1.1/openssl.cnf \
-     SSL_CERT_DIR=3D${libdir}/ssl-1.1/certs \
-     SSL_CERT_FILE=3D${libdir}/ssl-1.1/cert.pem \
-     OPENSSL_ENGINES=3D${libdir}/engines-1.1
+     OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \
+     SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \
+     SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \
+     OPENSSL_ENGINES=3D${libdir}/engines-1.0
 }

 do_install_append_class-nativesdk () {
  mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
  install -m 644 ${WORKDIR}/environment.d-openssl.sh
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
- sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.1/|g' -i
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
+ sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g' -i
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
 }

 PTEST_BUILD_HOST_FILES +=3D "configdata.pm"
@@ -170,8 +166,8 @@
  cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util
${B}/util ${D}${PTEST_PATH}

  # For test_shlibload
- ln -s ${libdir}/libcrypto.so.1.1 ${D}${PTEST_PATH}/
- ln -s ${libdir}/libssl.so.1.1 ${D}${PTEST_PATH}/
+ ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/
+ ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/

  install -d ${D}${PTEST_PATH}/apps
  ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps
@@ -192,11 +188,11 @@
 FILES_libcrypto =3D "${libdir}/libcrypto${SOLIBS}"
 FILES_libssl =3D "${libdir}/libssl${SOLIBS}"
 FILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf \
-                      ${libdir}/ssl-1.1/openssl.cnf* \
+                      ${libdir}/ssl-1.0/openssl.cnf* \
                       "
-FILES_${PN}-engines =3D "${libdir}/engines-1.1"
-FILES_${PN}-misc =3D "${libdir}/ssl-1.1/misc"
-FILES_${PN} =3D+ "${libdir}/ssl-1.1/*"
+FILES_${PN}-engines =3D "${libdir}/engines-1.0"
+FILES_${PN}-misc =3D "${libdir}/ssl-1.0/misc"
+FILES_${PN} =3D+ "${libdir}/ssl-1.0/*"
 FILES_${PN}_append_class-nativesdk =3D "
${SDKPATHNATIVE}/environment-setup.d/openssl.sh"

 CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"


=D0=B2=D0=BE=D1=82 =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D0=BF=D0=BE=D0=BB=D1=83=
=D1=87=D0=B8=D0=B2=D1=88=D0=B8=D0=B9=D1=81=D1=8F =D1=84=D0=B0=D0=B9=D0=BB:


cat openssl_1.0.2j.bb
SUMMARY =3D "Secure Socket Layer"
DESCRIPTION =3D "Secure Socket Layer (SSL) binary and related
cryptographic tools."
HOMEPAGE =3D "http://www.openssl.org/"
BUGTRACKER =3D "http://www.openssl.org/news/vulnerabilities.html"
SECTION =3D "libs/network"

# "openssl" here actually means both OpenSSL and SSLeay licenses apply
# (see meta/files/common-licenses/OpenSSL to which "openssl" is
SPDXLICENSEMAPped)
LICENSE =3D "openssl"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef93fbf6=
"

DEPENDS =3D "hostperl-runtime-native"

SRC_URI =3D "http://www.openssl.org/source/openssl-${PV}.tar.gz \
           file://run-ptest \
           "

SRC_URI_append_class-nativesdk =3D " \
           file://environment.d-openssl.sh \
           "

SRC_URI[sha256sum] =3D
"e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431"

inherit lib_package multilib_header multilib_script ptest
MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"

PACKAGECONFIG ?=3D ""
PACKAGECONFIG_class-native =3D ""
PACKAGECONFIG_class-nativesdk =3D ""

PACKAGECONFIG[cryptodev-linux] =3D
"enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-module=
"

B =3D "${WORKDIR}/build"
do_configure[cleandirs] =3D "${B}"

#| ./libcrypto.so: undefined reference to `getcontext'
#| ./libcrypto.so: undefined reference to `setcontext'
#| ./libcrypto.so: undefined reference to `makecontext'
EXTRA_OECONF_append_libc-musl =3D " no-async"
EXTRA_OECONF_append_libc-musl_powerpc64 =3D " no-asm"

# adding devrandom prevents openssl from using getrandom() which is
not available on older glibc versions
# (native versions can be built with newer glibc, but then relocated
onto a system with older glibc)
EXTRA_OECONF_class-native =3D "--with-rand-seed=3Dos,devrandom"
EXTRA_OECONF_class-nativesdk =3D "--with-rand-seed=3Dos,devrandom"

# Relying on hardcoded built-in paths causes openssl-native to not be
relocateable from sstate.
CFLAGS_append_class-native =3D " -DOPENSSLDIR=3D/not/builtin
-DENGINESDIR=3D/not/builtin"
CFLAGS_append_class-nativesdk =3D " -DOPENSSLDIR=3D/not/builtin
-DENGINESDIR=3D/not/builtin"

do_configure () {
os=3D${HOST_OS}
case $os in
linux-gnueabi |\
linux-gnuspe |\
linux-musleabi |\
linux-muslspe |\
linux-musl )
os=3Dlinux
;;
*)
;;
esac
target=3D"$os-${HOST_ARCH}"
case $target in
linux-arm*)
target=3Dlinux-armv4
;;
linux-aarch64*)
target=3Dlinux-aarch64
;;
linux-i?86 | linux-viac3)
target=3Dlinux-x86
;;
linux-gnux32-x86_64 | linux-muslx32-x86_64 )
target=3Dlinux-x32
;;
linux-gnu64-x86_64)
target=3Dlinux-x86_64
;;
linux-mips | linux-mipsel)
# specifying TARGET_CC_ARCH prevents openssl from (incorrectly) adding
target architecture flags
target=3D"linux-mips32 ${TARGET_CC_ARCH}"
;;
linux-gnun32-mips*)
target=3Dlinux-mips64
;;
linux-*-mips64 | linux-mips64 | linux-*-mips64el | linux-mips64el)
target=3Dlinux64-mips64
;;
linux-microblaze* | linux-nios2* | linux-sh3 | linux-sh4 | linux-arc*)
target=3Dlinux-generic32
;;
linux-powerpc)
target=3Dlinux-ppc
;;
linux-powerpc64)
target=3Dlinux-ppc64
;;
linux-powerpc64le)
target=3Dlinux-ppc64le
;;
linux-riscv32)
target=3Dlinux-generic32
;;
linux-riscv64)
target=3Dlinux-generic64
;;
linux-sparc | linux-supersparc)
target=3Dlinux-sparcv9
;;
esac

useprefix=3D${prefix}
if [ "x$useprefix" =3D "x" ]; then
useprefix=3D/
fi
# WARNING: do not set compiler/linker flags (-I/-D etc.) in
EXTRA_OECONF, as they will fully replace the
# environment variables set by bitbake. Adjust the environment
variables instead.
HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl
PERL5LIB=3D"${S}/external/perl/Text-Template-1.46/lib/" \
perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${libdir}
$target
perl ${B}/configdata.pm --dump
}

do_install () {
oe_runmake DESTDIR=3D"${D}" MANDIR=3D"${mandir}" MANSUFFIX=3Dssl install

oe_multilib_header openssl/opensslconf.h

# Create SSL structure for packages such as ca-certificates which
# contain hard-coded paths to /etc/ssl. Debian does the same.
install -d ${D}${sysconfdir}/ssl
mv ${D}${libdir}/ssl-1.0/certs \
   ${D}${libdir}/ssl-1.0/private \
   ${D}${libdir}/ssl-1.0/openssl.cnf \
   ${D}${sysconfdir}/ssl/

# Although absolute symlinks would be OK for the target, they become
# invalid if native or nativesdk are relocated from sstate.
ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
'${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.0/certs
ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
'${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.0/private
ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
'${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.0/openssl.cnf
}

do_install_append_class-native () {
create_wrapper ${D}${bindir}/openssl \
    OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \
    SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \
    SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \
    OPENSSL_ENGINES=3D${libdir}/engines-1.0
}

do_install_append_class-nativesdk () {
mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
install -m 644 ${WORKDIR}/environment.d-openssl.sh
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g' -i
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
}

PTEST_BUILD_HOST_FILES +=3D "configdata.pm"
PTEST_BUILD_HOST_PATTERN =3D "perl_version =3D"
do_install_ptest () {
# Prune the build tree
rm -f ${B}/fuzz/*.* ${B}/test/*.*

cp ${S}/Configure ${B}/configdata.pm ${D}${PTEST_PATH}
cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util ${B}/util
${D}${PTEST_PATH}

# For test_shlibload
ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/
ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/

install -d ${D}${PTEST_PATH}/apps
ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps
install -m644 ${S}/apps/*.pem ${S}/apps/*.srl ${S}/apps/openssl.cnf
${D}${PTEST_PATH}/apps
install -m755 ${B}/apps/CA.pl ${D}${PTEST_PATH}/apps

install -d ${D}${PTEST_PATH}/engines
install -m755 ${B}/engines/ossltest.so ${D}${PTEST_PATH}/engines
}

# Add the openssl.cnf file to the openssl-conf package. Make the libcrypto
# package RRECOMMENDS on this package. This will enable the configuration
# file to be installed for both the openssl-bin package and the libcrypto
# package since the openssl-bin package depends on the libcrypto package.

PACKAGES =3D+ "libcrypto libssl openssl-conf ${PN}-engines ${PN}-misc"

FILES_libcrypto =3D "${libdir}/libcrypto${SOLIBS}"
FILES_libssl =3D "${libdir}/libssl${SOLIBS}"
FILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf \
                      ${libdir}/ssl-1.0/openssl.cnf* \
                      "
FILES_${PN}-engines =3D "${libdir}/engines-1.0"
FILES_${PN}-misc =3D "${libdir}/ssl-1.0/misc"
FILES_${PN} =3D+ "${libdir}/ssl-1.0/*"
FILES_${PN}_append_class-nativesdk =3D "
${SDKPATHNATIVE}/environment-setup.d/openssl.sh"

CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"

RRECOMMENDS_libcrypto +=3D "openssl-conf"
RDEPENDS_${PN}-ptest +=3D "openssl-bin perl perl-modules bash"

RDEPENDS_${PN}-bin +=3D "openssl-conf"

BBCLASSEXTEND =3D "native nativesdk"

CVE_PRODUCT =3D "openssl:openssl"

# Only affects OpenSSL >=3D 1.1.1 in combination with Apache < 2.4.37
# Apache in meta-webserver is already recent enough
CVE_CHECK_WHITELIST +=3D "CVE-2019-0190"


I understand that I need to figure out the configs yourself, but I get
this error when executing the

bitbake openssl-native

ERROR: Execution of
'/home/ivr/work/yocto_orig/build/tmp/work/x86_64-linux/openssl-native/1.0.2=
j-r0/temp/run.do_configure.1071458'
failed with exit code 2:
| unable to read opensslv.h:No such file or directory
| Configuring for linux-x86_64
|     no-devcryptoeng [option]   OPENSSL_NO_DEVCRYPTOENG (skip dir)
|     no-ec_nistp_64_gcc_128 [default]  OPENSSL_NO_EC_NISTP_64_GCC_128
(skip dir)
|     no-gmp          [default]  OPENSSL_NO_GMP (skip dir)
|     no-jpake        [experimental] OPENSSL_NO_JPAKE (skip dir)
|     no-krb5         [krb5-flavor not specified] OPENSSL_NO_KRB5
|     no-libunbound   [experimental] OPENSSL_NO_LIBUNBOUND (skip dir)
|     no-md2          [default]  OPENSSL_NO_MD2 (skip dir)
|     no-rc5          [default]  OPENSSL_NO_RC5 (skip dir)
|     no-rfc3779      [default]  OPENSSL_NO_RFC3779 (skip dir)
|     no-sctp         [default]  OPENSSL_NO_SCTP (skip dir)
|     no-shared       [default]
|     no-ssl-trace    [default]  OPENSSL_NO_SSL_TRACE (skip dir)
|     no-ssl2         [default]  OPENSSL_NO_SSL2 (skip dir)
|     no-store        [experimental] OPENSSL_NO_STORE (skip dir)
|     no-unit-test    [default]  OPENSSL_NO_UNIT_TEST (skip dir)
|     no-weak-ssl-ciphers [default]  OPENSSL_NO_WEAK_SSL_CIPHERS (skip dir)
|     no-zlib         [default]
|     no-zlib-dynamic [default]
| IsMK1MF=3D0
| WARNING: exit code 2 from a shell command.
|

As far as I can understand, the opensslv.h file is generated just at
the configuration stage, why does the configuration stage give an
error of the absence of this file?
