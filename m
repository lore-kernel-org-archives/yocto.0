Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web08.11613.1616959155381905297
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Mar 2021 12:19:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gU0kVfKU;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso6667060pji.3
        for <yocto@lists.yoctoproject.org>; Sun, 28 Mar 2021 12:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=lIcqNE2Il/YeF0HlxkUaNLKW3cHcDWrganZvQDtXbHI=;
        b=gU0kVfKUGvp2PB1MI6FWdRYGMt7ZQR5FbcRptg8pDkfaVGu8YnhVQtRqH5L21bm5iw
         isQHx22I4tbF6FcufXJbRpOWX8PV5NuhqjCgrlPc3s8lrY+EjNkcydn2JquQggak4g5a
         KXxaIbafRZ+pVgzBHLqc51/AqmEQryEDtUL+SRmFquis3rzttHBiyufnjuQIbLCMOFYW
         i8xjE2Ox8TssZ+ot2XX4tfjLUBxLaJ2XU3ri+kJO1c8UML3FPWFVLgCMSDpfQnPTrbr+
         Ds9cPN/Brb2dQYDA+KPrdJWHacjvdAhMknoEhLbcv+5cXryy8WklMtvIOd7gb/jw2sT0
         ZrrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=lIcqNE2Il/YeF0HlxkUaNLKW3cHcDWrganZvQDtXbHI=;
        b=MTs/7NfJCg4jomDifXPcaEPBE/VK4fNjD94sl65Q2pjXGjTkOZEspr77Ac69jHVo+A
         MhlRNXOzTvN5HwnpLPraaISwzuh0bPjKpwoK7MQXCninEA0Z0Pt+F+h3xaTfDnFmmbDp
         fEzxKKrnih+rQdbNtIg50Q7fYD0+HPlhWefIuq10le70/Iw5yCG7tZtKSnn9v/8BYUzR
         UVPv+U2ZWRK4PvyNkfaC8EvgxgIn6NQfv3earIsj/LqyF1CdwNuaUhcXdtQmJUe70SkU
         z2IlgG+/UkF9HpeRCvK4EMTmz2SkCzMgVmwABxM1Fi/CzkrCrW6iXhojeT16fpH/UUJ/
         Vjsg==
X-Gm-Message-State: AOAM532btvbz1TZG59lrOxFuydboK7dzibwotqtDX1JT37Khifya2TFz
	OjaflnwxGBn5xG9d1P3ZSK/MPvXTHTQ=
X-Google-Smtp-Source: ABdhPJy6bdiWFa46ItJfShWTY3ZxUEraunXJ7Q0FUhcP6DhSySw6e6RENu7LRNdrybVDa5wI5KuvLw==
X-Received: by 2002:a17:90a:314:: with SMTP id 20mr23772963pje.72.1616959154335;
        Sun, 28 Mar 2021 12:19:14 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c0c2:69a9:845:6a4c? ([2601:202:4180:a5c0:c0c2:69a9:845:6a4c])
        by smtp.gmail.com with ESMTPSA id w26sm14864571pfn.33.2021.03.28.12.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Mar 2021 12:19:13 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] clamav: upgrade 103.0
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20210327190453.1129924-1-akuster808@gmail.com>
 <6822998C-1D57-411D-B6FE-973BED1BFF6B@0leil.net>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <92359bf1-528b-cb7f-8d58-f3790c3d2ee6@gmail.com>
