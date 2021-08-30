Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web12.17192.1630331468985974139
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 06:51:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M1oi8CT9;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id k24so10561018vsg.9
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 06:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OdE96hFGbrHSQ5ZEvSJ+HDKAC3HG7+h3h9/8KB9bDvg=;
        b=M1oi8CT9Pf+vlwPRrYhfRqKMJqOw7HZmSM7wDdUFHPw+nSWoVsdBa+aIp1QVbJl2MK
         H9/Pch7pzASfqtVmxORx0Wjj9Zp/5zhpsbkSGcOIh2M9smyGWmImL9aoHQHWk/niWU4P
         YWUTajEZ67kgjQjwB5jmZ60BP9BpywCeuMM1J9ui70kf82C8sTGn/9CZxA8Pxy4HXvmk
         tJD37l8p+cJkk977+YibkvNw4QeA7CgBqP3xU+jdD1f/YNE3MC4thkXR9cTR7tIfKhti
         O0NTDbszn/focLwL/mJSCe09w+oH23U03YuIyXx7JKYKoJPQV519dt5OdLo95qDZh0l9
         2CsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OdE96hFGbrHSQ5ZEvSJ+HDKAC3HG7+h3h9/8KB9bDvg=;
        b=pdN9Brh5iAckArtaWbLY0Lr47J5ScLnct5CZjLAVEukOP1J7D0ifw/E32VkHRvy1EK
         WJE47K4LCseii+diIzYCcW5Y084FH+vexOmct29QoOqtb4Ssqi09iUmBGO8Yx6K2NPjJ
         66l49Po7T6Z1j5wk2FOOb2cetdO3SaiXxDPLkBHNFIbgZ8KqZMsNs1tunMFcGO6W6vmk
         DTCRQ74jZu9a1etDBIcTeDz6ssv8lGNy2GXFOiyy18ze5rL0Q+9uydSPGUlSlIRuFwmV
         Q3r6nIEfXZp5u2Xr3CjbRIkUNNjs6t2UMVQ4av7JOB6sJ6PprAttU9f1ax5/f7LluWTF
         i+FQ==
X-Gm-Message-State: AOAM533LAyAZbXTVg6P6+PDyGJlEkKmvTsTryt0QMGOf6OMA3mLtqDfh
	F6RytosbpUNsxrA7eDGre9VlzIfjc3ryuT5EIOY=
X-Google-Smtp-Source: ABdhPJxhqtz4X2FhQv/QAACiTdPMnK9OsBtn7WCA2JV/B9InL9s7Sc+Ufx0iDnLP/LJ5hxmdjkHDp39orLjNfaRdN84=
X-Received: by 2002:a67:8c07:: with SMTP id o7mr12854607vsd.31.1630331468060;
 Mon, 30 Aug 2021 06:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKAnv4HDouRmDgi9V60OjYF89bd_j_SOsgx2J7Av3Ae+jg0aNg@mail.gmail.com>
In-Reply-To: <CAKAnv4HDouRmDgi9V60OjYF89bd_j_SOsgx2J7Av3Ae+jg0aNg@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 30 Aug 2021 15:50:56 +0200
Message-ID: <CANNYZj-UZN7qvuzpLJdk2X9kbYMzzCvhV4gozbhX55ndzntCBw@mail.gmail.com>
Subject: Re: [yocto] downgrade openssl libraryes
To: Ivan Riabtsov <ivriabtsov@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000521e205cac720c2"

--0000000000000521e205cac720c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

openssl 1.0.2 went out of support at the end of 2019 and you should not be
using it. What is the problem you need to solve?

Alex

On Mon, 30 Aug 2021 at 15:33, Ivan Riabtsov <ivriabtsov@gmail.com> wrote:

