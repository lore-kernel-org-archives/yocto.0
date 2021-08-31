Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web12.3714.1630405601289932833
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 03:26:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@basmevissen.nl header.s=default header.b=X5Nt1Z5Z;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id C578E212013;
	Tue, 31 Aug 2021 12:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	 h=message-id:user-agent:references:in-reply-to:subject:subject
	:from:from:date:date:content-transfer-encoding:content-type
	:content-type:mime-version; s=default; t=1630405590; x=
	1632219991; bh=q/pyptvlW3oA0eKbSfFP/sxlTyAmYt5P6idcZmp0J/w=; b=X
	5Nt1Z5Z/5Def8clev1HJplzPILjlx9Bd9LPTDORdXFtdgq6+SJFZWEI3yBNMVcbr
	8EHbGE+QHsxVad8qTE6590ExyVZncMMwSRIsR5i2XXgh1svuBhMzLitCQofvacVD
	4OhfKWSpz7svLs0ByVERD1SYW+A9PCTJIWVeXDNGmvWhQxOGwCP2h0Pv3R8dS+EB
	oyNTlyGHRdx4OXWYNruL/vdKWYScZ5ZWZbIZhg0uPvvsZO70SfUFFxIhzQnavKyy
	s2o3Rzkm9lBmjyP+W63Y8j7fqQPGySgfkMTKbZ+rAIUo5iY+7o7IO8XTeFk1EX0f
	xuSrS0TDYdDj4MsaNcEa2BJFlHQU3oiN+gbuFJzmLPmI5kXFwTsAkQCY72Iwc5QN
	C21vY6suDPH9IkbcSJFT0rsGmiLaf/WfNlosFuR30gWTC7nPlHS9MK8E/VrWUfH9
	z+lbHJdME0ta1wIJu1ZfBr03HpB7isJPZ9XHLpMLyA8+mtxTLm+uzwChRgURXrDV
	k+I1vQ18O8NaKjSgW2H4sYK5QH3Rr5t9OLnCv3wxFe6b+n5y56QwB+0DooQGW0cJ
	lfSFg+zPr57hEoWpYr03xM1aqQL4FbnKLnVM/UIAxcHsH6Fm7SCXrmXz9FA/rN61
	ihj+Pkx9hrr1ZesFtwp0tRW4YhUWtoypZy9A1ceAbY=
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id s1cvjbQ96Cn1; Tue, 31 Aug 2021 12:26:30 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 6EE54212002;
	Tue, 31 Aug 2021 12:26:30 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 31 Aug 2021 12:26:30 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: Ivan Riabtsov <ivriabtsov@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] downgrade openssl libraryes
In-Reply-To: <CAKAnv4EwBWyBHOnSAjUYZDn870-pRa2i-0cak5WMsF7nEmp1AQ@mail.gmail.com>
References: <CAKAnv4HDouRmDgi9V60OjYF89bd_j_SOsgx2J7Av3Ae+jg0aNg@mail.gmail.com>
 <CANNYZj-UZN7qvuzpLJdk2X9kbYMzzCvhV4gozbhX55ndzntCBw@mail.gmail.com>
 <CAKAnv4EwBWyBHOnSAjUYZDn870-pRa2i-0cak5WMsF7nEmp1AQ@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <40c580f6fcfb103f21eb152c2db24a4c@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-30 16:56, Ivan Riabtsov wrote:
> I have phytec imx6ul board with a preinstalled os. On this os opessl
> version is 1.0.2j i need to build nginx for this board, but i can't
> build yocto same version as i have on board, so I grabbed a newer
> version of yocto from phytec site, rolled back glibc and try to roll
> back openssl. I do not want to flash the device, as I'm afraid to get
> brick
>=20

Why are you afraid to brick the device? You can use mfgtool to reflash=20
the device from scratch, including u-boot. It works with a special boot=20
mode pin setting and uses an USB port. Depending on the board, one might=20
need to buy or create a custom cable.

Bas.

> =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 16:51, Alexander=
 Kanavin=20