Date: Sun, 28 Mar 2021 12:19:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6822998C-1D57-411D-B6FE-973BED1BFF6B@0leil.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 3/27/21 2:12 PM, Quentin Schulz wrote:
> Hi Armin,
>
> On March 27, 2021 7:04:53 PM UTC, akuster <akuster808@gmail.com> wrote:
>> convert to cmake and general cleanup
>>
>> include on oe env patch and glibc 2.33 header fixup
>>
>> if running w/in qemu, need to add qemuparams="-m 2048" to allow
>> freshclam not to oom
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> .../{clamav_0.101.5.bb => clamav_0.103.0.bb}  | 101 +++++++-----------
>> .../clamav/files/headers_fixup.patch          |  58 ++++++++++
>> .../clamav/files/oe_cmake_fixup.patch         |  39 +++++++
>> 3 files changed, 134 insertions(+), 64 deletions(-)
>> rename recipes-scanners/clamav/{clamav_0.101.5.bb => clamav_0.103.0.bb} (61%)
>> create mode 100644 recipes-scanners/clamav/files/headers_fixup.patch
>> create mode 100644 recipes-scanners/clamav/files/oe_cmake_fixup.patch
>>
>> diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.103.0.bb
>> similarity index 61%
>> rename from recipes-scanners/clamav/clamav_0.101.5.bb
>> rename to recipes-scanners/clamav/clamav_0.103.0.bb
>> index 7dad263..9e50466 100644
>> --- a/recipes-scanners/clamav/clamav_0.101.5.bb
>> +++ b/recipes-scanners/clamav/clamav_0.103.0.bb
>> @@ -4,94 +4,68 @@ HOMEPAGE = "http://www.clamav.net/index.html"
>> SECTION = "security"
>> LICENSE = "LGPL-2.1"
>>
>> -DEPENDS = "libtool db libxml2 openssl zlib curl llvm clamav-native libmspack bison-native"
>> -DEPENDS_class-native = "db-native openssl-native zlib-native llvm-native curl-native bison-native"
>> +DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c libcheck"
>>  
>> -LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
>> +LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
>>
>> -SRCREV = "482fcd413b07e9fd3ef9850e6d01a45f4e187108"
>> +SRCREV = "5553a5e206ceae5d920368baee7d403f823bcb6f"
>>
>> -SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
>> +SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=dev/0.104 \
> Are you sure it's not dev/0.103 here? Also, there seems to be a 0.103.1 branch available already. I don't really know which version you're targeting. I would say it makes sense to have this branch aligned with the filename of the recipe.
Right.. I should change the PV of the recipe.  Ill send v2

thanks for the feedback.

