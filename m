Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E71DFE0095C; Thu, 15 Nov 2018 09:21:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2476E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 09:21:27 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id p11-v6so19441161itf.0
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 09:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fU/1sj4Uk7oSQPKRDVN2q0KESXZh0wAsPNTZzAFNmEQ=;
	b=pMnGKKql2cSiED2RXdBMlm1+XZNGWpZY4JXzWuxpArgmmlYoIw1CoJyKasaJ0sty6X
	eexOdq3nNgdqebVbPU8Nr9F/5K8f1p2x+umkCELGxOXg7DjOyKlCjC9tny5fD0RfNnFs
	NvyBXzOYxhNK3DRjOqM4G5BzUvt6oiQDjmxrn/GmEO7OXkG40dGN1IJQg5habcpqWrKQ
	PIB2J/8ylhXFtkgy7yRN6TCRVKiO3DOFD1/zRMeWEJi/cET5Hg1Pll4vSaC8If3IIojA
	4ALqEeEzfUuJBYOmhcSu9v+ygvYAPtI4oD7DIvLKTngWQSLcKZweD7dCZg2iOJUbdgi1
	CwPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fU/1sj4Uk7oSQPKRDVN2q0KESXZh0wAsPNTZzAFNmEQ=;
	b=WnBMAamlfA8flBKYXHShkXnN57OlZVfk7a8+ZlFdB/jPM51QCK6GDPLYqQsrY3ci2l
	U62xB12GXHb2NuugAHyhRJtlw8IsQroaga/h4Atv1DhckDxSFUZY/MnKNfZ8r5l7dMRw
	Y8liKFiekyUPk+E+0fu0dfpdRKq3BZTSZqM7piUwC9lC/aC6CJJ8khcz7rdr08tWtJvk
	kxHFGafsiXonS6y9MOMf8J+5bpAUVHa2eXfWpPDw1xUXA0EMALVkj3RHuQhe44bjnqbY
	MOg2s2wD2LIBG/QB4sDNbn/eAjlrrDXUs+yc2kfRBWtdd3KftmxZfAguNR63uZ1pseYc
	YM3Q==
X-Gm-Message-State: AGRZ1gI6ZOaufu8dwSGKsYavKxCwlJ+We+5Sz8md2iqfqL2nu9zePJv9
	5TX7amctqTeIG64d8bgoL2XBxAJGfohvv818tnlXnW0b
X-Google-Smtp-Source: AJdET5c5Kc8TthwJe9PTi/FTuTo/byafZokaAtcgM3yU6VHfDw89qKGStFkdnU/1ID/2O4TGDAPHFMcSGNDX4togh2g=
X-Received: by 2002:a02:1bc5:: with SMTP id 66mr6865488jas.105.1542302487364; 
	Thu, 15 Nov 2018 09:21:27 -0800 (PST)
MIME-Version: 1.0
References: <20181115092658.29152-1-samuli.piippo@qt.io>
In-Reply-To: <20181115092658.29152-1-samuli.piippo@qt.io>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Nov 2018 17:21:16 +0000
Message-ID: <CAJTo0LY9YSb_cJPyoxz6cFpZfPovi5c5e0wz54c_5ndki3jxxw@mail.gmail.com>
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
X-List-Received-Date: Thu, 15 Nov 2018 17:21:29 -0000
Content-Type: text/plain; charset="UTF-8"

I see 1/2 but no 2/2, presumably this missing patch is the PIE one?

Ross
On Thu, 15 Nov 2018 at 16:04, Samuli Piippo <samuli.piippo@qt.io> wrote:
>
> Use the winpthreads library available in the mingw64 and
> change the thread model from win32 to posix to get access
> to c++11 features.
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  conf/machine-sdk/include/mingw32-common.inc   |  2 -
>  recipes-core/gettext/gettext_0.19.%.bbappend  |  5 +-
>  recipes-devtools/gcc/gcc-runtime_%.bbappend   |  2 +-
>  recipes-devtools/gcc/libgcc_%.bbappend        |  2 +
>  .../nativesdk-mingw-w64-headers_5.0.3.bb      |  5 ++
>  .../nativesdk-mingw-w64-winpthreads_5.0.3.bb  | 31 ++++++++++++
>  .../pthreads-win32/pthreads-win32_2.9.1.bb    | 47 -------------------
>  7 files changed, 40 insertions(+), 54 deletions(-)
>  create mode 100644 recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
>  delete mode 100644 recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
>
> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
> index cd56380..733d092 100644
> --- a/conf/machine-sdk/include/mingw32-common.inc
> +++ b/conf/machine-sdk/include/mingw32-common.inc
> @@ -1,8 +1,6 @@
>  SDK_OS = "mingw32"
>  NATIVESDKLIBC = "libc-mingw"
>
> -GCCTHREADS_mingw32 = "win32"
> -
>  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
>  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
>  PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
> diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
> index b26b734..21749f3 100644
> --- a/recipes-core/gettext/gettext_0.19.%.bbappend
> +++ b/recipes-core/gettext/gettext_0.19.%.bbappend
> @@ -1,7 +1,4 @@
> -DEPENDS_append_mingw32 = " pthreads-win32"
> -LDFLAGS_prepend_mingw32 = " -lpthread "
> -
> -EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static"
> +EXTRA_OECONF_append_mingw32 = " --enable-static"
>
>  FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
>  SRC_URI_append_mingw32 = " \
> diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-devtools/gcc/gcc-runtime_%.bbappend
> index 1641cb9..f14edf1 100644
> --- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
> +++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
> @@ -11,4 +11,4 @@ RUNTIMETARGET_remove_mingw32 = "libitm"
>  # mingw builds
>  RUNTIMETARGET_remove_mingw32 = "libmpx"
>
> -DEPENDS_append_mingw32 = " pthreads-win32"
> +DEPENDS_append_mingw32 = " nativesdk-mingw-w64-winpthreads"
> diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
> index 2a95d02..f542cfc 100644
> --- a/recipes-devtools/gcc/libgcc_%.bbappend
> +++ b/recipes-devtools/gcc/libgcc_%.bbappend
> @@ -1,3 +1,5 @@
> +DEPENDS_append_mingw32 = " nativesdk-mingw-w64-winpthreads"
> +
>  FILES_${PN}_append_mingw32 = " ${bindir}/libgcc*.dll"
>  FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
>
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> index e129c32..009e5af 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
> @@ -31,4 +31,9 @@ do_compile() {
>         :
>  }
>
> +do_install_append() {
> +    # install correct pthread headers
> +    install -m 0644 -t ${D}${includedir} ${S}/../mingw-w64-libraries/winpthreads/include/*.h
> +}
> +
>  FILES_${PN} += "${exec_prefix}/${TARGET_SYS}"
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
> new file mode 100644
> index 0000000..1308760
> --- /dev/null
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
> @@ -0,0 +1,31 @@
> +DESCRIPTION = "Winpthreads runtime libraries from MinGW-w64 project"
> +LICENSE = "ZPL-2.1"
> +LIC_FILES_CHKSUM = "file://../../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
> +
> +COMPATIBLE_HOST = ".*-mingw.*"
> +
> +SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
> +SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
> +SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
> +
> +S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
> +B = "${WORKDIR}/build-${TARGET_SYS}"
> +
> +inherit autotools nativesdk
> +
> +INHIBIT_DEFAULT_DEPS = "1"
> +DEPENDS = "nativesdk-mingw-w64-runtime virtual/${TARGET_PREFIX}gcc-initial"
> +
> +do_configure() {
> +    oe_runconf
> +}
> +
> +STAGINGCC = "gcc-cross-initial-${TARGET_ARCH}"
> +STAGINGCC_class-nativesdk = "gcc-crosssdk-initial-${SDK_SYS}"
> +TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
> +PATH_prepend = "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"
> +
> +do_install_append() {
> +    # headers are already installed by mingw-w64-headers
> +    rm -rf ${D}${includedir}
> +}
> diff --git a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb b/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
> deleted file mode 100644
> index e4a0f80..0000000
> --- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
> +++ /dev/null
> @@ -1,47 +0,0 @@
> -DESCRIPTION = "A Win32 implementation of the POSIX standard threads API"
> -HOMEPAGE = "http://www.sourceware.org/pthreads-win32"
> -LICENSE = "LGPLv2.1"
> -LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=7fbc338309ac38fefcd64b04bb903e34"
> -
> -BBCLASSEXTEND = "nativesdk"
> -
> -COMPATIBLE_HOST = ".*-mingw.*"
> -
> -## Replace dots with dashes
> -PVdash = "2-9-1"
> -
> -## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads-win32 checkout pthreads
> -SRC_URI = "ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-${PVdash}-release.tar.gz"
> -SRC_URI[md5sum] = "36ba827d6aa0fa9f9ae740a35626e2e3"
> -SRC_URI[sha256sum] = "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e263ac7c7b66bc95fb4d"
> -
> -## Reference: http://sourceware.org/ml/pthreads-win32/2009/msg00030/w64sup.patch
> -#SRC_URI += "file://w64sup.patch"
> -
> -S = "${WORKDIR}/pthreads-w32-${PVdash}-release"
> -
> -INHIBIT_DEFAULT_DEPS = "1"
> -DEPENDS = "virtual/${SDK_PREFIX}gcc libgcc virtual/libc"
> -
> -do_configure_prepend() {
> -    ## First reset all permissions because all are executable
> -    find . -type f -exec chmod 644 {} \;
> -    ## Make a copy of config.h
> -    cp config.h pthreads_win32_config.h
> -}
> -
> -do_compile() {
> -    make -f GNUmakefile CROSS=${SDK_PREFIX} CC="${CC}" RC="${WINDRES}" clean GC
> -}
> -
> -do_install() {
> -    install -d -m 0755 ${D}${bindir}
> -    install -d -m 0755 ${D}${includedir}
> -    install -d -m 0755 ${D}${libdir}
> -
> -    install -m 0644 ${S}/pthread.h ${S}/sched.h ${S}/semaphore.h ${D}${includedir}/
> -
> -    install -m 0644 ${S}/libpthreadGC2.a ${D}${libdir}/libpthread.dll.a
> -    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/libpthread-2.dll
> -    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/pthreadGC2.dll
> -}
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