> <alex.kanavin@gmail.com>:
>>=20
>> openssl 1.0.2 went out of support at the end of 2019 and you should=20
>> not be using it. What is the problem you need to solve?
>>=20
>> Alex
>>=20
>> On Mon, 30 Aug 2021 at 15:33, Ivan Riabtsov <ivriabtsov@gmail.com>=20
>> wrote:
>>>=20
>>> hello i am trying to rollback openssl version from 1.1.1i to 1.0.2j.
>>> Copied the recipe openssl_1.1.1i.bb to openssl_1.0.2j.bb, saved the
>>> openssl_1.1.1i.bb version with the name openssl_1.1.1i.bb.backup
>>>=20
>>> =D0=9E=D1=82=D1=80=D0=B5=D0=B4=D0=B0=D0=BA=D1=82=D0=B8=D1=80=D0=BE=D0=
=B2=D0=B0=D0=BB =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D1=84=D0=B0=D0=B9=D0=BB, =
=D0=B2=D0=BE=D1=82 =D1=80=D0=B0=D0=B7=D0=BD=D0=B8=D1=86=D0=B0 =D0=B2 =D1=84=
=D0=B0=D0=B9=D0=BB=D0=B0=D1=85:
>>>=20
>>> diff -Nau ./openssl_1.1.1i.bb.backup ./openssl_1.0.2j.bb
>>> --- ./openssl_1.1.1i.bb.backup 2021-08-27 14:46:07.085808702 +0300
>>> +++ ./openssl_1.0.2j.bb 2021-08-27 16:12:14.216430734 +0300
>>> @@ -7,23 +7,19 @@
>>>  # "openssl" here actually means both OpenSSL and SSLeay licenses=20
>>> apply
>>>  # (see meta/files/common-licenses/OpenSSL to which "openssl" is
>>> SPDXLICENSEMAPped)
>>>  LICENSE =3D "openssl"
>>> -LIC_FILES_CHKSUM =3D=20
>>> "file://LICENSE;md5=3Dd343e62fc9c833710bbbed25f27364c8"
>>> +LIC_FILES_CHKSUM =3D=20
>>> "file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef93fbf6"
>>>=20
>>>  DEPENDS =3D "hostperl-runtime-native"
>>>=20
>>>  SRC_URI =3D "http://www.openssl.org/source/openssl-${PV}.tar.gz \
>>>             file://run-ptest \
>>> -           file://0001-skip-test_symbol_presence.patch \
>>> -          =20
>>> file://0001-buildinfo-strip-sysroot-and-debug-prefix-map-from-co.patch
>>> \
>>> -           file://afalg.patch \
>>> -           file://reproducible.patch \
>>>             "
>>>=20
>>>  SRC_URI_append_class-nativesdk =3D " \
>>>             file://environment.d-openssl.sh \
>>>             "
>>>=20
>>> -SRC_URI[sha256sum] =3D
>>> "e8be6a35fe41d10603c3cc635e93289ed00bf34b79671a3a4de64fcee00d5242"
>>> +SRC_URI[sha256sum] =3D
>>> "e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431"
>>>=20
>>>  inherit lib_package multilib_header multilib_script ptest
>>>  MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"
>>> @@ -122,7 +118,7 @@
>>>   # WARNING: do not set compiler/linker flags (-I/-D etc.) in
>>> EXTRA_OECONF, as they will fully replace the
>>>   # environment variables set by bitbake. Adjust the environment
>>> variables instead.
>>>   HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl
>>> PERL5LIB=3D"${S}/external/perl/Text-Template-1.46/lib/" \
>>> - perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
>>> --prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.1 --libdir=3D${lib=
dir}
>>> $target
>>> + perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
>>> --prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${lib=
dir}
>>> $target
>>>   perl ${B}/configdata.pm --dump
>>>  }
>>>=20
>>> @@ -134,30 +130,30 @@
>>>   # Create SSL structure for packages such as ca-certificates which
>>>   # contain hard-coded paths to /etc/ssl. Debian does the same.
>>>   install -d ${D}${sysconfdir}/ssl
>>> - mv ${D}${libdir}/ssl-1.1/certs \
>>> -    ${D}${libdir}/ssl-1.1/private \
>>> -    ${D}${libdir}/ssl-1.1/openssl.cnf \
>>> + mv ${D}${libdir}/ssl-1.0/certs \
>>> +    ${D}${libdir}/ssl-1.0/private \
>>> +    ${D}${libdir}/ssl-1.0/openssl.cnf \
>>>      ${D}${sysconfdir}/ssl/
>>>=20
>>>   # Although absolute symlinks would be OK for the target, they=20
>>> become
>>>   # invalid if native or nativesdk are relocated from sstate.
>>> - ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
>>> '${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.1/certs
>>> - ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
>>> '${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.1/private
>>> - ln -sf ${@oe.path.relative('${libdir}/ssl-1.1',
>>> '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.1/openssl.cnf
>>> + ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
>>> '${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.0/certs
>>> + ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
>>> '${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.0/private
>>> + ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
>>> '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.0/openssl.cnf
>>>  }
>>>=20
>>>  do_install_append_class-native () {
>>>   create_wrapper ${D}${bindir}/openssl \
>>> -     OPENSSL_CONF=3D${libdir}/ssl-1.1/openssl.cnf \
>>> -     SSL_CERT_DIR=3D${libdir}/ssl-1.1/certs \
>>> -     SSL_CERT_FILE=3D${libdir}/ssl-1.1/cert.pem \
>>> -     OPENSSL_ENGINES=3D${libdir}/engines-1.1
>>> +     OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \
>>> +     SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \
>>> +     SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \
>>> +     OPENSSL_ENGINES=3D${libdir}/engines-1.0
>>>  }
>>>=20
>>>  do_install_append_class-nativesdk () {
>>>   mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
>>>   install -m 644 ${WORKDIR}/environment.d-openssl.sh
>>> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
>>> - sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.1/|g' -i
>>> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
>>> + sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g' -i
>>> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
>>>  }
>>>=20
>>>  PTEST_BUILD_HOST_FILES +=3D "configdata.pm"
>>> @@ -170,8 +166,8 @@
>>>   cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util
>>> ${B}/util ${D}${PTEST_PATH}
>>>=20
>>>   # For test_shlibload
>>> - ln -s ${libdir}/libcrypto.so.1.1 ${D}${PTEST_PATH}/
>>> - ln -s ${libdir}/libssl.so.1.1 ${D}${PTEST_PATH}/
>>> + ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/
>>> + ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/
>>>=20
>>>   install -d ${D}${PTEST_PATH}/apps
>>>   ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps
>>> @@ -192,11 +188,11 @@
>>>  FILES_libcrypto =3D "${libdir}/libcrypto${SOLIBS}"
>>>  FILES_libssl =3D "${libdir}/libssl${SOLIBS}"
>>>  FILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf \
>>> -                      ${libdir}/ssl-1.1/openssl.cnf* \
>>> +                      ${libdir}/ssl-1.0/openssl.cnf* \
>>>                        "
>>> -FILES_${PN}-engines =3D "${libdir}/engines-1.1"
>>> -FILES_${PN}-misc =3D "${libdir}/ssl-1.1/misc"
>>> -FILES_${PN} =3D+ "${libdir}/ssl-1.1/*"
>>> +FILES_${PN}-engines =3D "${libdir}/engines-1.0"
>>> +FILES_${PN}-misc =3D "${libdir}/ssl-1.0/misc"
>>> +FILES_${PN} =3D+ "${libdir}/ssl-1.0/*"
>>>  FILES_${PN}_append_class-nativesdk =3D "
>>> ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>>>=20
>>>  CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"
>>>=20
>>>=20
>>> =D0=B2=D0=BE=D1=82 =D0=BD=D0=BE=D0=B2=D1=8B=D0=B9 =D0=BF=D0=BE=D0=BB=D1=
=83=D1=87=D0=B8=D0=B2=D1=88=D0=B8=D0=B9=D1=81=D1=8F =D1=84=D0=B0=D0=B9=D0=
=BB:
>>>=20
>>>=20
>>> cat openssl_1.0.2j.bb
>>> SUMMARY =3D "Secure Socket Layer"
>>> DESCRIPTION =3D "Secure Socket Layer (SSL) binary and related
>>> cryptographic tools."
>>> HOMEPAGE =3D "http://www.openssl.org/"
>>> BUGTRACKER =3D "http://www.openssl.org/news/vulnerabilities.html"
>>> SECTION =3D "libs/network"
>>>=20
>>> # "openssl" here actually means both OpenSSL and SSLeay licenses=20
>>> apply
>>> # (see meta/files/common-licenses/OpenSSL to which "openssl" is
>>> SPDXLICENSEMAPped)
>>> LICENSE =3D "openssl"
>>> LIC_FILES_CHKSUM =3D=20
>>> "file://LICENSE;md5=3D27ffa5d74bb5a337056c14b2ef93fbf6"
>>>=20
>>> DEPENDS =3D "hostperl-runtime-native"
>>>=20
>>> SRC_URI =3D "http://www.openssl.org/source/openssl-${PV}.tar.gz \
>>>            file://run-ptest \
>>>            "
>>>=20
>>> SRC_URI_append_class-nativesdk =3D " \
>>>            file://environment.d-openssl.sh \
>>>            "
>>>=20
>>> SRC_URI[sha256sum] =3D
>>> "e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431"
>>>=20
>>> inherit lib_package multilib_header multilib_script ptest
>>> MULTILIB_SCRIPTS =3D "${PN}-bin:${bindir}/c_rehash"
>>>=20
>>> PACKAGECONFIG ?=3D ""
>>> PACKAGECONFIG_class-native =3D ""
>>> PACKAGECONFIG_class-nativesdk =3D ""
>>>=20
>>> PACKAGECONFIG[cryptodev-linux] =3D
>>> "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-mo=
dule"
>>>=20
>>> B =3D "${WORKDIR}/build"
>>> do_configure[cleandirs] =3D "${B}"
>>>=20
>>> #| ./libcrypto.so: undefined reference to `getcontext'
>>> #| ./libcrypto.so: undefined reference to `setcontext'
>>> #| ./libcrypto.so: undefined reference to `makecontext'
>>> EXTRA_OECONF_append_libc-musl =3D " no-async"
>>> EXTRA_OECONF_append_libc-musl_powerpc64 =3D " no-asm"
>>>=20
>>> # adding devrandom prevents openssl from using getrandom() which is
>>> not available on older glibc versions
>>> # (native versions can be built with newer glibc, but then relocated
>>> onto a system with older glibc)
>>> EXTRA_OECONF_class-native =3D "--with-rand-seed=3Dos,devrandom"
>>> EXTRA_OECONF_class-nativesdk =3D "--with-rand-seed=3Dos,devrandom"
>>>=20
>>> # Relying on hardcoded built-in paths causes openssl-native to not be
>>> relocateable from sstate.
>>> CFLAGS_append_class-native =3D " -DOPENSSLDIR=3D/not/builtin
>>> -DENGINESDIR=3D/not/builtin"
>>> CFLAGS_append_class-nativesdk =3D " -DOPENSSLDIR=3D/not/builtin
>>> -DENGINESDIR=3D/not/builtin"
>>>=20
>>> do_configure () {
>>> os=3D${HOST_OS}
>>> case $os in
>>> linux-gnueabi |\
>>> linux-gnuspe |\
>>> linux-musleabi |\
>>> linux-muslspe |\
>>> linux-musl )
>>> os=3Dlinux
>>> ;;
>>> *)
>>> ;;
>>> esac
>>> target=3D"$os-${HOST_ARCH}"
>>> case $target in
>>> linux-arm*)
>>> target=3Dlinux-armv4
>>> ;;
>>> linux-aarch64*)
>>> target=3Dlinux-aarch64
>>> ;;
>>> linux-i?86 | linux-viac3)
>>> target=3Dlinux-x86
>>> ;;
>>> linux-gnux32-x86_64 | linux-muslx32-x86_64 )
>>> target=3Dlinux-x32
>>> ;;
>>> linux-gnu64-x86_64)
>>> target=3Dlinux-x86_64
>>> ;;
>>> linux-mips | linux-mipsel)
>>> # specifying TARGET_CC_ARCH prevents openssl from (incorrectly)=20
>>> adding
>>> target architecture flags
>>> target=3D"linux-mips32 ${TARGET_CC_ARCH}"
>>> ;;
>>> linux-gnun32-mips*)
>>> target=3Dlinux-mips64
>>> ;;
>>> linux-*-mips64 | linux-mips64 | linux-*-mips64el | linux-mips64el)
>>> target=3Dlinux64-mips64
>>> ;;
>>> linux-microblaze* | linux-nios2* | linux-sh3 | linux-sh4 |=20
>>> linux-arc*)
>>> target=3Dlinux-generic32
>>> ;;
>>> linux-powerpc)
>>> target=3Dlinux-ppc
>>> ;;
>>> linux-powerpc64)
>>> target=3Dlinux-ppc64
>>> ;;
>>> linux-powerpc64le)
>>> target=3Dlinux-ppc64le
>>> ;;
>>> linux-riscv32)
>>> target=3Dlinux-generic32
>>> ;;
>>> linux-riscv64)
>>> target=3Dlinux-generic64
>>> ;;
>>> linux-sparc | linux-supersparc)
>>> target=3Dlinux-sparcv9
>>> ;;
>>> esac
>>>=20
>>> useprefix=3D${prefix}
>>> if [ "x$useprefix" =3D "x" ]; then
>>> useprefix=3D/
>>> fi
>>> # WARNING: do not set compiler/linker flags (-I/-D etc.) in
>>> EXTRA_OECONF, as they will fully replace the
>>> # environment variables set by bitbake. Adjust the environment
>>> variables instead.
>>> HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl
>>> PERL5LIB=3D"${S}/external/perl/Text-Template-1.46/lib/" \
>>> perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS}
>>> --prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.0 --libdir=3D${lib=
dir}
>>> $target
>>> perl ${B}/configdata.pm --dump
>>> }
>>>=20
>>> do_install () {
>>> oe_runmake DESTDIR=3D"${D}" MANDIR=3D"${mandir}" MANSUFFIX=3Dssl instal=
l
>>>=20
>>> oe_multilib_header openssl/opensslconf.h
>>>=20
>>> # Create SSL structure for packages such as ca-certificates which
>>> # contain hard-coded paths to /etc/ssl. Debian does the same.
>>> install -d ${D}${sysconfdir}/ssl
>>> mv ${D}${libdir}/ssl-1.0/certs \
>>>    ${D}${libdir}/ssl-1.0/private \
>>>    ${D}${libdir}/ssl-1.0/openssl.cnf \
>>>    ${D}${sysconfdir}/ssl/
>>>=20
>>> # Although absolute symlinks would be OK for the target, they become
>>> # invalid if native or nativesdk are relocated from sstate.
>>> ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
>>> '${sysconfdir}/ssl/certs')} ${D}${libdir}/ssl-1.0/certs
>>> ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
>>> '${sysconfdir}/ssl/private')} ${D}${libdir}/ssl-1.0/private
>>> ln -sf ${@oe.path.relative('${libdir}/ssl-1.0',
>>> '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl-1.0/openssl.cnf
>>> }
>>>=20
>>> do_install_append_class-native () {
>>> create_wrapper ${D}${bindir}/openssl \
>>>     OPENSSL_CONF=3D${libdir}/ssl-1.0/openssl.cnf \
>>>     SSL_CERT_DIR=3D${libdir}/ssl-1.0/certs \
>>>     SSL_CERT_FILE=3D${libdir}/ssl-1.0/cert.pem \
>>>     OPENSSL_ENGINES=3D${libdir}/engines-1.0
>>> }
>>>=20
>>> do_install_append_class-nativesdk () {
>>> mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
>>> install -m 644 ${WORKDIR}/environment.d-openssl.sh
>>> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
>>> sed 's|/usr/lib/ssl/|/usr/lib/ssl-1.0/|g' -i
>>> ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
>>> }
>>>=20
>>> PTEST_BUILD_HOST_FILES +=3D "configdata.pm"
>>> PTEST_BUILD_HOST_PATTERN =3D "perl_version =3D"
>>> do_install_ptest () {
>>> # Prune the build tree
>>> rm -f ${B}/fuzz/*.* ${B}/test/*.*
>>>=20
>>> cp ${S}/Configure ${B}/configdata.pm ${D}${PTEST_PATH}
>>> cp -r ${S}/external ${B}/test ${S}/test ${B}/fuzz ${S}/util ${B}/util
>>> ${D}${PTEST_PATH}
>>>=20
>>> # For test_shlibload
>>> ln -s ${libdir}/libcrypto.so.1.0 ${D}${PTEST_PATH}/
>>> ln -s ${libdir}/libssl.so.1.0 ${D}${PTEST_PATH}/
>>>=20
>>> install -d ${D}${PTEST_PATH}/apps
>>> ln -s ${bindir}/openssl ${D}${PTEST_PATH}/apps
>>> install -m644 ${S}/apps/*.pem ${S}/apps/*.srl ${S}/apps/openssl.cnf
>>> ${D}${PTEST_PATH}/apps
>>> install -m755 ${B}/apps/CA.pl ${D}${PTEST_PATH}/apps
>>>=20
>>> install -d ${D}${PTEST_PATH}/engines
>>> install -m755 ${B}/engines/ossltest.so ${D}${PTEST_PATH}/engines
>>> }
>>>=20
>>> # Add the openssl.cnf file to the openssl-conf package. Make the=20
>>> libcrypto
>>> # package RRECOMMENDS on this package. This will enable the=20
>>> configuration
>>> # file to be installed for both the openssl-bin package and the=20
>>> libcrypto
>>> # package since the openssl-bin package depends on the libcrypto=20
>>> package.
>>>=20
>>> PACKAGES =3D+ "libcrypto libssl openssl-conf ${PN}-engines ${PN}-misc"
>>>=20
>>> FILES_libcrypto =3D "${libdir}/libcrypto${SOLIBS}"
>>> FILES_libssl =3D "${libdir}/libssl${SOLIBS}"
>>> FILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf \
>>>                       ${libdir}/ssl-1.0/openssl.cnf* \
>>>                       "
>>> FILES_${PN}-engines =3D "${libdir}/engines-1.0"
>>> FILES_${PN}-misc =3D "${libdir}/ssl-1.0/misc"
>>> FILES_${PN} =3D+ "${libdir}/ssl-1.0/*"
>>> FILES_${PN}_append_class-nativesdk =3D "
>>> ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
>>>=20
>>> CONFFILES_openssl-conf =3D "${sysconfdir}/ssl/openssl.cnf"
>>>=20
>>> RRECOMMENDS_libcrypto +=3D "openssl-conf"
>>> RDEPENDS_${PN}-ptest +=3D "openssl-bin perl perl-modules bash"
>>>=20
>>> RDEPENDS_${PN}-bin +=3D "openssl-conf"
>>>=20
>>> BBCLASSEXTEND =3D "native nativesdk"
>>>=20
>>> CVE_PRODUCT =3D "openssl:openssl"
>>>=20
>>> # Only affects OpenSSL >=3D 1.1.1 in combination with Apache < 2.4.37
>>> # Apache in meta-webserver is already recent enough
>>> CVE_CHECK_WHITELIST +=3D "CVE-2019-0190"
>>>=20
>>>=20
>>> I understand that I need to figure out the configs yourself, but I=20
>>> get
>>> this error when executing the
>>>=20
>>> bitbake openssl-native
>>>=20
>>> ERROR: Execution of
>>> '/home/ivr/work/yocto_orig/build/tmp/work/x86_64-linux/openssl-native/1=
.0.2j-r0/temp/run.do_configure.1071458'
>>> failed with exit code 2:
>>> | unable to read opensslv.h:No such file or directory
>>> | Configuring for linux-x86_64
>>> |     no-devcryptoeng [option]   OPENSSL_NO_DEVCRYPTOENG (skip dir)
>>> |     no-ec_nistp_64_gcc_128 [default] =20
>>> OPENSSL_NO_EC_NISTP_64_GCC_128
>>> (skip dir)
>>> |     no-gmp          [default]  OPENSSL_NO_GMP (skip dir)
>>> |     no-jpake        [experimental] OPENSSL_NO_JPAKE (skip dir)
>>> |     no-krb5         [krb5-flavor not specified] OPENSSL_NO_KRB5
>>> |     no-libunbound   [experimental] OPENSSL_NO_LIBUNBOUND (skip dir)
>>> |     no-md2          [default]  OPENSSL_NO_MD2 (skip dir)
>>> |     no-rc5          [default]  OPENSSL_NO_RC5 (skip dir)
>>> |     no-rfc3779      [default]  OPENSSL_NO_RFC3779 (skip dir)
>>> |     no-sctp         [default]  OPENSSL_NO_SCTP (skip dir)
>>> |     no-shared       [default]
>>> |     no-ssl-trace    [default]  OPENSSL_NO_SSL_TRACE (skip dir)
>>> |     no-ssl2         [default]  OPENSSL_NO_SSL2 (skip dir)
>>> |     no-store        [experimental] OPENSSL_NO_STORE (skip dir)
>>> |     no-unit-test    [default]  OPENSSL_NO_UNIT_TEST (skip dir)
>>> |     no-weak-ssl-ciphers [default]  OPENSSL_NO_WEAK_SSL_CIPHERS=20
>>> (skip dir)
>>> |     no-zlib         [default]
>>> |     no-zlib-dynamic [default]
>>> | IsMK1MF=3D0
>>> | WARNING: exit code 2 from a shell command.
>>> |
>>>=20
>>> As far as I can understand, the opensslv.h file is generated just at
>>> the configuration stage, why does the configuration stage give an
>>> error of the absence of this file?
>>>=20
>>>=20
>>>=20
>=20
>=20
>=20