> hello i am trying to rollback openssl version from 1.1.1i to 1.0.2j.
> Copied the recipe openssl_1.1.1i.bb to openssl_1.0.2j.bb, saved the
> openssl_1.1.1i.bb version with the name openssl_1.1.1i.bb.backup
>
> =D0=9E=D1=82=D1=80=D0=B5=D0=B4=D0=B0=D0=BA=D1=82=D0=B8=D1=80=D0=BE=D0=B2=
=D0=B0=D0=BB =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D1=84=D0=B0=D0=B9=D0=BB, =D0=
=B2=D0=BE=D1=82 =D1=80=D0=B0=D0=B7=D0=BD=D0=B8=D1=86=D0=B0 =D0=B2 =D1=84=D0=
=B0=D0=B9=D0=BB=D0=B0=D1=85:
>
> diff -Nau ./openssl_1.1.1i.bb.backup ./openssl_1.0.2j.bb
> --- ./openssl_1.1.1i.bb.backup 2021-08-27 14:46:07.085808702 +0300
> +++ ./openssl_1.0.2j.bb 2021-08-27 16:12:14.216430734 +0300
> @@ -7,23 +7,19 @@
>  # "openssl" here actually means both OpenSSL and SSLeay licenses apply
>  # (see meta/files/common-licenses/OpenSSL to which "openssl" is
> SPDXLICENSEMAPped)
>  LICENSE =3D "openssl"
> -LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dd343e62fc9c833710bbbed25f2736=
4c8"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef93f=
bf6"
>
>  DEPENDS =3D "hostperl-runtime-native"
>
>  SRC_URI =3D "http://www.openssl.org/source/openssl-${PV}.tar.gz \
>             file://run-ptest \
> -           file://0001-skip-test_symbol_presence.patch \
> -
>  file://0001-buildinfo-strip-sysroot-and-debug-prefix-map-from-co.patch
> \
> -           file://afalg.patch \
> -           file://reproducible.patch \
>             "
>
>  SRC_URI_append_class-nativesdk =3D " \
>             file://environment.d-openssl.sh \
>             "
>
> -SRC_URI[sha256sum] =3D
> "e8be6a35fe41d10603c3cc635e93289ed00bf34b79671a3a4de64fcee00d5242"
> +SRC_URI[sha256sum] =3D
> "e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431"
>
>  inherit lib_package multilib_header multilib_script ptest
>  MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"
> @@ -122,7 +118,7 @@
>   # WARNING: do not set compiler/linker flags (-I/-D etc.) in
> EXTRA_OECONF, as they will fully replace the
>   # environment variables set by bitbake. Adjust the environment
> variables instead.
>   HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl
> PERL5LIB=3D"${S}/external/perl/Text-Template-1.46/lib/" \
> - perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
> --prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.1 --libdir=3D${libdi=
r}
> $target
> + perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
> --prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${libdi=
r}
> $target
>   perl ${B}/configdata.pm --dump
>  }
>
> @@ -134,30 +130,30 @@
>   # Create SSL structure for packages such as ca-certificates which
>   # contain hard-coded paths to /etc/ssl. Debian does the same.
>   install -d ${D}${sysconfdir}/ssl
> - mv ${D}${libdir}/ssl-1.1/certs \
> -    ${D}${libdir}/ssl-1.1/private \
> -    ${D}${libdir}/ssl-1.1/openssl.cnf \
> + mv ${D}${libdir}/ssl-1.0/certs \
> +    ${D}${libdir}/ssl-1.0/private \
> +    ${D}${libdir}/ssl-1.0/openssl.cnf \
>      ${D}${sysconfdir}/ssl/
>
>   # Although absolute symlinks would be OK for the target, they become
>   # invalid if native or nativesdk are relocated from sstate.
> - ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
> '${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.1/certs
> - ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
> '${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.1/private
> - ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
> '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.1/openssl.cnf
> + ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
> '${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.0/certs
> + ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
> '${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.0/private
> + ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
> '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.0/openssl.cnf
>  }
>
>  do_install_append_class-native () {
>   create_wrapper ${D}${bindir}/openssl \
> -     OPENSSL_CONF=3D${libdir}/ssl-1.1/openssl.cnf \
> -     SSL_CERT_DIR=3D${libdir}/ssl-1.1/certs \
> -     SSL_CERT_FILE=3D${libdir}/ssl-1.1/cert.pem \
> -     OPENSSL_ENGINES=3D${libdir}/engines-1.1
> +     OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \
> +     SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \
> +     SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \
> +     OPENSSL_ENGINES=3D${libdir}/engines-1.0
>  }
>
>  do_install_append_class-nativesdk () {
>   mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
>   install -m 644 ${WORKDIR}/environment.d-openssl.sh
> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
> - sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.1/|g' -i
> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
> + sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g' -i
> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
>  }
>
>  PTEST_BUILD_HOST_FILES +=3D "configdata.pm"
> @@ -170,8 +166,8 @@
>   cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util
> ${B}/util ${D}${PTEST_PATH}
>
>   # For test_shlibload
> - ln -s ${libdir}/libcrypto.so.1.1 ${D}${PTEST_PATH}/
> - ln -s ${libdir}/libssl.so.1.1 ${D}${PTEST_PATH}/
> + ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/
> + ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/
>
>   install -d ${D}${PTEST_PATH}/apps
>   ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps
> @@ -192,11 +188,11 @@
>  FILES_libcrypto =3D "${libdir}/libcrypto${SOLIBS}"
>  FILES_libssl =3D "${libdir}/libssl${SOLIBS}"
>  FILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf \
> -                      ${libdir}/ssl-1.1/openssl.cnf* \
> +                      ${libdir}/ssl-1.0/openssl.cnf* \
>                        "
> -FILES_${PN}-engines =3D "${libdir}/engines-1.1"
> -FILES_${PN}-misc =3D "${libdir}/ssl-1.1/misc"
> -FILES_${PN} =3D+ "${libdir}/ssl-1.1/*"
> +FILES_${PN}-engines =3D "${libdir}/engines-1.0"
> +FILES_${PN}-misc =3D "${libdir}/ssl-1.0/misc"
> +FILES_${PN} =3D+ "${libdir}/ssl-1.0/*"
>  FILES_${PN}_append_class-nativesdk =3D "
> ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>
>  CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"
>
>
> =D0=B2=D0=BE=D1=82 =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D0=BF=D0=BE=D0=BB=D1=
=83=D1=87=D0=B8=D0=B2=D1=88=D0=B8=D0=B9=D1=81=D1=8F =D1=84=D0=B0=D0=B9=D0=
=BB:
>
>
> cat openssl_1.0.2j.bb
> SUMMARY =3D "Secure Socket Layer"
> DESCRIPTION =3D "Secure Socket Layer (SSL) binary and related
> cryptographic tools."
> HOMEPAGE =3D "http://www.openssl.org/"
> BUGTRACKER =3D "http://www.openssl.org/news/vulnerabilities.html"
> SECTION =3D "libs/network"
>
> # "openssl" here actually means both OpenSSL and SSLeay licenses apply
> # (see meta/files/common-licenses/OpenSSL to which "openssl" is
> SPDXLICENSEMAPped)
> LICENSE =3D "openssl"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef93fb=
f6"
>
> DEPENDS =3D "hostperl-runtime-native"
>
> SRC_URI =3D "http://www.openssl.org/source/openssl-${PV}.tar.gz \
>            file://run-ptest \
>            "
>
> SRC_URI_append_class-nativesdk =3D " \
>            file://environment.d-openssl.sh \
>            "
>
> SRC_URI[sha256sum] =3D
> "e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431"
>
> inherit lib_package multilib_header multilib_script ptest
> MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"
>
> PACKAGECONFIG ?=3D ""
> PACKAGECONFIG_class-native =3D ""
> PACKAGECONFIG_class-nativesdk =3D ""
>
> PACKAGECONFIG[cryptodev-linux] =3D
>
> "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-modu=
le"
>
> B =3D "${WORKDIR}/build"
> do_configure[cleandirs] =3D "${B}"
>
> #| ./libcrypto.so: undefined reference to `getcontext'
> #| ./libcrypto.so: undefined reference to `setcontext'
> #| ./libcrypto.so: undefined reference to `makecontext'
> EXTRA_OECONF_append_libc-musl =3D " no-async"
> EXTRA_OECONF_append_libc-musl_powerpc64 =3D " no-asm"
>
> # adding devrandom prevents openssl from using getrandom() which is
> not available on older glibc versions
> # (native versions can be built with newer glibc, but then relocated
> onto a system with older glibc)
> EXTRA_OECONF_class-native =3D "--with-rand-seed=3Dos,devrandom"
> EXTRA_OECONF_class-nativesdk =3D "--with-rand-seed=3Dos,devrandom"
>
> # Relying on hardcoded built-in paths causes openssl-native to not be
> relocateable from sstate.
> CFLAGS_append_class-native =3D " -DOPENSSLDIR=3D/not/builtin
> -DENGINESDIR=3D/not/builtin"
> CFLAGS_append_class-nativesdk =3D " -DOPENSSLDIR=3D/not/builtin
> -DENGINESDIR=3D/not/builtin"
>
> do_configure () {
> os=3D${HOST_OS}
> case $os in
> linux-gnueabi |\
> linux-gnuspe |\
> linux-musleabi |\
> linux-muslspe |\
> linux-musl )
> os=3Dlinux
> ;;
> *)
> ;;
> esac
> target=3D"$os-${HOST_ARCH}"
> case $target in
> linux-arm*)
> target=3Dlinux-armv4
> ;;
> linux-aarch64*)
> target=3Dlinux-aarch64
> ;;
> linux-i?86 | linux-viac3)
> target=3Dlinux-x86
> ;;
> linux-gnux32-x86_64 | linux-muslx32-x86_64 )
> target=3Dlinux-x32
> ;;
> linux-gnu64-x86_64)
> target=3Dlinux-x86_64
> ;;
> linux-mips | linux-mipsel)
> # specifying TARGET_CC_ARCH prevents openssl from (incorrectly) adding
> target architecture flags
> target=3D"linux-mips32 ${TARGET_CC_ARCH}"
> ;;
> linux-gnun32-mips*)
> target=3Dlinux-mips64
> ;;
> linux-*-mips64 | linux-mips64 | linux-*-mips64el | linux-mips64el)
> target=3Dlinux64-mips64
> ;;
> linux-microblaze* | linux-nios2* | linux-sh3 | linux-sh4 | linux-arc*)
> target=3Dlinux-generic32
> ;;
> linux-powerpc)
> target=3Dlinux-ppc
> ;;
> linux-powerpc64)
> target=3Dlinux-ppc64
> ;;
> linux-powerpc64le)
> target=3Dlinux-ppc64le
> ;;
> linux-riscv32)
> target=3Dlinux-generic32
> ;;
> linux-riscv64)
> target=3Dlinux-generic64
> ;;
> linux-sparc | linux-supersparc)
> target=3Dlinux-sparcv9
> ;;
> esac
>
> useprefix=3D${prefix}
> if [ "x$useprefix" =3D "x" ]; then
> useprefix=3D/
> fi
> # WARNING: do not set compiler/linker flags (-I/-D etc.) in
> EXTRA_OECONF, as they will fully replace the
> # environment variables set by bitbake. Adjust the environment
> variables instead.
> HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl
> PERL5LIB=3D"${S}/external/perl/Text-Template-1.46/lib/" \
> perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
> --prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${libdi=
r}
> $target
> perl ${B}/configdata.pm --dump
> }
>
> do_install () {
> oe_runmake DESTDIR=3D"${D}" MANDIR=3D"${mandir}" MANSUFFIX=3Dssl install
>
> oe_multilib_header openssl/opensslconf.h
>
> # Create SSL structure for packages such as ca-certificates which
> # contain hard-coded paths to /etc/ssl. Debian does the same.
> install -d ${D}${sysconfdir}/ssl
> mv ${D}${libdir}/ssl-1.0/certs \
>    ${D}${libdir}/ssl-1.0/private \
>    ${D}${libdir}/ssl-1.0/openssl.cnf \
>    ${D}${sysconfdir}/ssl/
>
> # Although absolute symlinks would be OK for the target, they become
> # invalid if native or nativesdk are relocated from sstate.
> ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
> '${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.0/certs
> ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
> '${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.0/private
> ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
> '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.0/openssl.cnf
> }
>
> do_install_append_class-native () {
> create_wrapper ${D}${bindir}/openssl \
>     OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \
>     SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \
>     SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \
>     OPENSSL_ENGINES=3D${libdir}/engines-1.0
> }
>
> do_install_append_class-nativesdk () {
> mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
> install -m 644 ${WORKDIR}/environment.d-openssl.sh
> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
> sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g' -i
> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
> }
>
> PTEST_BUILD_HOST_FILES +=3D "configdata.pm"
> PTEST_BUILD_HOST_PATTERN =3D "perl_version =3D"
> do_install_ptest () {
> # Prune the build tree
> rm -f ${B}/fuzz/*.* ${B}/test/*.*
>
> cp ${S}/Configure ${B}/configdata.pm ${D}${PTEST_PATH}
> cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util ${B}/util
> ${D}${PTEST_PATH}
>
> # For test_shlibload
> ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/
> ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/
>
> install -d ${D}${PTEST_PATH}/apps
> ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps
> install -m644 ${S}/apps/*.pem ${S}/apps/*.srl ${S}/apps/openssl.cnf
> ${D}${PTEST_PATH}/apps
> install -m755 ${B}/apps/CA.pl ${D}${PTEST_PATH}/apps
>
> install -d ${D}${PTEST_PATH}/engines
> install -m755 ${B}/engines/ossltest.so ${D}${PTEST_PATH}/engines
> }
>
> # Add the openssl.cnf file to the openssl-conf package. Make the libcrypt=
o
> # package RRECOMMENDS on this package. This will enable the configuration
> # file to be installed for both the openssl-bin package and the libcrypto
> # package since the openssl-bin package depends on the libcrypto package.
>
> PACKAGES =3D+ "libcrypto libssl openssl-conf ${PN}-engines ${PN}-misc"
>
> FILES_libcrypto =3D "${libdir}/libcrypto${SOLIBS}"
> FILES_libssl =3D "${libdir}/libssl${SOLIBS}"
> FILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf \
>                       ${libdir}/ssl-1.0/openssl.cnf* \
>                       "
> FILES_${PN}-engines =3D "${libdir}/engines-1.0"
> FILES_${PN}-misc =3D "${libdir}/ssl-1.0/misc"
> FILES_${PN} =3D+ "${libdir}/ssl-1.0/*"
> FILES_${PN}_append_class-nativesdk =3D "
> ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>
> CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"
>
> RRECOMMENDS_libcrypto +=3D "openssl-conf"
> RDEPENDS_${PN}-ptest +=3D "openssl-bin perl perl-modules bash"
>
> RDEPENDS_${PN}-bin +=3D "openssl-conf"
>
> BBCLASSEXTEND =3D "native nativesdk"
>
> CVE_PRODUCT =3D "openssl:openssl"
>
> # Only affects OpenSSL >=3D 1.1.1 in combination with Apache < 2.4.37
> # Apache in meta-webserver is already recent enough
> CVE_CHECK_WHITELIST +=3D "CVE-2019-0190"
>
>
> I understand that I need to figure out the configs yourself, but I get
> this error when executing the
>
> bitbake openssl-native
>
> ERROR: Execution of
>
> '/home/ivr/work/yocto_orig/build/tmp/work/x86_64-linux/openssl-native/1.0=
.2j-r0/temp/run.do_configure.1071458'
> failed with exit code 2:
> | unable to read opensslv.h:No such file or directory
> | Configuring for linux-x86_64
> |     no-devcryptoeng [option]   OPENSSL_NO_DEVCRYPTOENG (skip dir)
> |     no-ec_nistp_64_gcc_128 [default]  OPENSSL_NO_EC_NISTP_64_GCC_128
> (skip dir)
> |     no-gmp          [default]  OPENSSL_NO_GMP (skip dir)
> |     no-jpake        [experimental] OPENSSL_NO_JPAKE (skip dir)
> |     no-krb5         [krb5-flavor not specified] OPENSSL_NO_KRB5
> |     no-libunbound   [experimental] OPENSSL_NO_LIBUNBOUND (skip dir)
> |     no-md2          [default]  OPENSSL_NO_MD2 (skip dir)
> |     no-rc5          [default]  OPENSSL_NO_RC5 (skip dir)
> |     no-rfc3779      [default]  OPENSSL_NO_RFC3779 (skip dir)
> |     no-sctp         [default]  OPENSSL_NO_SCTP (skip dir)
> |     no-shared       [default]
> |     no-ssl-trace    [default]  OPENSSL_NO_SSL_TRACE (skip dir)
> |     no-ssl2         [default]  OPENSSL_NO_SSL2 (skip dir)
> |     no-store        [experimental] OPENSSL_NO_STORE (skip dir)
> |     no-unit-test    [default]  OPENSSL_NO_UNIT_TEST (skip dir)
> |     no-weak-ssl-ciphers [default]  OPENSSL_NO_WEAK_SSL_CIPHERS (skip di=
r)
> |     no-zlib         [default]
> |     no-zlib-dynamic [default]
> | IsMK1MF=3D0
> | WARNING: exit code 2 from a shell command.
> |
>
> As far as I can understand, the opensslv.h file is generated just at
> the configuration stage, why does the configuration stage give an
> error of the absence of this file?
>
>=20
>
>

--0000000000000521e205cac720c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>openssl 1.0.2 went out of support at the end of 2019 =
and you should not be using it. What is the problem you need to solve?</div=
><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, 30 Aug 2021 at 15:33, Ivan Riabt=
sov &lt;<a href=3D"mailto:ivriabtsov@gmail.com">ivriabtsov@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">hello i=
 am trying to rollback openssl version from 1.1.1i to 1.0.2j.<br>
Copied the recipe <a href=3D"http://openssl_1.1.1i.bb" rel=3D"noreferrer" t=
arget=3D"_blank">openssl_1.1.1i.bb</a> to <a href=3D"http://openssl_1.0.2j.=
bb" rel=3D"noreferrer" target=3D"_blank">openssl_1.0.2j.bb</a>, saved the<b=
r>
<a href=3D"http://openssl_1.1.1i.bb" rel=3D"noreferrer" target=3D"_blank">o=
penssl_1.1.1i.bb</a> version with the name openssl_1.1.1i.bb.backup<br>
<br>
=D0=9E=D1=82=D1=80=D0=B5=D0=B4=D0=B0=D0=BA=D1=82=D0=B8=D1=80=D0=BE=D0=B2=D0=
=B0=D0=BB =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D1=84=D0=B0=D0=B9=D0=BB, =D0=B2=
=D0=BE=D1=82 =D1=80=D0=B0=D0=B7=D0=BD=D0=B8=D1=86=D0=B0 =D0=B2 =D1=84=D0=B0=
=D0=B9=D0=BB=D0=B0=D1=85:<br>
<br>
diff -Nau ./openssl_1.1.1i.bb.backup ./<a href=3D"http://openssl_1.0.2j.bb"=
 rel=3D"noreferrer" target=3D"_blank">openssl_1.0.2j.bb</a><br>
--- ./openssl_1.1.1i.bb.backup 2021-08-27 14:46:07.085808702 +0300<br>
+++ ./<a href=3D"http://openssl_1.0.2j.bb" rel=3D"noreferrer" target=3D"_bl=
ank">openssl_1.0.2j.bb</a> 2021-08-27 16:12:14.216430734 +0300<br>
@@ -7,23 +7,19 @@<br>
=C2=A0# &quot;openssl&quot; here actually means both OpenSSL and SSLeay lic=
enses apply<br>
=C2=A0# (see meta/files/common-licenses/OpenSSL to which &quot;openssl&quot=
; is<br>
SPDXLICENSEMAPped)<br>
=C2=A0LICENSE =3D &quot;openssl&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dd343e62fc9c833710bbbed25f2=
7364c8&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef=
93fbf6&quot;<br>
<br>
=C2=A0DEPENDS =3D &quot;hostperl-runtime-native&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot;<a href=3D"http://www.openssl.org/source/openssl-$%=
7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank">http://www.openssl.org=
/source/openssl-${PV}.tar.gz</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://run-ptest \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-skip-test_symbol_pres=
ence.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-buildinfo-strip-sysro=
ot-and-debug-prefix-map-from-co.patch<br>
\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://afalg.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://reproducible.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0SRC_URI_append_class-nativesdk =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://<a href=3D"http://environm=
ent.d-openssl.sh" rel=3D"noreferrer" target=3D"_blank">environment.d-openss=
l.sh</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
-SRC_URI[sha256sum] =3D<br>
&quot;e8be6a35fe41d10603c3cc635e93289ed00bf34b79671a3a4de64fcee00d5242&quot=
;<br>
+SRC_URI[sha256sum] =3D<br>
&quot;e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431&quot=
;<br>
<br>
=C2=A0inherit lib_package multilib_header multilib_script ptest<br>
=C2=A0MULTILIB_SCRIPTS =3D &quot;${PN}-bin:${bindir}/c_rehash&quot;<br>
@@ -122,7 +118,7 @@<br>
=C2=A0 # WARNING: do not set compiler/linker flags (-I/-D etc.) in<br>
EXTRA_OECONF, as they will fully replace the<br>
=C2=A0 # environment variables set by bitbake. Adjust the environment<br>
variables instead.<br>
=C2=A0 HASHBANGPERL=3D&quot;/usr/bin/env perl&quot; PERL=3Dperl<br>
PERL5LIB=3D&quot;${S}/external/perl/Text-Template-1.46/lib/&quot; \<br>
- perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}<br>
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.1 --libdir=3D${libdir}=
<br>
$target<br>
+ perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}<br>
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${libdir}=
<br>
$target<br>
=C2=A0 perl ${B}/<a href=3D"http://configdata.pm" rel=3D"noreferrer" target=
=3D"_blank">configdata.pm</a> --dump<br>
=C2=A0}<br>
<br>
@@ -134,30 +130,30 @@<br>
=C2=A0 # Create SSL structure for packages such as ca-certificates which<br=
>
=C2=A0 # contain hard-coded paths to /etc/ssl. Debian does the same.<br>
=C2=A0 install -d ${D}${sysconfdir}/ssl<br>
- mv ${D}${libdir}/ssl-1.1/certs \<br>
-=C2=A0 =C2=A0 ${D}${libdir}/ssl-1.1/private \<br>
-=C2=A0 =C2=A0 ${D}${libdir}/ssl-1.1/openssl.cnf \<br>
+ mv ${D}${libdir}/ssl-1.0/certs \<br>
+=C2=A0 =C2=A0 ${D}${libdir}/ssl-1.0/private \<br>
+=C2=A0 =C2=A0 ${D}${libdir}/ssl-1.0/openssl.cnf \<br>
=C2=A0 =C2=A0 =C2=A0${D}${sysconfdir}/ssl/<br>
<br>
=C2=A0 # Although absolute symlinks would be OK for the target, they become=
<br>
=C2=A0 # invalid if native or nativesdk are relocated from sstate.<br>
- ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.1&#39;,<br>
&#39;${sysconfdir}/ssl/certs&#39;)} ${D}${libdir}/ssl-1.1/certs<br>
- ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.1&#39;,<br>
&#39;${sysconfdir}/ssl/private&#39;)} ${D}${libdir}/ssl-1.1/private<br>
- ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.1&#39;,<br>
&#39;${sysconfdir}/ssl/openssl.cnf&#39;)} ${D}${libdir}/ssl-1.1/openssl.cnf=
<br>
+ ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.0&#39;,<br>
&#39;${sysconfdir}/ssl/certs&#39;)} ${D}${libdir}/ssl-1.0/certs<br>
+ ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.0&#39;,<br>
&#39;${sysconfdir}/ssl/private&#39;)} ${D}${libdir}/ssl-1.0/private<br>
+ ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.0&#39;,<br>
&#39;${sysconfdir}/ssl/openssl.cnf&#39;)} ${D}${libdir}/ssl-1.0/openssl.cnf=
<br>
=C2=A0}<br>
<br>
=C2=A0do_install_append_class-native () {<br>
=C2=A0 create_wrapper ${D}${bindir}/openssl \<br>
-=C2=A0 =C2=A0 =C2=A0OPENSSL_CONF=3D${libdir}/ssl-1.1/openssl.cnf \<br>
-=C2=A0 =C2=A0 =C2=A0SSL_CERT_DIR=3D${libdir}/ssl-1.1/certs \<br>
-=C2=A0 =C2=A0 =C2=A0SSL_CERT_FILE=3D${libdir}/ssl-1.1/cert.pem \<br>
-=C2=A0 =C2=A0 =C2=A0OPENSSL_ENGINES=3D${libdir}/engines-1.1<br>
+=C2=A0 =C2=A0 =C2=A0OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \<br>
+=C2=A0 =C2=A0 =C2=A0SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \<br>
+=C2=A0 =C2=A0 =C2=A0SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \<br>
+=C2=A0 =C2=A0 =C2=A0OPENSSL_ENGINES=3D${libdir}/engines-1.0<br>
=C2=A0}<br>
<br>
=C2=A0do_install_append_class-nativesdk () {<br>
=C2=A0 mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d<br>
=C2=A0 install -m 644 ${WORKDIR}/<a href=3D"http://environment.d-openssl.sh=
" rel=3D"noreferrer" target=3D"_blank">environment.d-openssl.sh</a><br>
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh<br>
- sed &#39;s|/usr/lib/ssl/|/usr/lib/ssl-1.1/|g&#39; -i<br>
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh<br>
+ sed &#39;s|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g&#39; -i<br>
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh<br>
=C2=A0}<br>
<br>
=C2=A0PTEST_BUILD_HOST_FILES +=3D &quot;<a href=3D"http://configdata.pm" re=
l=3D"noreferrer" target=3D"_blank">configdata.pm</a>&quot;<br>
@@ -170,8 +166,8 @@<br>
=C2=A0 cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util<br>
${B}/util ${D}${PTEST_PATH}<br>
<br>
=C2=A0 # For test_shlibload<br>
- ln -s ${libdir}/libcrypto.so.1.1 ${D}${PTEST_PATH}/<br>
- ln -s ${libdir}/libssl.so.1.1 ${D}${PTEST_PATH}/<br>
+ ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/<br>
+ ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/<br>
<br>
=C2=A0 install -d ${D}${PTEST_PATH}/apps<br>
=C2=A0 ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps<br>
@@ -192,11 +188,11 @@<br>
=C2=A0FILES_libcrypto =3D &quot;${libdir}/libcrypto${SOLIBS}&quot;<br>
=C2=A0FILES_libssl =3D &quot;${libdir}/libssl${SOLIBS}&quot;<br>
=C2=A0FILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ${libdir}/ssl-1.1/openssl.cnf* \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ${libdir}/ssl-1.0/openssl.cnf* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;<br>
-FILES_${PN}-engines =3D &quot;${libdir}/engines-1.1&quot;<br>
-FILES_${PN}-misc =3D &quot;${libdir}/ssl-1.1/misc&quot;<br>
-FILES_${PN} =3D+ &quot;${libdir}/ssl-1.1/*&quot;<br>
+FILES_${PN}-engines =3D &quot;${libdir}/engines-1.0&quot;<br>
+FILES_${PN}-misc =3D &quot;${libdir}/ssl-1.0/misc&quot;<br>
+FILES_${PN} =3D+ &quot;${libdir}/ssl-1.0/*&quot;<br>
=C2=A0FILES_${PN}_append_class-nativesdk =3D &quot;<br>
${SDKPATHNATIVE}/environment-setup.d/openssl.sh&quot;<br>
<br>
=C2=A0CONFFILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf&quot;<=
br>
<br>
<br>
=D0=B2=D0=BE=D1=82 =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D0=BF=D0=BE=D0=BB=D1=83=
=D1=87=D0=B8=D0=B2=D1=88=D0=B8=D0=B9=D1=81=D1=8F =D1=84=D0=B0=D0=B9=D0=BB:<=
br>
<br>
<br>
cat <a href=3D"http://openssl_1.0.2j.bb" rel=3D"noreferrer" target=3D"_blan=
k">openssl_1.0.2j.bb</a><br>
SUMMARY =3D &quot;Secure Socket Layer&quot;<br>
DESCRIPTION =3D &quot;Secure Socket Layer (SSL) binary and related<br>
cryptographic tools.&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"http://www.openssl.org/" rel=3D"noreferrer" t=
arget=3D"_blank">http://www.openssl.org/</a>&quot;<br>
BUGTRACKER =3D &quot;<a href=3D"http://www.openssl.org/news/vulnerabilities=
.html" rel=3D"noreferrer" target=3D"_blank">http://www.openssl.org/news/vul=
nerabilities.html</a>&quot;<br>
SECTION =3D &quot;libs/network&quot;<br>
<br>
# &quot;openssl&quot; here actually means both OpenSSL and SSLeay licenses =
apply<br>
# (see meta/files/common-licenses/OpenSSL to which &quot;openssl&quot; is<b=
r>
SPDXLICENSEMAPped)<br>
LICENSE =3D &quot;openssl&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef9=
3fbf6&quot;<br>
<br>
DEPENDS =3D &quot;hostperl-runtime-native&quot;<br>
<br>
SRC_URI =3D &quot;<a href=3D"http://www.openssl.org/source/openssl-$%7BPV%7=
D.tar.gz" rel=3D"noreferrer" target=3D"_blank">http://www.openssl.org/sourc=
e/openssl-${PV}.tar.gz</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://run-ptest \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
SRC_URI_append_class-nativesdk =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://<a href=3D"http://environme=
nt.d-openssl.sh" rel=3D"noreferrer" target=3D"_blank">environment.d-openssl=
.sh</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
SRC_URI[sha256sum] =3D<br>
&quot;e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431&quot=
;<br>
<br>
inherit lib_package multilib_header multilib_script ptest<br>
MULTILIB_SCRIPTS =3D &quot;${PN}-bin:${bindir}/c_rehash&quot;<br>
<br>
PACKAGECONFIG ?=3D &quot;&quot;<br>
PACKAGECONFIG_class-native =3D &quot;&quot;<br>
PACKAGECONFIG_class-nativesdk =3D &quot;&quot;<br>
<br>
PACKAGECONFIG[cryptodev-linux] =3D<br>
&quot;enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-m=
odule&quot;<br>
<br>
B =3D &quot;${WORKDIR}/build&quot;<br>
do_configure[cleandirs] =3D &quot;${B}&quot;<br>
<br>
#| ./libcrypto.so: undefined reference to `getcontext&#39;<br>
#| ./libcrypto.so: undefined reference to `setcontext&#39;<br>
#| ./libcrypto.so: undefined reference to `makecontext&#39;<br>
EXTRA_OECONF_append_libc-musl =3D &quot; no-async&quot;<br>
EXTRA_OECONF_append_libc-musl_powerpc64 =3D &quot; no-asm&quot;<br>
<br>
# adding devrandom prevents openssl from using getrandom() which is<br>
not available on older glibc versions<br>
# (native versions can be built with newer glibc, but then relocated<br>
onto a system with older glibc)<br>
EXTRA_OECONF_class-native =3D &quot;--with-rand-seed=3Dos,devrandom&quot;<b=
r>
EXTRA_OECONF_class-nativesdk =3D &quot;--with-rand-seed=3Dos,devrandom&quot=
;<br>
<br>
# Relying on hardcoded built-in paths causes openssl-native to not be<br>
relocateable from sstate.<br>
CFLAGS_append_class-native =3D &quot; -DOPENSSLDIR=3D/not/builtin<br>
-DENGINESDIR=3D/not/builtin&quot;<br>
CFLAGS_append_class-nativesdk =3D &quot; -DOPENSSLDIR=3D/not/builtin<br>
-DENGINESDIR=3D/not/builtin&quot;<br>
<br>
do_configure () {<br>
os=3D${HOST_OS}<br>
case $os in<br>
linux-gnueabi |\<br>
linux-gnuspe |\<br>
linux-musleabi |\<br>
linux-muslspe |\<br>
linux-musl )<br>
os=3Dlinux<br>
;;<br>
*)<br>
;;<br>
esac<br>
target=3D&quot;$os-${HOST_ARCH}&quot;<br>
case $target in<br>
linux-arm*)<br>
target=3Dlinux-armv4<br>
;;<br>
linux-aarch64*)<br>
target=3Dlinux-aarch64<br>
;;<br>
linux-i?86 | linux-viac3)<br>
target=3Dlinux-x86<br>
;;<br>
linux-gnux32-x86_64 | linux-muslx32-x86_64 )<br>
target=3Dlinux-x32<br>
;;<br>
linux-gnu64-x86_64)<br>
target=3Dlinux-x86_64<br>
;;<br>
linux-mips | linux-mipsel)<br>
# specifying TARGET_CC_ARCH prevents openssl from (incorrectly) adding<br>
target architecture flags<br>
target=3D&quot;linux-mips32 ${TARGET_CC_ARCH}&quot;<br>
;;<br>
linux-gnun32-mips*)<br>
target=3Dlinux-mips64<br>
;;<br>
linux-*-mips64 | linux-mips64 | linux-*-mips64el | linux-mips64el)<br>
target=3Dlinux64-mips64<br>
;;<br>
linux-microblaze* | linux-nios2* | linux-sh3 | linux-sh4 | linux-arc*)<br>
target=3Dlinux-generic32<br>
;;<br>
linux-powerpc)<br>
target=3Dlinux-ppc<br>
;;<br>
linux-powerpc64)<br>
target=3Dlinux-ppc64<br>
;;<br>
linux-powerpc64le)<br>
target=3Dlinux-ppc64le<br>
;;<br>
linux-riscv32)<br>
target=3Dlinux-generic32<br>
;;<br>
linux-riscv64)<br>
target=3Dlinux-generic64<br>
;;<br>
linux-sparc | linux-supersparc)<br>
target=3Dlinux-sparcv9<br>
;;<br>
esac<br>
<br>
useprefix=3D${prefix}<br>
if [ &quot;x$useprefix&quot; =3D &quot;x&quot; ]; then<br>
useprefix=3D/<br>
fi<br>
# WARNING: do not set compiler/linker flags (-I/-D etc.) in<br>
EXTRA_OECONF, as they will fully replace the<br>
# environment variables set by bitbake. Adjust the environment<br>
variables instead.<br>
HASHBANGPERL=3D&quot;/usr/bin/env perl&quot; PERL=3Dperl<br>
PERL5LIB=3D&quot;${S}/external/perl/Text-Template-1.46/lib/&quot; \<br>
perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}<br>
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${libdir}=
<br>
$target<br>
perl ${B}/<a href=3D"http://configdata.pm" rel=3D"noreferrer" target=3D"_bl=
ank">configdata.pm</a> --dump<br>
}<br>
<br>
do_install () {<br>
oe_runmake DESTDIR=3D&quot;${D}&quot; MANDIR=3D&quot;${mandir}&quot; MANSUF=
FIX=3Dssl install<br>
<br>
oe_multilib_header openssl/opensslconf.h<br>
<br>
# Create SSL structure for packages such as ca-certificates which<br>
# contain hard-coded paths to /etc/ssl. Debian does the same.<br>
install -d ${D}${sysconfdir}/ssl<br>
mv ${D}${libdir}/ssl-1.0/certs \<br>
=C2=A0 =C2=A0${D}${libdir}/ssl-1.0/private \<br>
=C2=A0 =C2=A0${D}${libdir}/ssl-1.0/openssl.cnf \<br>
=C2=A0 =C2=A0${D}${sysconfdir}/ssl/<br>
<br>
# Although absolute symlinks would be OK for the target, they become<br>
# invalid if native or nativesdk are relocated from sstate.<br>
ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.0&#39;,<br>
&#39;${sysconfdir}/ssl/certs&#39;)} ${D}${libdir}/ssl-1.0/certs<br>
ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.0&#39;,<br>
&#39;${sysconfdir}/ssl/private&#39;)} ${D}${libdir}/ssl-1.0/private<br>
ln -sf ${@oe.path.relative(&#39;${libdir}/ssl-1.0&#39;,<br>
&#39;${sysconfdir}/ssl/openssl.cnf&#39;)} ${D}${libdir}/ssl-1.0/openssl.cnf=
<br>
}<br>
<br>
do_install_append_class-native () {<br>
create_wrapper ${D}${bindir}/openssl \<br>
=C2=A0 =C2=A0 OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \<br>
=C2=A0 =C2=A0 SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \<br>
=C2=A0 =C2=A0 SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \<br>
=C2=A0 =C2=A0 OPENSSL_ENGINES=3D${libdir}/engines-1.0<br>
}<br>
<br>
do_install_append_class-nativesdk () {<br>
mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d<br>
install -m 644 ${WORKDIR}/<a href=3D"http://environment.d-openssl.sh" rel=
=3D"noreferrer" target=3D"_blank">environment.d-openssl.sh</a><br>
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh<br>
sed &#39;s|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g&#39; -i<br>
${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh<br>
}<br>
<br>
PTEST_BUILD_HOST_FILES +=3D &quot;<a href=3D"http://configdata.pm" rel=3D"n=
oreferrer" target=3D"_blank">configdata.pm</a>&quot;<br>
PTEST_BUILD_HOST_PATTERN =3D &quot;perl_version =3D&quot;<br>
do_install_ptest () {<br>
# Prune the build tree<br>
rm -f ${B}/fuzz/*.* ${B}/test/*.*<br>
<br>
cp ${S}/Configure ${B}/<a href=3D"http://configdata.pm" rel=3D"noreferrer" =
target=3D"_blank">configdata.pm</a> ${D}${PTEST_PATH}<br>
cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util ${B}/util<br>
${D}${PTEST_PATH}<br>
<br>
# For test_shlibload<br>
ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/<br>
ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/<br>
<br>
install -d ${D}${PTEST_PATH}/apps<br>
ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps<br>
install -m644 ${S}/apps/*.pem ${S}/apps/*.srl ${S}/apps/openssl.cnf<br>
${D}${PTEST_PATH}/apps<br>
install -m755 ${B}/apps/CA.pl ${D}${PTEST_PATH}/apps<br>
<br>
install -d ${D}${PTEST_PATH}/engines<br>
install -m755 ${B}/engines/ossltest.so ${D}${PTEST_PATH}/engines<br>
}<br>
<br>
# Add the openssl.cnf file to the openssl-conf package. Make the libcrypto<=
br>
# package RRECOMMENDS on this package. This will enable the configuration<b=
r>
# file to be installed for both the openssl-bin package and the libcrypto<b=
r>
# package since the openssl-bin package depends on the libcrypto package.<b=
r>
<br>
PACKAGES =3D+ &quot;libcrypto libssl openssl-conf ${PN}-engines ${PN}-misc&=
quot;<br>
<br>
FILES_libcrypto =3D &quot;${libdir}/libcrypto${SOLIBS}&quot;<br>
FILES_libssl =3D &quot;${libdir}/libssl${SOLIBS}&quot;<br>
FILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ${libdir}/ssl-1.0/openssl.cnf* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;<br>
FILES_${PN}-engines =3D &quot;${libdir}/engines-1.0&quot;<br>
FILES_${PN}-misc =3D &quot;${libdir}/ssl-1.0/misc&quot;<br>
FILES_${PN} =3D+ &quot;${libdir}/ssl-1.0/*&quot;<br>
FILES_${PN}_append_class-nativesdk =3D &quot;<br>
${SDKPATHNATIVE}/environment-setup.d/openssl.sh&quot;<br>
<br>
CONFFILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf&quot;<br>
<br>
RRECOMMENDS_libcrypto +=3D &quot;openssl-conf&quot;<br>
RDEPENDS_${PN}-ptest +=3D &quot;openssl-bin perl perl-modules bash&quot;<br=
>
<br>
RDEPENDS_${PN}-bin +=3D &quot;openssl-conf&quot;<br>
<br>
BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
<br>
CVE_PRODUCT =3D &quot;openssl:openssl&quot;<br>
<br>
# Only affects OpenSSL &gt;=3D 1.1.1 in combination with Apache &lt; 2.4.37=
<br>
# Apache in meta-webserver is already recent enough<br>
CVE_CHECK_WHITELIST +=3D &quot;CVE-2019-0190&quot;<br>
<br>
<br>
I understand that I need to figure out the configs yourself, but I get<br>
this error when executing the<br>
<br>
bitbake openssl-native<br>
<br>
ERROR: Execution of<br>
&#39;/home/ivr/work/yocto_orig/build/tmp/work/x86_64-linux/openssl-native/1=
.0.2j-r0/temp/run.do_configure.1071458&#39;<br>
failed with exit code 2:<br>
| unable to read opensslv.h:No such file or directory<br>
| Configuring for linux-x86_64<br>
|=C2=A0 =C2=A0 =C2=A0no-devcryptoeng [option]=C2=A0 =C2=A0OPENSSL_NO_DEVCRY=
PTOENG (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-ec_nistp_64_gcc_128 [default]=C2=A0 OPENSSL_NO_EC_N=
ISTP_64_GCC_128<br>
(skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-gmp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [default]=C2=
=A0 OPENSSL_NO_GMP (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-jpake=C2=A0 =C2=A0 =C2=A0 =C2=A0 [experimental] OPE=
NSSL_NO_JPAKE (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-krb5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[krb5-flavor =
not specified] OPENSSL_NO_KRB5<br>
|=C2=A0 =C2=A0 =C2=A0no-libunbound=C2=A0 =C2=A0[experimental] OPENSSL_NO_LI=
BUNBOUND (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-md2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [default]=C2=
=A0 OPENSSL_NO_MD2 (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-rc5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [default]=C2=
=A0 OPENSSL_NO_RC5 (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-rfc3779=C2=A0 =C2=A0 =C2=A0 [default]=C2=A0 OPENSSL=
_NO_RFC3779 (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-sctp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[default]=C2=
=A0 OPENSSL_NO_SCTP (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-shared=C2=A0 =C2=A0 =C2=A0 =C2=A0[default]<br>
|=C2=A0 =C2=A0 =C2=A0no-ssl-trace=C2=A0 =C2=A0 [default]=C2=A0 OPENSSL_NO_S=
SL_TRACE (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-ssl2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[default]=C2=
=A0 OPENSSL_NO_SSL2 (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-store=C2=A0 =C2=A0 =C2=A0 =C2=A0 [experimental] OPE=
NSSL_NO_STORE (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-unit-test=C2=A0 =C2=A0 [default]=C2=A0 OPENSSL_NO_U=
NIT_TEST (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-weak-ssl-ciphers [default]=C2=A0 OPENSSL_NO_WEAK_SS=
L_CIPHERS (skip dir)<br>
|=C2=A0 =C2=A0 =C2=A0no-zlib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[default]<br>
|=C2=A0 =C2=A0 =C2=A0no-zlib-dynamic [default]<br>
| IsMK1MF=3D0<br>
| WARNING: exit code 2 from a shell command.<br>
|<br>
<br>
As far as I can understand, the opensslv.h file is generated just at<br>
the configuration stage, why does the configuration stage give an<br>
error of the absence of this file?<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000000521e205cac720c2--
