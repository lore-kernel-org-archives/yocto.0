Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.305.1616879567506022014
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Mar 2021 14:12:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.100.75
Received: from [127.0.0.1] (80-110-100-75.cgn.dynamic.surfer.at [80.110.100.75])
	(Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 051C660002;
	Sat, 27 Mar 2021 21:12:44 +0000 (UTC)
Date: Sat, 27 Mar 2021 21:12:42 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, akuster <akuster808@gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] clamav: upgrade 103.0
In-Reply-To: <20210327190453.1129924-1-akuster808@gmail.com>
References: <20210327190453.1129924-1-akuster808@gmail.com>
Message-ID: <6822998C-1D57-411D-B6FE-973BED1BFF6B@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Armin,

On March 27, 2021 7:04:53 PM UTC, akuster <akuster808@gmail=2Ecom> wrote:
>convert to cmake and general cleanup
>
>include on oe env patch and glibc 2=2E33 header fixup
>
>if running w/in qemu, need to add qemuparams=3D"-m 2048" to allow
>freshclam not to oom
>
>Signed-off-by: Armin Kuster <akuster808@gmail=2Ecom>
>---
> =2E=2E=2E/{clamav_0=2E101=2E5=2Ebb =3D> clamav_0=2E103=2E0=2Ebb}  | 101 =
+++++++-----------
> =2E=2E=2E/clamav/files/headers_fixup=2Epatch          |  58 ++++++++++
> =2E=2E=2E/clamav/files/oe_cmake_fixup=2Epatch         |  39 +++++++
> 3 files changed, 134 insertions(+), 64 deletions(-)
> rename recipes-scanners/clamav/{clamav_0=2E101=2E5=2Ebb =3D> clamav_0=2E=
103=2E0=2Ebb} (61%)
> create mode 100644 recipes-scanners/clamav/files/headers_fixup=2Epatch
> create mode 100644 recipes-scanners/clamav/files/oe_cmake_fixup=2Epatch
>
>diff --git a/recipes-scanners/clamav/clamav_0=2E101=2E5=2Ebb b/recipes-sc=
anners/clamav/clamav_0=2E103=2E0=2Ebb
>similarity index 61%
>rename from recipes-scanners/clamav/clamav_0=2E101=2E5=2Ebb
>rename to recipes-scanners/clamav/clamav_0=2E103=2E0=2Ebb
>index 7dad263=2E=2E9e50466 100644
>--- a/recipes-scanners/clamav/clamav_0=2E101=2E5=2Ebb
>+++ b/recipes-scanners/clamav/clamav_0=2E103=2E0=2Ebb
>@@ -4,94 +4,68 @@ HOMEPAGE =3D "http://www=2Eclamav=2Enet/index=2Ehtml"
> SECTION =3D "security"
> LICENSE =3D "LGPL-2=2E1"
>=20
>-DEPENDS =3D "libtool db libxml2 openssl zlib curl llvm clamav-native lib=
mspack bison-native"
>-DEPENDS_class-native =3D "db-native openssl-native zlib-native llvm-nati=
ve curl-native bison-native"
>+DEPENDS =3D "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2=
 json-c libcheck"
> =20
>-LIC_FILES_CHKSUM =3D "file://COPYING=2ELGPL;beginline=3D2;endline=3D3;md=
5=3D4b89c05acc71195e9a06edfa2fa7d092"
>+LIC_FILES_CHKSUM =3D "file://COPYING=2Etxt;beginline=3D2;endline=3D3;md5=
=3Df7029fbbc5898b273d5902896f7bbe17"
>=20
>-SRCREV =3D "482fcd413b07e9fd3ef9850e6d01a45f4e187108"
>+SRCREV =3D "5553a5e206ceae5d920368baee7d403f823bcb6f"
>=20
>-SRC_URI =3D "git://github=2Ecom/vrtadmin/clamav-devel;branch=3Drel/0=2E1=
01 \
>+SRC_URI =3D "git://github=2Ecom/vrtadmin/clamav-devel;branch=3Ddev/0=2E1=
04 \

Are you sure it's not dev/0=2E103 here? Also, there seems to be a 0=2E103=
=2E1 branch available already=2E I don't really know which version you're t=
argeting=2E I would say it makes sense to have this branch aligned with the=
 filename of the recipe=2E

Cheers,
Quentin

>     file://clamd=2Econf \
>     file://freshclam=2Econf \
>     file://volatiles=2E03_clamav \
>     file://tmpfiles=2Eclamav \
>     file://${BPN}=2Eservice \
>-    file://freshclam-native=2Econf \
>-    "
>-
>+    file://headers_fixup=2Epatch \
>+    file://oe_cmake_fixup=2Epatch \
>+"
> S =3D "${WORKDIR}/git"
>=20
> LEAD_SONAME =3D "libclamav=2Eso"
>-SO_VER =3D "9=2E0=2E4"
>+SO_VER =3D "9=2E6=2E0"
>+
>+BINCONFIG =3D "${bindir}/clamav-config"
>=20
>-inherit autotools pkgconfig useradd systemd multilib_header multilib_scr=
ipt
>+inherit cmake chrpath pkgconfig useradd systemd multilib_header multilib=
_script
>=20
> CLAMAV_UID ?=3D "clamav"
> CLAMAV_GID ?=3D "clamav"
>-INSTALL_CLAMAV_CVD ?=3D "1"
>-
>-CLAMAV_USR_DIR =3D "${STAGING_DIR_NATIVE}/usr"
>-CLAMAV_USR_DIR_class-target =3D "${STAGING_DIR_HOST}/usr"
>-
>-PACKAGECONFIG_class-target ?=3D "ncurses bz2"
>-PACKAGECONFIG_class-target +=3D " ${@bb=2Eutils=2Econtains("DISTRO_FEATU=
RES", "ipv6", "ipv6", "", d)}"
>-PACKAGECONFIG_class-target +=3D "${@bb=2Eutils=2Econtains('DISTRO_FEATUR=
ES', 'systemd', 'systemd', '', d)}"
>-
>-PACKAGECONFIG[pcre] =3D "--with-pcre=3D${STAGING_LIBDIR},  --without-pcr=
e, libpcre"
>-PACKAGECONFIG[json] =3D "--with-libjson=3D${STAGING_LIBDIR}, --without-l=
ibjson, json-c,"
>-PACKAGECONFIG[ipv6] =3D "--enable-ipv6, --disable-ipv6"
>-PACKAGECONFIG[bz2] =3D "--with-libbz2-prefix=3D${CLAMAV_USR_DIR}, --disa=
ble-bzip2, bzip2"
>-PACKAGECONFIG[ncurses] =3D "--with-libncurses-prefix=3D${CLAMAV_USR_DIR}=
, --without-libncurses-prefix, ncurses, "
>-PACKAGECONFIG[systemd] =3D "--with-systemdsystemunitdir=3D${systemd_unit=
dir}/system/, --without-systemdsystemunitdir, "
>=20
> MULTILIB_SCRIPTS =3D "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${loca=
lstatedir}/lib/clamav/mirrors=2Edat"
>=20
>-EXTRA_OECONF_CLAMAV =3D "--without-libcheck-prefix --disable-unrar \
>-            --disable-mempool \
>-            --program-prefix=3D"" \
>-            --disable-zlib-vcheck \
>-            --with-xml=3D${CLAMAV_USR_DIR} \
>-            --with-zlib=3D${CLAMAV_USR_DIR} \
>-            --with-openssl=3D${CLAMAV_USR_DIR} \
>-            --with-libcurl=3D${CLAMAV_USR_DIR} \
>-            --with-system-libmspack=3D${CLAMAV_USR_DIR} \
>-            --with-iconv=3Dno \
>-            --enable-check=3Dno \
>-            "
>-
>-EXTRA_OECONF_class-native +=3D "${EXTRA_OECONF_CLAMAV}"
>-EXTRA_OECONF_class-target +=3D "--with-user=3D${CLAMAV_UID}  --with-grou=
p=3D${CLAMAV_GID} ${EXTRA_OECONF_CLAMAV}"
>-
>-do_configure () {
>-    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF}=20
>-}
>+EXTRA_OECMAKE =3D " -DCMAKE_BUILD_TYPE=3DRelease -DOPTIMIZE=3DON -DENABL=
E_JSON_SHARED=3DOFF \
>+                  -DCLAMAV_GROUP=3D${CLAMAV_GID} -DCLAMAV_USER=3D${CLAMA=
V_UID} \=20
>+                  -DENABLE_TESTS=3DOFF -DBUILD_SHARED_LIBS=3DON \
>+                  -DDISABLE_MPOOL=3DON -DENABLE_FRESHCLAM_DNS_FIX=3DON \
>+                   "
>=20
>-do_configure_class-native () {
>-    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF}=20
>-}
>+PACKAGECONFIG ?=3D "  clamonacc \
>+                 ${@bb=2Eutils=2Econtains("DISTRO_FEATURES", "systemd", =
"systemd", "", d)}"
>=20
>-do_compile_append_class-target() {
>-    if [ "${INSTALL_CLAMAV_CVD}" =3D "1" ]; then
>-        bbnote "CLAMAV creating cvd"
>-        install -d ${S}/clamav_db
>-        ${STAGING_BINDIR_NATIVE}/freshclam --datadir=3D${S}/clamav_db --=
config=3D${WORKDIR}/freshclam-native=2Econf
>-    fi
>-}
>+PACKAGECONFIG[milter] =3D "-DENABLE_MILTER=3DON ,-DENABLE_MILTER=3DOFF, =
curl, curl"
>+PACKAGECONFIG[clamonacc] =3D "-DENABLE_CLAMONACC=3DON ,-DENABLE_CLAMONAC=
C=3DOFF,"
>+PACKAGECONFIG[unrar] =3D "-DENABLE_UNRAR=3DON ,-DENABLE_UNRAR=3DOFF,"
>+PACKAGECONFIG[systemd] =3D "-DENABLE_SYSTEMD=3DON -DSYSTEMD_UNIT_DIR=3D$=
{systemd_system_unitdir}, -DENABLE_SYSTEMD=3DOFF, systemd"
>+
>+export OECMAKE_C_FLAGS +=3D " -I${STAGING_INCDIR} -L ${RECIPE_SYSROOT}${=
nonarch_libdir} -L${STAGING_LIBDIR} -lpthread"=20
>=20
>-do_install_append_class-target () {
>+do_install_append () {
>     install -d ${D}/${sysconfdir}
>     install -d ${D}/${localstatedir}/lib/clamav
>     install -d ${D}${sysconfdir}/clamav ${D}${sysconfdir}/default/volati=
les
>=20
>-    install -m 644 ${WORKDIR}/clamd=2Econf ${D}/${sysconfdir}
>-    install -m 644 ${WORKDIR}/freshclam=2Econf ${D}/${sysconfdir}
>+    install -m 644 ${WORKDIR}/clamd=2Econf ${D}/${prefix}/${sysconfdir}
>+    install -m 644 ${WORKDIR}/freshclam=2Econf ${D}/${prefix}/${sysconfd=
ir}
>     install -m 0644 ${WORKDIR}/volatiles=2E03_clamav  ${D}${sysconfdir}/=
default/volatiles/03_clamav
>     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclam=
av=2Epc
>     rm ${D}/${libdir}/libclamav=2Eso
>     if [ "${INSTALL_CLAMAV_CVD}" =3D "1" ]; then
>         install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav=
/=2E
>     fi
>+
>+    rm ${D}/${libdir}/libfreshclam=2Eso
>+    rm ${D}/${libdir}/libmspack=2Eso
>+
>     if ${@bb=2Eutils=2Econtains('DISTRO_FEATURES','systemd','true','fals=
e',d)};then
>         install -D -m 0644 ${WORKDIR}/clamav=2Eservice ${D}${systemd_uni=
tdir}/system/clamav=2Eservice
>         install -d ${D}${sysconfdir}/tmpfiles=2Ed
>@@ -114,10 +88,10 @@ pkg_postinst_ontarget_${PN} () {
> PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc ${PN}-cvd=
 \
>             ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-static=
dev"
>=20
>-FILES_${PN} =3D "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmi=
t \
>+FILES_${PN} =3D "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmi=
t ${sbindir}/clamonacc \
>                 ${bindir}/*sigtool ${mandir}/man1/clambc* ${mandir}/man1=
/clamscan* \
>                 ${mandir}/man1/sigtool* ${mandir}/man1/clambsubmit*  \
>-                ${docdir}/clamav/* "
>+                ${docdir}/clamav/* ${libdir}/libmspack* "
>=20
> FILES_${PN}-clamdscan =3D " ${bindir}/clamdscan \
>                         ${docdir}/clamdscan/* \
>@@ -128,12 +102,14 @@ FILES_${PN}-daemon =3D "${bindir}/clamconf ${bindir=
}/clamdtop ${sbindir}/clamd \
>                         ${mandir}/man1/clamconf* ${mandir}/man1/clamdtop=
* \
>                         ${mandir}/man5/clamd*  ${mandir}/man8/clamd* \
>                         ${sysconfdir}/clamd=2Econf* \
>+                        /usr/etc/clamd=2Econf* \
>                         ${systemd_unitdir}/system/clamav-daemon/* \
>                         ${docdir}/clamav-daemon/*  ${sysconfdir}/clamav-=
daemon \
>                         ${sysconfdir}/logcheck/ignore=2Ed=2Eserver/clama=
v-daemon "
>=20
> FILES_${PN}-freshclam =3D "${bindir}/freshclam \
>                         ${sysconfdir}/freshclam=2Econf*  \
>+                        /usr/etc/freshclam=2Econf*  \
>                         ${sysconfdir}/clamav ${sysconfdir}/default/volat=
iles \
>                         ${sysconfdir}/tmpfiles=2Ed/*=2Econf \
>                         ${localstatedir}/lib/clamav \
>@@ -148,8 +124,8 @@ FILES_${PN}-dev =3D " ${bindir}/clamav-config ${libdi=
r}/*=2Ela \
>=20
> FILES_${PN}-staticdev =3D "${libdir}/*=2Ea"
>=20
>-FILES_${PN}-libclamav =3D "${libdir}/libclamav=2Eso* ${libdir}/libclamms=
pack=2Eso*\
>-                          ${docdir}/libclamav/* "
>+FILES_${PN}-libclamav =3D "${libdir}/libclamav=2Eso* ${libdir}/libclamms=
pack=2Eso* \
>+                         ${libdir}/libfreshclam=2Eso* ${docdir}/libclama=
v/* "
>=20
> FILES_${PN}-doc =3D "${mandir}/man/* \
>                    ${datadir}/man/* \
>@@ -169,6 +145,3 @@ RCONFLICTS_${PN} +=3D "${PN}-systemd"
> SYSTEMD_SERVICE_${PN} =3D "${BPN}=2Eservice"
>=20
> RDEPENDS_${PN} =3D "openssl ncurses-libncurses libxml2 libbz2 ncurses-li=
btinfo curl libpcre2 clamav-freshclam clamav-libclamav"
>-RDEPENDS_${PN}_class-native =3D ""
>-
>-BBCLASSEXTEND =3D "native"
>diff --git a/recipes-scanners/clamav/files/headers_fixup=2Epatch b/recipe=
s-scanners/clamav/files/headers_fixup=2Epatch
>new file mode 100644
>index 0000000=2E=2E9de0a26
>--- /dev/null
>+++ b/recipes-scanners/clamav/files/headers_fixup=2Epatch
>@@ -0,0 +1,58 @@
>+Fixes checks not needed do to glibc 2=2E33
>+
>+Upstream-Status: Pending
>+Signed-off-by: Armin Kuster <akuster808@gmail=2Ecom>
>+
>+Index: git/CMakeLists=2Etxt
>+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>+--- git=2Eorig/CMakeLists=2Etxt
>++++ git/CMakeLists=2Etxt
>+@@ -374,8 +373,6 @@ check_include_file("stdlib=2Eh"
>+ check_include_file("string=2Eh"           HAVE_STRING_H)
>+ check_include_file("strings=2Eh"          HAVE_STRINGS_H)
>+ check_include_file("sys/cdefs=2Eh"        HAVE_SYS_CDEFS_H)
>+-check_include_file("sys/dl=2Eh"           HAVE_SYS_DL_H)
>+-check_include_file("sys/fileio=2Eh"       HAVE_SYS_FILIO_H)
>+ check_include_file("sys/mman=2Eh"         HAVE_SYS_MMAN_H)
>+ check_include_file("sys/param=2Eh"        HAVE_SYS_PARAM_H)
>+ check_include_file("sys/queue=2Eh"        HAVE_SYS_QUEUE_H)
>+@@ -410,8 +407,6 @@ endif()
>+=20
>+ # int-types variants
>+ check_include_file("inttypes=2Eh"         HAVE_INTTYPES_H)
>+-check_include_file("sys/inttypes=2Eh"     HAVE_SYS_INTTYPES_H)
>+-check_include_file("sys/int_types=2Eh"    HAVE_SYS_INT_TYPES_H)
>+ check_include_file("stdint=2Eh"           HAVE_STDINT_H)
>+=20
>+ # this hack required to silence warnings on systems with inttypes=2Eh
>+@@ -539,17 +528,11 @@ check_type_size("time_t"  SIZEOF_TIME_T)
>+ # Checks for library functions=2E
>+ include(CheckSymbolExists)
>+ check_symbol_exists(_Exit           "stdlib=2Eh"      HAVE__EXIT)
>+-check_symbol_exists(accept4         "sys/types=2Eh"   HAVE_ACCEPT4)
>+ check_symbol_exists(snprintf        "stdio=2Eh"       HAVE_SNPRINTF)
>+-check_symbol_exists(stat64          "sys/stat=2Eh"    HAVE_STAT64)
>+-check_symbol_exists(strcasestr      "string=2Eh"      HAVE_STRCASESTR)
>+ check_symbol_exists(strerror_r      "string=2Eh"      HAVE_STRERROR_R)
>+-check_symbol_exists(strlcat         "string=2Eh"      HAVE_STRLCAT)
>+-check_symbol_exists(strlcpy         "string=2Eh"      HAVE_STRLCPY)
>+ check_symbol_exists(strndup         "string=2Eh"      HAVE_STRNDUP)
>+ check_symbol_exists(strnlen         "string=2Eh"      HAVE_STRNLEN)
>+-check_symbol_exists(strnstr         "string=2Eh"      HAVE_STRNSTR)
>+-check_symbol_exists(sysctlbyname    "sysctl=2Eh"      HAVE_SYSCTLBYNAME=
)
>++check_symbol_exists(strcasecmp      "string=2Eh"      HAVE_STRNCMP)
>+ check_symbol_exists(timegm          "time=2Eh"        HAVE_TIMEGM)
>+ check_symbol_exists(vsnprintf       "stdio=2Eh"       HAVE_VSNPRINTF)
>+=20
>+@@ -563,10 +546,9 @@ else()
>+     check_symbol_exists(fseeko          "stdio=2Eh"       HAVE_FSEEKO)
>+     check_symbol_exists(getaddrinfo     "netdb=2Eh"       HAVE_GETADDRI=
NFO)
>+     check_symbol_exists(getpagesize     "unistd=2Eh"      HAVE_GETPAGES=
IZE)
>+-    check_symbol_exists(mkstemp         "unistd=2Eh"      HAVE_MKSTEMP)
>+     check_symbol_exists(poll            "poll=2Eh"        HAVE_POLL)
>+-    check_symbol_exists(setgroups       "unistd=2Eh"      HAVE_SETGROUP=
S)
>+     check_symbol_exists(setsid          "unistd=2Eh"      HAVE_SETSID)
>++    set(HAVE_SYSCONF_SC_PAGESIZE 1)
>+ endif()
>+=20
>+ include(CheckSymbolExists)
>diff --git a/recipes-scanners/clamav/files/oe_cmake_fixup=2Epatch b/recip=
es-scanners/clamav/files/oe_cmake_fixup=2Epatch
>new file mode 100644
>index 0000000=2E=2Eb284915
>--- /dev/null
>+++ b/recipes-scanners/clamav/files/oe_cmake_fixup=2Epatch
>@@ -0,0 +1,39 @@
>+Issue with rpath including /usr/lib and crosscompile checkes causing oe =
configure to fail
>+
>+Use oe's cmake rpath framework and exclude some of the cmake checks that=
 fail in our env
>+
>+Upstream-Status: Inappropriate [configuration]
>+Singed-off-by: Armin Kuster <akuster808@gmail=2Ecom>
>+
>+Index: git/CMakeLists=2Etxt
>+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>+--- git=2Eorig/CMakeLists=2Etxt
>++++ git/CMakeLists=2Etxt
>+@@ -162,12 +162,6 @@ endif()
>+=20
>+ include(GNUInstallDirs)
>+=20
>+-if(CMAKE_INSTALL_FULL_LIBDIR)
>+-    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_FULL_LIBDIR}")
>+-else()
>+-    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
>+-endif()
>+-
>+ if(C_LINUX)
>+     if(CMAKE_COMPILER_IS_GNUCXX)
>+         # Set _GNU_SOURCE for O_LARGEFILE, O_CLOEXEC, O_DIRECTORY, O_NO=
FOLLOW, etc flags on older systems
>+@@ -512,14 +506,8 @@ include(TestInline)
>+ include(CheckFileOffsetBits)
>+ # Determine how to pack structs on this platform=2E
>+ include(CheckStructPacking)
>+-# Check for signed right shift implementation=2E
>+-include(CheckSignedRightShift)
>+ # Check if systtem fts implementation available
>+ include(CheckFTS)
>+-# Check if uname(2) follows POSIX standard=2E
>+-include(CheckUnamePosix)
>+-# Check support for file descriptor passing
>+-include(CheckFDPassing)
>+=20
>+ # Check if big-endian
>+ include(TestBigEndian)
>--=20
>2=2E25=2E1
>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