-armin
>
> Cheers,
> Quentin
>
>>     file://clamd.conf \
>>     file://freshclam.conf \
>>     file://volatiles.03_clamav \
>>     file://tmpfiles.clamav \
>>     file://${BPN}.service \
>> -    file://freshclam-native.conf \
>> -    "
>> -
>> +    file://headers_fixup.patch \
>> +    file://oe_cmake_fixup.patch \
>> +"
>> S = "${WORKDIR}/git"
>>
>> LEAD_SONAME = "libclamav.so"
>> -SO_VER = "9.0.4"
>> +SO_VER = "9.6.0"
>> +
>> +BINCONFIG = "${bindir}/clamav-config"
>>
>> -inherit autotools pkgconfig useradd systemd multilib_header multilib_script
>> +inherit cmake chrpath pkgconfig useradd systemd multilib_header multilib_script
>>
>> CLAMAV_UID ?= "clamav"
>> CLAMAV_GID ?= "clamav"
>> -INSTALL_CLAMAV_CVD ?= "1"
>> -
>> -CLAMAV_USR_DIR = "${STAGING_DIR_NATIVE}/usr"
>> -CLAMAV_USR_DIR_class-target = "${STAGING_DIR_HOST}/usr"
>> -
>> -PACKAGECONFIG_class-target ?= "ncurses bz2"
>> -PACKAGECONFIG_class-target += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
>> -PACKAGECONFIG_class-target += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
>> -
>> -PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
>> -PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json-c,"
>> -PACKAGECONFIG[ipv6] = "--enable-ipv6, --disable-ipv6"
>> -PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --disable-bzip2, bzip2"
>> -PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
>> -PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
>>
>> MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${localstatedir}/lib/clamav/mirrors.dat"
>>
>> -EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
>> -            --disable-mempool \
>> -            --program-prefix="" \
>> -            --disable-zlib-vcheck \
>> -            --with-xml=${CLAMAV_USR_DIR} \
>> -            --with-zlib=${CLAMAV_USR_DIR} \
>> -            --with-openssl=${CLAMAV_USR_DIR} \
>> -            --with-libcurl=${CLAMAV_USR_DIR} \
>> -            --with-system-libmspack=${CLAMAV_USR_DIR} \
>> -            --with-iconv=no \
>> -            --enable-check=no \
>> -            "
>> -
>> -EXTRA_OECONF_class-native += "${EXTRA_OECONF_CLAMAV}"
>> -EXTRA_OECONF_class-target += "--with-user=${CLAMAV_UID}  --with-group=${CLAMAV_GID} ${EXTRA_OECONF_CLAMAV}"
>> -
>> -do_configure () {
>> -    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
>> -}
>> +EXTRA_OECMAKE = " -DCMAKE_BUILD_TYPE=Release -DOPTIMIZE=ON -DENABLE_JSON_SHARED=OFF \
>> +                  -DCLAMAV_GROUP=${CLAMAV_GID} -DCLAMAV_USER=${CLAMAV_UID} \ 
>> +                  -DENABLE_TESTS=OFF -DBUILD_SHARED_LIBS=ON \
>> +                  -DDISABLE_MPOOL=ON -DENABLE_FRESHCLAM_DNS_FIX=ON \
>> +                   "
>>
>> -do_configure_class-native () {
>> -    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
>> -}
>> +PACKAGECONFIG ?= "  clamonacc \
>> +                 ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd", "", d)}"
>>
>> -do_compile_append_class-target() {
>> -    if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
>> -        bbnote "CLAMAV creating cvd"
>> -        install -d ${S}/clamav_db
>> -        ${STAGING_BINDIR_NATIVE}/freshclam --datadir=${S}/clamav_db --config=${WORKDIR}/freshclam-native.conf
>> -    fi
>> -}
>> +PACKAGECONFIG[milter] = "-DENABLE_MILTER=ON ,-DENABLE_MILTER=OFF, curl, curl"
>> +PACKAGECONFIG[clamonacc] = "-DENABLE_CLAMONACC=ON ,-DENABLE_CLAMONACC=OFF,"
>> +PACKAGECONFIG[unrar] = "-DENABLE_UNRAR=ON ,-DENABLE_UNRAR=OFF,"
>> +PACKAGECONFIG[systemd] = "-DENABLE_SYSTEMD=ON -DSYSTEMD_UNIT_DIR=${systemd_system_unitdir}, -DENABLE_SYSTEMD=OFF, systemd"
>> +
>> +export OECMAKE_C_FLAGS += " -I${STAGING_INCDIR} -L ${RECIPE_SYSROOT}${nonarch_libdir} -L${STAGING_LIBDIR} -lpthread" 
>>
>> -do_install_append_class-target () {
>> +do_install_append () {
>>     install -d ${D}/${sysconfdir}
>>     install -d ${D}/${localstatedir}/lib/clamav
>>     install -d ${D}${sysconfdir}/clamav ${D}${sysconfdir}/default/volatiles
>>
>> -    install -m 644 ${WORKDIR}/clamd.conf ${D}/${sysconfdir}
>> -    install -m 644 ${WORKDIR}/freshclam.conf ${D}/${sysconfdir}
>> +    install -m 644 ${WORKDIR}/clamd.conf ${D}/${prefix}/${sysconfdir}
>> +    install -m 644 ${WORKDIR}/freshclam.conf ${D}/${prefix}/${sysconfdir}
>>     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/03_clamav
>>     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
>>     rm ${D}/${libdir}/libclamav.so
>>     if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
>>         install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
>>     fi
>> +
>> +    rm ${D}/${libdir}/libfreshclam.so
>> +    rm ${D}/${libdir}/libmspack.so
>> +
>>     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
>>         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
>>         install -d ${D}${sysconfdir}/tmpfiles.d
>> @@ -114,10 +88,10 @@ pkg_postinst_ontarget_${PN} () {
>> PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc ${PN}-cvd \
>>             ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-staticdev"
>>
>> -FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit \
>> +FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit ${sbindir}/clamonacc \
>>                 ${bindir}/*sigtool ${mandir}/man1/clambc* ${mandir}/man1/clamscan* \
>>                 ${mandir}/man1/sigtool* ${mandir}/man1/clambsubmit*  \
>> -                ${docdir}/clamav/* "
>> +                ${docdir}/clamav/* ${libdir}/libmspack* "
>>
>> FILES_${PN}-clamdscan = " ${bindir}/clamdscan \
>>                         ${docdir}/clamdscan/* \
>> @@ -128,12 +102,14 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
>>                         ${mandir}/man1/clamconf* ${mandir}/man1/clamdtop* \
>>                         ${mandir}/man5/clamd*  ${mandir}/man8/clamd* \
>>                         ${sysconfdir}/clamd.conf* \
>> +                        /usr/etc/clamd.conf* \
>>                         ${systemd_unitdir}/system/clamav-daemon/* \
>>                         ${docdir}/clamav-daemon/*  ${sysconfdir}/clamav-daemon \
>>                         ${sysconfdir}/logcheck/ignore.d.server/clamav-daemon "
>>
>> FILES_${PN}-freshclam = "${bindir}/freshclam \
>>                         ${sysconfdir}/freshclam.conf*  \
>> +                        /usr/etc/freshclam.conf*  \
>>                         ${sysconfdir}/clamav ${sysconfdir}/default/volatiles \
>>                         ${sysconfdir}/tmpfiles.d/*.conf \
>>                         ${localstatedir}/lib/clamav \
>> @@ -148,8 +124,8 @@ FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
>>
>> FILES_${PN}-staticdev = "${libdir}/*.a"
>>
>> -FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so*\
>> -                          ${docdir}/libclamav/* "
>> +FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so* \
>> +                         ${libdir}/libfreshclam.so* ${docdir}/libclamav/* "
>>
>> FILES_${PN}-doc = "${mandir}/man/* \
>>                    ${datadir}/man/* \
>> @@ -169,6 +145,3 @@ RCONFLICTS_${PN} += "${PN}-systemd"
>> SYSTEMD_SERVICE_${PN} = "${BPN}.service"
>>
>> RDEPENDS_${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-freshclam clamav-libclamav"
>> -RDEPENDS_${PN}_class-native = ""
>> -
>> -BBCLASSEXTEND = "native"
>> diff --git a/recipes-scanners/clamav/files/headers_fixup.patch b/recipes-scanners/clamav/files/headers_fixup.patch
>> new file mode 100644
>> index 0000000..9de0a26
>> --- /dev/null
>> +++ b/recipes-scanners/clamav/files/headers_fixup.patch
>> @@ -0,0 +1,58 @@
>> +Fixes checks not needed do to glibc 2.33
>> +
>> +Upstream-Status: Pending
>> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> +
>> +Index: git/CMakeLists.txt
>> +===================================================================
>> +--- git.orig/CMakeLists.txt
>> ++++ git/CMakeLists.txt
>> +@@ -374,8 +373,6 @@ check_include_file("stdlib.h"
>> + check_include_file("string.h"           HAVE_STRING_H)
>> + check_include_file("strings.h"          HAVE_STRINGS_H)
>> + check_include_file("sys/cdefs.h"        HAVE_SYS_CDEFS_H)
>> +-check_include_file("sys/dl.h"           HAVE_SYS_DL_H)
>> +-check_include_file("sys/fileio.h"       HAVE_SYS_FILIO_H)
>> + check_include_file("sys/mman.h"         HAVE_SYS_MMAN_H)
>> + check_include_file("sys/param.h"        HAVE_SYS_PARAM_H)
>> + check_include_file("sys/queue.h"        HAVE_SYS_QUEUE_H)
>> +@@ -410,8 +407,6 @@ endif()
>> + 
>> + # int-types variants
>> + check_include_file("inttypes.h"         HAVE_INTTYPES_H)
>> +-check_include_file("sys/inttypes.h"     HAVE_SYS_INTTYPES_H)
>> +-check_include_file("sys/int_types.h"    HAVE_SYS_INT_TYPES_H)
>> + check_include_file("stdint.h"           HAVE_STDINT_H)
>> + 
>> + # this hack required to silence warnings on systems with inttypes.h
>> +@@ -539,17 +528,11 @@ check_type_size("time_t"  SIZEOF_TIME_T)
>> + # Checks for library functions.
>> + include(CheckSymbolExists)
>> + check_symbol_exists(_Exit           "stdlib.h"      HAVE__EXIT)
>> +-check_symbol_exists(accept4         "sys/types.h"   HAVE_ACCEPT4)
>> + check_symbol_exists(snprintf        "stdio.h"       HAVE_SNPRINTF)
>> +-check_symbol_exists(stat64          "sys/stat.h"    HAVE_STAT64)
>> +-check_symbol_exists(strcasestr      "string.h"      HAVE_STRCASESTR)
>> + check_symbol_exists(strerror_r      "string.h"      HAVE_STRERROR_R)
>> +-check_symbol_exists(strlcat         "string.h"      HAVE_STRLCAT)
>> +-check_symbol_exists(strlcpy         "string.h"      HAVE_STRLCPY)
>> + check_symbol_exists(strndup         "string.h"      HAVE_STRNDUP)
>> + check_symbol_exists(strnlen         "string.h"      HAVE_STRNLEN)
>> +-check_symbol_exists(strnstr         "string.h"      HAVE_STRNSTR)
>> +-check_symbol_exists(sysctlbyname    "sysctl.h"      HAVE_SYSCTLBYNAME)
>> ++check_symbol_exists(strcasecmp      "string.h"      HAVE_STRNCMP)
>> + check_symbol_exists(timegm          "time.h"        HAVE_TIMEGM)
>> + check_symbol_exists(vsnprintf       "stdio.h"       HAVE_VSNPRINTF)
>> + 
>> +@@ -563,10 +546,9 @@ else()
>> +     check_symbol_exists(fseeko          "stdio.h"       HAVE_FSEEKO)
>> +     check_symbol_exists(getaddrinfo     "netdb.h"       HAVE_GETADDRINFO)
>> +     check_symbol_exists(getpagesize     "unistd.h"      HAVE_GETPAGESIZE)
>> +-    check_symbol_exists(mkstemp         "unistd.h"      HAVE_MKSTEMP)
>> +     check_symbol_exists(poll            "poll.h"        HAVE_POLL)
>> +-    check_symbol_exists(setgroups       "unistd.h"      HAVE_SETGROUPS)
>> +     check_symbol_exists(setsid          "unistd.h"      HAVE_SETSID)
>> ++    set(HAVE_SYSCONF_SC_PAGESIZE 1)
>> + endif()
>> + 
>> + include(CheckSymbolExists)
>> diff --git a/recipes-scanners/clamav/files/oe_cmake_fixup.patch b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
>> new file mode 100644
>> index 0000000..b284915
>> --- /dev/null
>> +++ b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
>> @@ -0,0 +1,39 @@
>> +Issue with rpath including /usr/lib and crosscompile checkes causing oe configure to fail
>> +
>> +Use oe's cmake rpath framework and exclude some of the cmake checks that fail in our env
>> +
>> +Upstream-Status: Inappropriate [configuration]
>> +Singed-off-by: Armin Kuster <akuster808@gmail.com>
>> +
>> +Index: git/CMakeLists.txt
>> +===================================================================
>> +--- git.orig/CMakeLists.txt
>> ++++ git/CMakeLists.txt
>> +@@ -162,12 +162,6 @@ endif()
>> + 
>> + include(GNUInstallDirs)
>> + 
>> +-if(CMAKE_INSTALL_FULL_LIBDIR)
>> +-    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_FULL_LIBDIR}")
>> +-else()
>> +-    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
>> +-endif()
>> +-
>> + if(C_LINUX)
>> +     if(CMAKE_COMPILER_IS_GNUCXX)
>> +         # Set _GNU_SOURCE for O_LARGEFILE, O_CLOEXEC, O_DIRECTORY, O_NOFOLLOW, etc flags on older systems
>> +@@ -512,14 +506,8 @@ include(TestInline)
>> + include(CheckFileOffsetBits)
>> + # Determine how to pack structs on this platform.
>> + include(CheckStructPacking)
>> +-# Check for signed right shift implementation.
>> +-include(CheckSignedRightShift)
>> + # Check if systtem fts implementation available
>> + include(CheckFTS)
>> +-# Check if uname(2) follows POSIX standard.
>> +-include(CheckUnamePosix)
>> +-# Check support for file descriptor passing
>> +-include(CheckFDPassing)
>> + 
>> + # Check if big-endian
>> + include(TestBigEndian)
>> -- 
>> 2.25.1
>>

