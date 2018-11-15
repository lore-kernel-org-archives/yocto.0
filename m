Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1D59E00A1A; Thu, 15 Nov 2018 09:33:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E9DE00901
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 09:33:15 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id j79-v6so30434769itb.2
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 09:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=SnZzDyF4td9tciwZvirqKVALY2R0QlYYPGIVTqvdRpQ=;
	b=hjWyC+yEejgpkbFKkR5JQco/3cwDc/pq5xjBJ+3v5ACbqD29829bMPPrs0HtHpxfWD
	29KiM/GJq1DMIy3co3zLpZ5kBEQER/CLTE7gB3Hh2c/HNPBaCXoDzGHhoNjp06Hvqs6V
	6gj7hstpwd78yphUfHZA9QGKkSpbkl1Duy2t/msz9/mujEiP6M2hbTf3A3ApS+KttflR
	xMxwFc4Jul9CNWbAeWR+JX3w+D4mamC299cQK8DmSyc8FE/Eja57jvmwPEw5Yr4VHyKg
	1MYvUTJ3jXib02HwHSItO6B7NZoht574fJGdBZNtO05L3tsUE+MqyeGTCWyVZ559erTM
	/bpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=SnZzDyF4td9tciwZvirqKVALY2R0QlYYPGIVTqvdRpQ=;
	b=Jx1kb5ZQT003MIXyDwebvIPFNEYD0Vd7VOCvuIpthXuO3m4wgjWep3gtfT+Xrt0E15
	1a06abBwmDJX6RcjYC3z7ejPyobTmaQUG0vNd4OsL9ZuTEfeFCZzjrFO7+2yMaoMLnzQ
	v1qtN0MuGDCXC4euCkn1XVqlh+974dJq2LM8gESmB9l/W2lmnACpRpdcaqs6XbYuUFIh
	7HuhiM9En16X2AgzzX1YMhidUgk9Mdmgqtr27TAJCWmDUKF2+anSEA8pqljpP9haM2+C
	uZe479EGZ16n9xrdy9Nz91dZVRr5qVptX/VdcY+t7ANbFyZcqv8hmC5izSM/y2YyVFWp
	R8Ag==
X-Gm-Message-State: AGRZ1gL95meDWcR/VHkI+FHPcGCXlw7roPkBJPjyuDUb9lw4+Cbcr2UY
	upuZdSHZRR/0wciE8fnu3AyXtquN3zadG2nwSMBQzpkE
X-Google-Smtp-Source: AJdET5e07I6DAjiXHwxKqFxJRSjUqgrUKFwD2Fxw/VBRfcP/DNGdQIhABXzUcys5ZIKGKPvDu9s1E/RF3x62KlOzfyo=
X-Received: by 2002:a24:ce45:: with SMTP id
	v66-v6mr6385462itg.26.1542303195392; 
	Thu, 15 Nov 2018 09:33:15 -0800 (PST)
MIME-Version: 1.0
References: <20181115092658.29152-1-samuli.piippo@qt.io>
	<CAJTo0LY9YSb_cJPyoxz6cFpZfPovi5c5e0wz54c_5ndki3jxxw@mail.gmail.com>
	<5F6B28BC-D434-4D91-97FF-A972C004FF6F@qt.io>
In-Reply-To: <5F6B28BC-D434-4D91-97FF-A972C004FF6F@qt.io>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Nov 2018 17:33:03 +0000
Message-ID: <CAJTo0LZ_Ekm1zRpKuJt5SFknqBAmtLcGma8nHiKvGd4wVjCM4Q@mail.gmail.com>
To: samuli.piippo@qt.io
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 1/2] winpthreads: use posix threads library from mingw64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Nov 2018 17:33:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Weird.

Can you push them to a git repo?

