Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7377E00D01; Mon, 17 Oct 2016 21:14:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.65 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA71E00CD2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 21:14:23 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id b75so29939789lfg.3
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 21:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/g0uoZRUgvwWUPecgQ4mN3uE3c2FzpRBsQ3PS4KsFmM=;
	b=hB83H0C3kLQtgjHieJOn1kIMXwpOp9nZldFBsGkfoLTaVSz4l7zPLT1mRKCzN30faS
	F/mG51vy78U2avleYEjz+bJQR+I+7n+/MO4CCGoGZ4j6aBLitW1zU/5m7nwYaW2WqcAm
	6Yb9Wb8IyoLsqFy7w3t1RV8nxvUlH1t2f6N5pq4SDTxvnFUru6LCDbASdwlpTykXs9zW
	GXn9Xicsh1McWNlq4XdkDsjmjfvD0SVRc0L6PtFqXYULQHZFFLIxgVAtz2+QiVTLu21u
	Jzl84DkHPDtpl825cNxpk58Tza/jDdbCQ7tpbltlwnexEwqnLhIrn9YK54VUT9LsO5Zt
	xShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/g0uoZRUgvwWUPecgQ4mN3uE3c2FzpRBsQ3PS4KsFmM=;
	b=M6GuvMKDSiofPi/iAEuGO6NMDSJGNjGwGCYamBeD6LRly1v3MZErol/DDDYTUBKcBO
	JvURXlTIA/nwGT67jGSFJQ1NEIezWBnNGX3KWwSm4key7XgKuT5aTy26pDnssW5wal9N
	MDL2ui+EThAVLFxtYxgy1y1ImmxjPvsnifaukapL6sZhvreXm4Xnm7Ufq77RyXLh2O4X
	PojZlh5+OixzTmEXrr9LMcdnxJjhHEsiegQh9iMeFmU80vhGQYx7owqB9ezptDvYD1nO
	4t5lgMfBjsWNhisGVo3Mq9iXcGVd44nH04sQX0evoaJC8UxDEr2qfCtUCFjhpNzWXnQ6
	/Weg==
X-Gm-Message-State: AA6/9RmQ1EZNfujtNIEYlhB+sSkLvvmM6hx83LJbcqO1leyB6xW0m9nsooUUcG6JbpUo06LSR/++0Q/rN3ygvQ==
X-Received: by 10.28.128.145 with SMTP id b139mr1529197wmd.76.1476764062605;
	Mon, 17 Oct 2016 21:14:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.155.103 with HTTP; Mon, 17 Oct 2016 21:14:22 -0700 (PDT)
In-Reply-To: <1476748950-21342-4-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-4-git-send-email-akuster808@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 17 Oct 2016 21:14:22 -0700
Message-ID: <CAJ86T=UUCdy+P6r_dKt1ErR19rKgCw5cNRDN-WEgCjhDXo-A1w@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 04/17] swtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 04:14:25 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 17, 2016 at 5:02 PM, Armin Kuster <akuster808@gmail.com> wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 +++++++++++++++++++++++
>  recipes-tpm/swtpm/swtpm_1.0.bb                    | 38 +++++++++++++++++++++
>  2 files changed, 79 insertions(+)
>  create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
>  create mode 100644 recipes-tpm/swtpm/swtpm_1.0.bb
>
> diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
> new file mode 100644
> index 0000000..015f418
> --- /dev/null
> +++ b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
> @@ -0,0 +1,41 @@
> +
> +Upstream-Status: Inappropriate [OE config]
> +
> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
> +
> +Index: configure.ac
> +===================================================================
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -349,21 +349,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-securi
> + dnl We have to make sure libtpms is using the same crypto library
> + dnl to avoid problems
> + AC_MSG_CHECKING([the crypto library libtpms is using])
> +-dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
> +-       sed -n '/SEARCH_DIR/p' | \
> +-       sed 's/SEARCH_DIR("=\?\(@<:@^"@:>@\+\)"); */\1\n/g')
> +-for dir in $dirs; do
> +-  if test -r $dir/libtpms.so; then
> +-    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
> +-      libtpms_cryptolib="openssl"
> +-      break
> +-    fi
> +-    if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
> +-      libtpms_cryptolib="freebl"
> +-      break
> +-    fi
> ++dir="$SEARCH_DIR"
> ++if test -r $dir/libtpms.so; then
> ++  if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
> ++    libtpms_cryptolib="openssl"
> ++    break
> +   fi
> +-done
> ++  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
> ++    libtpms_cryptolib="freebl"
> ++    break
> ++  fi
> ++fi
> +
> + if test -z "$libtpms_cryptolib"; then
> +   AC_MSG_ERROR([Could not determine libtpms crypto library.])
> diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
> new file mode 100644
> index 0000000..ae16e51
> --- /dev/null
> +++ b/recipes-tpm/swtpm/swtpm_1.0.bb
> @@ -0,0 +1,38 @@
> +SUMMARY = "SWTPM - Software TPM Emulator"
> +LICENSE = "BSD-3-Clause"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
> +SECTION = "tpm"
> +
> +DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm-native"
> +
> +SRCREV = "2cd10cee2f74c84bda22081514b6b2cb566fa42d"
> +SRC_URI = "git://github.com/stefanberger/swtpm.git \
> +          file://fix_lib_search_path.patch"
> +
> +S = "${WORKDIR}/git"
> +
> +inherit autotools-brokensep pkgconfig
> +PARALLEL_MAKE = ""
> +
> +TSS_USER="tss"
> +TSS_GROUP="tss"
> +
> +PACKAGECONFIG ?= "openssl"
> +PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
> +PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
> +PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, linselinux"

linselinux -> libselinux

> +
> +CACHED_CONFIGUREVARS = "ac_cv_path_EXPECT=${STAGING_LIBDIR} \
> +ac_cv_path_SOCAT=${STAGING_LIBDIR} "
> +
> +EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
> +
> +export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
> +
> +USERADD_PACKAGES = "${PN}"
> +GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
> +USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
> +    --no-create-home  --shell /bin/false ${BPN}"
> +
> +RDEPENDS_${PN} = "libtpm expect socat bash"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

