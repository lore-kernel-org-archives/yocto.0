Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF6DBE00C82
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 11:36:37 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h18so4139843igc.2
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 11:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3s9cWAbXAPLSMs7o4aVkNJiuirnUv047TV+IihKgU7M=;
	b=08dfl6oAYPa1M+Mu+sqF8zXBz4qkZ7a6lstMGy5bhzePQZv2/6Oln/yM3WeIlJHtlF
	aIRe/cwpjlcMLsOIqr76qR2SHDdmfKcMKrKuBBDnvxcGH+lxiN1gPTkcT1Tl9+kwiDvK
	13E5mxEhUwyXfl8ioSqg7dRYQJwgcdl6jIHVsuenRpiIeDBnlHuekp9Prlp1uuNo+q1J
	FaYNwGYG6Wm1+j+ptPHecz7zqnOd0L0xiboeiuHEupJ1tZsqADiD5YenXOpVosPTScdQ
	TBa3fCd8anqYrZtIeomtU4rfWL01BFkmSpj5OEadKRx7fSxQX07B/q/84WEMmsQa4VD1
	z2zw==
X-Received: by 10.50.60.103 with SMTP id g7mr12773597igr.20.1397154996641;
	Thu, 10 Apr 2014 11:36:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Thu, 10 Apr 2014 11:36:06 -0700 (PDT)
In-Reply-To: <CA+o05Tx8fqSHXdEeRDPODvCt8CuUupSZJ8buKoCsr+EyG+6nRg@mail.gmail.com>
References: <CA+o05Tx8fqSHXdEeRDPODvCt8CuUupSZJ8buKoCsr+EyG+6nRg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 Apr 2014 11:36:06 -0700
Message-ID: <CAMKF1sr5TyCRTmL+aYQYkEsEpKVGm7tSVF6DcUmGWDiRSE=S6Q@mail.gmail.com>
To: Kazuya Nishimura <kazuya.nisimura@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-linaro][PATCH] external-linaro-toolchain: Fix for 32bit armhf build
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
X-List-Received-Date: Thu, 10 Apr 2014 18:36:39 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 10, 2014 at 12:49 AM, Kazuya Nishimura
<kazuya.nisimura@gmail.com> wrote:
> From: Kazuya Nishimura <kazuya.nisimura@gmail.com>
>
> Use ld-linux-armhf.so.3 if call convention hard.
> Fix QA issue errors by packaging approprieately.
> Add eglibc-locale_2.19.bbappend to fix QA issue error.
>   An empty directory is created while do_install.
>
> Signed-off-by: Kazuya Nishimura <kazuya.nisimura@gmail.com>
> ---
>  .../conf/distro/include/tcmode-external-linaro.inc |    1 +
>  .../eglibc/eglibc-locale_2.19.bbappend             |   23 ++++++++++++
>  .../external-linaro-toolchain.bb                   |   38
> ++++++++++++++++----
>  3 files changed, 56 insertions(+), 6 deletions(-)
>  create mode 100755
> meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
>
> diff --git
> a/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
> b/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
> index 1d9fd59..26d464c 100644
> --- a/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
> +++ b/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
> @@ -41,6 +41,7 @@ DISTRO_FEATURES_LIBC = "ipv4 ipv6 libc-backtrace
> libc-big-macros libc-bsd libc-c
>   libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big \
>   libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
> libc-streams libc-sunrpc \
>   libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
> libc-posix-regexp-glibc \
> + libc-charsets libc-locales libc-locale-code \
>   libc-posix-wchar-io"
>
>  ENABLE_BINARY_LOCALE_GENERATION = "0"
> diff --git
> a/meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
> b/meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
> new file mode 100755
> index 0000000..3e91e74
> --- /dev/null
> +++ b/meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
> @@ -0,0 +1,23 @@
> +do_install () {
> + mkdir -p ${D}${datadir}
> + if [ -n "$(ls ${LOCALETREESRC}/${bindir})" ]; then
> + mkdir -p ${D}${bindir}
> + cp -fpPR ${LOCALETREESRC}/${bindir}/* ${D}${bindir}
> + fi
> + if [ -n "$(ls ${LOCALETREESRC}/${localedir})" ]; then
> + mkdir -p ${D}${localedir}
> + cp -fpPR ${LOCALETREESRC}/${localedir}/* ${D}${localedir}
> + fi
> + if [ -e ${LOCALETREESRC}/${libdir}/gconv ]; then
> + mkdir -p ${D}${libdir}
> + cp -fpPR ${LOCALETREESRC}/${libdir}/gconv ${D}${libdir}
> + fi
> + if [ -e ${LOCALETREESRC}/${datadir}/i18n ]; then
> + cp -fpPR ${LOCALETREESRC}/${datadir}/i18n ${D}${datadir}
> + fi
> + if [ -e ${LOCALETREESRC}/${datadir}/locale ]; then
> + cp -fpPR ${LOCALETREESRC}/${datadir}/locale ${D}${datadir}
> + fi
> + chown root.root -R ${D}
> + cp -fpPR ${LOCALETREESRC}/SUPPORTED ${WORKDIR}
> +}

why is chown needed here ?
secondly, this piece should go into OE-Core

> diff --git
> a/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/external-linaro-toolchain.bb
> b/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/external-linaro-toolchain.bb
> index 240d550..47fd4ca 100644
> ---
> a/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/external-linaro-toolchain.bb
> +++
> b/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/external-linaro-toolchain.bb
> @@ -41,6 +41,12 @@ PROVIDES += "\
>   libitm \
>   libitm-dev \
>   libitm-staticdev \
> + libasan \
> + libasan-dev \
> + libasan-staticdev \
> + libatomic \
> + libatomic-dev \
> + libatomic-staticdev \
>   virtual/linux-libc-headers \
>  "
>
> @@ -50,12 +56,11 @@ PR = "r2"
>  # https://launchpad.net/linaro-toolchain-binaries
>  SRC_URI = "file://SUPPORTED"
>
> +LDLINUX32 = "${@base_contains("TUNE_FEATURES", "callconvention-hard",
> "ld-linux-armhf.so.3", "ld-linux.so.3",d)}"
> +
>  do_install() {
>   install -d ${D}${base_libdir}
> - install -d ${D}${bindir}
> - install -d ${D}${sbindir}
>   install -d ${D}${libdir}
> - install -d ${D}${libexecdir}
>   install -d ${D}${datadir}
>   install -d ${D}${includedir}
>
> @@ -79,7 +84,7 @@ do_install() {
>   fi
>
>   # fix up the copied symlinks (they are still pointing to the multiarch
> directory)
> - linker_name="${@base_contains("TUNE_FEATURES", "aarch64",
> "ld-linux-aarch64.so.1", "ld-linux.so.3",d)}"
> + linker_name="${@base_contains("TUNE_FEATURES", "aarch64",
> "ld-linux-aarch64.so.1", "${LDLINUX32}",d)}"
>   ln -sf ld-${ELT_VER_LIBC}.so ${D}${base_libdir}/${linker_name}
>   ln -sf ../../lib/libnsl.so.1 ${D}${libdir}/libnsl.so
>   ln -sf ../../lib/librt.so.1 ${D}${libdir}/librt.so
> @@ -144,6 +149,12 @@ PACKAGES =+ "\
>   libitm \
>   libitm-dev \
>   libitm-staticdev \
> + libasan \
> + libasan-dev \
> + libasan-staticdev \
> + libatomic \
> + libatomic-dev \
> + libatomic-staticdev \
>  "
>
>  INSANE_SKIP_${PN}-dbg = "staticdev"
> @@ -282,14 +293,16 @@ FILES_libssp-staticdev = " \
>
>  FILES_libgfortran = "${base_libdir}/libgfortran.so.*"
>  FILES_libgfortran-dev = " \
> -  ${base_libdir}/libgfortran.so"
> +  ${base_libdir}/libgfortran.so \
> +  ${base_libdir}/libgfortran.spec"
>  FILES_libgfortran-staticdev = " \
>    ${base_libdir}/libgfortran.a \
>    ${base_libdir}/libgfortranbegin.a"
>
>  FILES_libmudflap = "${base_libdir}/libmudflap*.so.*"
>  FILES_libmudflap-dev = "\
> -  ${base_libdir}/libmudflap*.so \
> +  ${base_libdir}/libmudflap*.so"
> +FILES_libmudflap-staticdev = "\
>    ${base_libdir}/libmudflap*.a \
>    ${base_libdir}/libmudflap*.la"
>
> @@ -313,6 +326,19 @@ FILES_libgomp-dev = "\
>  FILES_libgomp-staticdev = "\
>    ${base_libdir}/libgomp*.a \
>    "
> +
> +FILES_libasan = "\
> +  ${base_libdir}/libasan.so.* \
> +  "
> +FILES_libasan-dev = "\
> +  ${base_libdir}/libasan.so \
> +  "
> +FILES_libatomic ="\
> +  ${base_libdir}/libatomic.so.* \
> +  "
> +FILES_libatomic-dev = "\
> +  ${base_libdir}/libatomic.so \
> +  "
>  ELT_VER_MAIN ??= ""
>
>  python () {
> --
> 1.7.9.5
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