Ross
On Thu, 15 Nov 2018 at 17:32, Samuli Piippo <samuli.piippo@qt.io> wrote:
>
>
> 2/2 is also unrelated, there should 3 patches from me, sent at the same t=
ime. Don=E2=80=99t know where they got stuck.
>
> > On 15 Nov 2018, at 19.21, Burton, Ross <ross.burton@intel.com> wrote:
> >
> > I see 1/2 but no 2/2, presumably this missing patch is the PIE one?
> >
> > Ross
> >> On Thu, 15 Nov 2018 at 16:04, Samuli Piippo <samuli.piippo@qt.io> wrot=
e:
> >>
> >> Use the winpthreads library available in the mingw64 and
> >> change the thread model from win32 to posix to get access
> >> to c++11 features.
> >>
> >> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> >> ---
> >> conf/machine-sdk/include/mingw32-common.inc   |  2 -
> >> recipes-core/gettext/gettext_0.19.%.bbappend  |  5 +-
> >> recipes-devtools/gcc/gcc-runtime_%.bbappend   |  2 +-
> >> recipes-devtools/gcc/libgcc_%.bbappend        |  2 +
> >> .../nativesdk-mingw-w64-headers_5.0.3.bb      |  5 ++
> >> .../nativesdk-mingw-w64-winpthreads_5.0.3.bb  | 31 ++++++++++++
> >> .../pthreads-win32/pthreads-win32_2.9.1.bb    | 47 -------------------
> >> 7 files changed, 40 insertions(+), 54 deletions(-)
> >> create mode 100644 recipes-devtools/mingw-w64/nativesdk-mingw-w64-winp=
threads_5.0.3.bb
> >> delete mode 100644 recipes-devtools/pthreads-win32/pthreads-win32_2.9.=
1.bb
> >>
> >> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machin=
e-sdk/include/mingw32-common.inc
> >> index cd56380..733d092 100644
> >> --- a/conf/machine-sdk/include/mingw32-common.inc
> >> +++ b/conf/machine-sdk/include/mingw32-common.inc
> >> @@ -1,8 +1,6 @@
> >> SDK_OS =3D "mingw32"
> >> NATIVESDKLIBC =3D "libc-mingw"
> >>
> >> -GCCTHREADS_mingw32 =3D "win32"
> >> -
> >> PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32=
 =3D "nativesdk-mingw-w64-runtime"
> >> PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32=
 =3D "nativesdk-mingw-w64-runtime"
> >> PREFERRED_PROVIDER_virtual/nativesdk-libc =3D "nativesdk-mingw-w64-run=
time"
> >> diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-co=
re/gettext/gettext_0.19.%.bbappend
> >> index b26b734..21749f3 100644
> >> --- a/recipes-core/gettext/gettext_0.19.%.bbappend
> >> +++ b/recipes-core/gettext/gettext_0.19.%.bbappend
> >> @@ -1,7 +1,4 @@
> >> -DEPENDS_append_mingw32 =3D " pthreads-win32"
> >> -LDFLAGS_prepend_mingw32 =3D " -lpthread "
> >> -
> >> -EXTRA_OECONF_append_mingw32 =3D " --enable-threads=3Dwindows --enable=
-static"
> >> +EXTRA_OECONF_append_mingw32 =3D " --enable-static"
> >>
> >> FILESEXTRAPATHS_prepend_mingw32 :=3D "${THISDIR}/${BPN}:"
> >> SRC_URI_append_mingw32 =3D " \
> >> diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-dev=
tools/gcc/gcc-runtime_%.bbappend
> >> index 1641cb9..f14edf1 100644
> >> --- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
> >> +++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
> >> @@ -11,4 +11,4 @@ RUNTIMETARGET_remove_mingw32 =3D "libitm"
> >> # mingw builds
> >> RUNTIMETARGET_remove_mingw32 =3D "libmpx"
> >>
> >> -DEPENDS_append_mingw32 =3D " pthreads-win32"
> >> +DEPENDS_append_mingw32 =3D " nativesdk-mingw-w64-winpthreads"
> >> diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools=
/gcc/libgcc_%.bbappend
> >> index 2a95d02..f542cfc 100644
> >> --- a/recipes-devtools/gcc/libgcc_%.bbappend
> >> +++ b/recipes-devtools/gcc/libgcc_%.bbappend
> >> @@ -1,3 +1,5 @@
> >> +DEPENDS_append_mingw32 =3D " nativesdk-mingw-w64-winpthreads"
> >> +
> >> FILES_${PN}_append_mingw32 =3D " ${bindir}/libgcc*.dll"
> >> FILES_${PN}-dev_append_mingw32 =3D " ${base_libdir}/libgcc*.a"
> >>
> >> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.=
0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> >> index e129c32..009e5af 100644
> >> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> >> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> >> @@ -31,4 +31,9 @@ do_compile() {
> >>        :
> >> }
> >>
> >> +do_install_append() {
> >> +    # install correct pthread headers
> >> +    install -m 0644 -t ${D}${includedir} ${S}/../mingw-w64-libraries/=
winpthreads/include/*.h
> >> +}
> >> +
> >> FILES_${PN} +=3D "${exec_prefix}/${TARGET_SYS}"
> >> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthread=
s_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0=
.3.bb
> >> new file mode 100644
> >> index 0000000..1308760
> >> --- /dev/null
> >> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3=
.bb
> >> @@ -0,0 +1,31 @@
> >> +DESCRIPTION =3D "Winpthreads runtime libraries from MinGW-w64 project=
"
> >> +LICENSE =3D "ZPL-2.1"
> >> +LIC_FILES_CHKSUM =3D "file://../../COPYING;md5=3Dbb936f0e04d8f1e19ad5=
45100cee9654"
> >> +
> >> +COMPATIBLE_HOST =3D ".*-mingw.*"
> >> +
> >> +SRC_URI =3D "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-=
w64-release/mingw-w64-v${PV}.tar.bz2"
> >> +SRC_URI[md5sum] =3D "5524c20312560cc8683b7d8ee292cb8c"
> >> +SRC_URI[sha256sum] =3D "2a601db99ef579b9be69c775218ad956a24a09d7dabc9=
ff6c5bd60da9ccc9cb4"
> >> +
> >> +S =3D "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
> >> +B =3D "${WORKDIR}/build-${TARGET_SYS}"
> >> +
> >> +inherit autotools nativesdk
> >> +
> >> +INHIBIT_DEFAULT_DEPS =3D "1"
> >> +DEPENDS =3D "nativesdk-mingw-w64-runtime virtual/${TARGET_PREFIX}gcc-=
initial"
> >> +
> >> +do_configure() {
> >> +    oe_runconf
> >> +}
> >> +
> >> +STAGINGCC =3D "gcc-cross-initial-${TARGET_ARCH}"
> >> +STAGINGCC_class-nativesdk =3D "gcc-crosssdk-initial-${SDK_SYS}"
> >> +TOOLCHAIN_OPTIONS =3D " --sysroot=3D${STAGING_DIR_TARGET}"
> >> +PATH_prepend =3D "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"
> >> +
> >> +do_install_append() {
> >> +    # headers are already installed by mingw-w64-headers
> >> +    rm -rf ${D}${includedir}
> >> +}
> >> diff --git a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb b=
/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
> >> deleted file mode 100644
> >> index e4a0f80..0000000
> >> --- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
> >> +++ /dev/null
> >> @@ -1,47 +0,0 @@
> >> -DESCRIPTION =3D "A Win32 implementation of the POSIX standard threads=
 API"
> >> -HOMEPAGE =3D "http://www.sourceware.org/pthreads-win32"
> >> -LICENSE =3D "LGPLv2.1"
> >> -LIC_FILES_CHKSUM =3D "file://COPYING.LIB;md5=3D7fbc338309ac38fefcd64b=
04bb903e34"
> >> -
> >> -BBCLASSEXTEND =3D "nativesdk"
> >> -
> >> -COMPATIBLE_HOST =3D ".*-mingw.*"
> >> -
> >> -## Replace dots with dashes
> >> -PVdash =3D "2-9-1"
> >> -
> >> -## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads-win32 check=
out pthreads
> >> -SRC_URI =3D "ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-${P=
Vdash}-release.tar.gz"
> >> -SRC_URI[md5sum] =3D "36ba827d6aa0fa9f9ae740a35626e2e3"
> >> -SRC_URI[sha256sum] =3D "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e=
263ac7c7b66bc95fb4d"
> >> -
> >> -## Reference: http://sourceware.org/ml/pthreads-win32/2009/msg00030/w=
64sup.patch
> >> -#SRC_URI +=3D "file://w64sup.patch"
> >> -
> >> -S =3D "${WORKDIR}/pthreads-w32-${PVdash}-release"
> >> -
> >> -INHIBIT_DEFAULT_DEPS =3D "1"
> >> -DEPENDS =3D "virtual/${SDK_PREFIX}gcc libgcc virtual/libc"
> >> -
> >> -do_configure_prepend() {
> >> -    ## First reset all permissions because all are executable
> >> -    find . -type f -exec chmod 644 {} \;
> >> -    ## Make a copy of config.h
> >> -    cp config.h pthreads_win32_config.h
> >> -}
> >> -
> >> -do_compile() {
> >> -    make -f GNUmakefile CROSS=3D${SDK_PREFIX} CC=3D"${CC}" RC=3D"${WI=
NDRES}" clean GC
> >> -}
> >> -
> >> -do_install() {
> >> -    install -d -m 0755 ${D}${bindir}
> >> -    install -d -m 0755 ${D}${includedir}
> >> -    install -d -m 0755 ${D}${libdir}
> >> -
> >> -    install -m 0644 ${S}/pthread.h ${S}/sched.h ${S}/semaphore.h ${D}=
${includedir}/
> >> -
> >> -    install -m 0644 ${S}/libpthreadGC2.a ${D}${libdir}/libpthread.dll=
.a
> >> -    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/libpthread-2.dl=
l
> >> -    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/pthreadGC2.dll
> >> -}
> >> --
> >> 2.17.1
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto

