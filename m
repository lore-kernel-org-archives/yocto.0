Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F50E00BAD; Thu,  1 Aug 2019 04:45:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE64EE00BD5
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 04:43:29 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id n4so73313946wrs.3
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 04:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7bJ5blFTQbjuBfKvvwswxyYo9+43sP0hZTx6knRkQwQ=;
	b=obhnrFsOV11G2LXqw5H8g6CHgCPQaEvnvcoThMiaaG5xt0XWvQThyWNFFpFjzAYZ5m
	SK9VCVKpg5WeDmERCmR3wGUcELNdxut1HLuIwLxRE2+LlFrV1EgFK2+i5QT0/kpgvQWU
	GvoOy0U7SJkTLIixos1q/EBalWRijwfRvSCLEU+15a4V1qIJRphdC3SMM4i1tc/k4oVe
	s+vdeBcpSSxWGJ8XVkbzq7aKLTbt7nXKk6xbpalnSMSC1PY8cIYGphysDd63YZ6+jyLD
	PfjZfeXuvOH61tcYopVrZZgW4/+IM8m+YBOc1nIdyOZtsyibgg+NTtj9AysnYWP8/vyw
	+xVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=7bJ5blFTQbjuBfKvvwswxyYo9+43sP0hZTx6knRkQwQ=;
	b=ph5SS86mUP+VGiiw9j7Obt6O5PqkMOaiC0iCuwKSV+dUwFhthZPipJxI03NE4mYApG
	jeVsSKNg45vIJ+f4HVbCNDefUD/LJgH4zqsNjIi5dV9sM1M5HcPHVPo5bUppTqxUh3E2
	g0yWBiaP0Yi73MQnbWW4FzR0arGVkQnp0nJ/tH031pcqx1T4Z7qNT0NxpjhGkKonKF3V
	OFMp2Grrs6DwksBx+7xzBSvfge6nYovsIaXKAUWkQWu40IAmhPZ7KTI1Rmfc1hiJ6WQf
	ph6GE4B722pg5OOFP9XNe0m2CBMWXsuB+ehsc9p524t34HFvYRPXqYIw2cGXRAEfFJdF
	Gbeg==
X-Gm-Message-State: APjAAAXIHimXvmov+n80CwiuhM9bNp1o8c90FhRn1c2+S/FAS+TptjO3
	GDyraC1vJ3NyvevT8VHG+H3LdXUqyPc=
X-Google-Smtp-Source: APXvYqw0sSOUaiBOb6H0aTJeh5FyxRUi8GbptMc++F/crRd9CHAM5+UmL3EpFqYUfsXiAsXlM1OxnA==
X-Received: by 2002:adf:f08f:: with SMTP id n15mr54612667wro.213.1564659808505;
	Thu, 01 Aug 2019 04:43:28 -0700 (PDT)
Received: from [192.168.1.25]
	(host86-161-197-210.range86-161.btcentralplus.com. [86.161.197.210])
	by smtp.gmail.com with ESMTPSA id
	y16sm153819656wrg.85.2019.08.01.04.43.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 04:43:27 -0700 (PDT)
To: dbaryshkov@gmail.com, yocto@yoctoproject.org
References: <20190731202451.845-1-dbaryshkov@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <7fa67ea5-9ec5-ee8e-5ba1-45f8a4345fc7@gmail.com>
Date: Thu, 1 Aug 2019 04:43:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731202451.845-1-dbaryshkov@gmail.com>
Subject: Re: [meta-integrity][PATCH] ima-evm-utils: bump to release 1.2.1
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
X-List-Received-Date: Thu, 01 Aug 2019 11:45:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dmitry,


On 7/31/19 1:24 PM, dbaryshkov@gmail.com wrote:
> From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
>
> Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
> ---
>  ...link-to-libcrypto-instead-of-OpenSSL.patch | 65 -------------------
>  ...ls-replace-INCLUDES-with-AM_CPPFLAGS.patch | 43 ------------
>  ...clude-hash-info.gen-into-distributio.patch | 31 ---------
>  ...ma-evm-utils-update-.gitignore-files.patch | 34 ----------
>  .../ima-evm-utils/ima-evm-utils_git.bb        | 12 +---
>  5 files changed, 3 insertions(+), 182 deletions(-)
>  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
>  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
>  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
>  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
I am evaluation all your updates to this layer. I am traveling (PTO) and
have limited access to test system. I will either merge them or send
feedback in the next few days.

kind regards and thanks for the patches,
Armin
>
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
> deleted file mode 100644
> index 5ccb73d9b6e6..000000000000
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
> +++ /dev/null
> @@ -1,65 +0,0 @@
> -From 4feaf9b61f93e4043eca26b4ec9f9f68d0cf5e68 Mon Sep 17 00:00:00 2001
> -From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> -Date: Wed, 6 Mar 2019 01:08:43 +0300
> -Subject: [PATCH 1/4] ima-evm-utils: link to libcrypto instead of OpenSSL
> -
> -There is no need to link to full libssl. evmctl uses functions from
> -libcrypto, so let's link only against that library.
> -
> -Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> ----
> - configure.ac    | 4 +---
> - src/Makefile.am | 9 ++++-----
> - 2 files changed, 5 insertions(+), 8 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index 60f3684..32e8d85 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -24,9 +24,7 @@ LT_INIT
> - # Checks for header files.
> - AC_HEADER_STDC
> - 
> --PKG_CHECK_MODULES(OPENSSL, [ openssl >= 0.9.8 ])
> --AC_SUBST(OPENSSL_CFLAGS)
> --AC_SUBST(OPENSSL_LIBS)
> -+PKG_CHECK_MODULES(LIBCRYPTO, [libcrypto >= 0.9.8 ])
> - AC_SUBST(KERNEL_HEADERS)
> - AC_CHECK_HEADER(unistd.h)
> - AC_CHECK_HEADERS(openssl/conf.h)
> -diff --git a/src/Makefile.am b/src/Makefile.am
> -index d74fc6f..b81281a 100644
> ---- a/src/Makefile.am
> -+++ b/src/Makefile.am
> -@@ -1,11 +1,11 @@
> - lib_LTLIBRARIES = libimaevm.la
> - 
> - libimaevm_la_SOURCES = libimaevm.c
> --libimaevm_la_CPPFLAGS = $(OPENSSL_CFLAGS)
> -+libimaevm_la_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
> - # current[:revision[:age]]
> - # result: [current-age].age.revision
> - libimaevm_la_LDFLAGS = -version-info 0:0:0
> --libimaevm_la_LIBADD =  $(OPENSSL_LIBS)
> -+libimaevm_la_LIBADD =  $(LIBCRYPTO_LIBS)
> - 
> - include_HEADERS = imaevm.h
> - 
> -@@ -17,12 +17,11 @@ hash_info.h: Makefile
> - bin_PROGRAMS = evmctl
> - 
> - evmctl_SOURCES = evmctl.c
> --evmctl_CPPFLAGS = $(OPENSSL_CFLAGS)
> -+evmctl_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
> - evmctl_LDFLAGS = $(LDFLAGS_READLINE)
> --evmctl_LDADD =  $(OPENSSL_LIBS) -lkeyutils libimaevm.la
> -+evmctl_LDADD =  $(LIBCRYPTO_LIBS) -lkeyutils libimaevm.la
> - 
> - INCLUDES = -I$(top_srcdir) -include config.h
> - 
> - CLEANFILES = hash_info.h
> - DISTCLEANFILES = @DISTCLEANFILES@
> --
> --- 
> -2.17.1
> -
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
> deleted file mode 100644
> index 8237274ca8b6..000000000000
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -From 5bb10f3da420f4c46e44423276a9da0d4bc1b691 Mon Sep 17 00:00:00 2001
> -From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> -Date: Wed, 6 Mar 2019 01:17:12 +0300
> -Subject: [PATCH 2/4] ima-evm-utils: replace INCLUDES with AM_CPPFLAGS
> -
> -Replace INCLUDES variable with AM_CPPFLAGS to stop Automake from warning
> -about deprecated variable usage.
> -
> -Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> ----
> - src/Makefile.am | 6 +++---
> - 1 file changed, 3 insertions(+), 3 deletions(-)
> -
> -diff --git a/src/Makefile.am b/src/Makefile.am
> -index b81281a..164e7e4 100644
> ---- a/src/Makefile.am
> -+++ b/src/Makefile.am
> -@@ -1,7 +1,7 @@
> - lib_LTLIBRARIES = libimaevm.la
> - 
> - libimaevm_la_SOURCES = libimaevm.c
> --libimaevm_la_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
> -+libimaevm_la_CPPFLAGS = $(AM_CPPFLAGS) $(LIBCRYPTO_CFLAGS)
> - # current[:revision[:age]]
> - # result: [current-age].age.revision
> - libimaevm_la_LDFLAGS = -version-info 0:0:0
> -@@ -17,11 +17,11 @@ hash_info.h: Makefile
> - bin_PROGRAMS = evmctl
> - 
> - evmctl_SOURCES = evmctl.c
> --evmctl_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
> -+evmctl_CPPFLAGS = $(AM_CPPFLAGS) $(LIBCRYPTO_CFLAGS)
> - evmctl_LDFLAGS = $(LDFLAGS_READLINE)
> - evmctl_LDADD =  $(LIBCRYPTO_LIBS) -lkeyutils libimaevm.la
> - 
> --INCLUDES = -I$(top_srcdir) -include config.h
> -+AM_CPPFLAGS = -I$(top_srcdir) -include config.h
> - 
> - CLEANFILES = hash_info.h
> - DISTCLEANFILES = @DISTCLEANFILES@
> --- 
> -2.17.1
> -
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
> deleted file mode 100644
> index 3d250d2fca5d..000000000000
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -From c587ec307a6259a990bfab727cea7db28dba4c23 Mon Sep 17 00:00:00 2001
> -From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> -Date: Wed, 6 Mar 2019 01:22:30 +0300
> -Subject: [PATCH 3/4] ima-evm-utils: include hash-info.gen into distribution
> -
> -Include hash-info.gen into tarball and call it from the sourcedir to fix
> -out-of-tree build (and thus 'make distcheck').
> -
> -Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> ----
> - src/Makefile.am | 3 ++-
> - 1 file changed, 2 insertions(+), 1 deletion(-)
> -
> -diff --git a/src/Makefile.am b/src/Makefile.am
> -index 164e7e4..9c037e2 100644
> ---- a/src/Makefile.am
> -+++ b/src/Makefile.am
> -@@ -11,8 +11,9 @@ include_HEADERS = imaevm.h
> - 
> - nodist_libimaevm_la_SOURCES = hash_info.h
> - BUILT_SOURCES = hash_info.h
> -+EXTRA_DIST = hash_info.gen
> - hash_info.h: Makefile
> --	./hash_info.gen $(KERNEL_HEADERS) >$@
> -+	$(srcdir)/hash_info.gen $(KERNEL_HEADERS) >$@
> - 
> - bin_PROGRAMS = evmctl
> - 
> --- 
> -2.17.1
> -
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
> deleted file mode 100644
> index 4ada1a2710ca..000000000000
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -From b9f327c5c513ccea9cb56d4bbd50c1f66d629099 Mon Sep 17 00:00:00 2001
> -From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> -Date: Wed, 6 Mar 2019 01:24:04 +0300
> -Subject: [PATCH 4/4] ima-evm-utils: update .gitignore files
> -
> -Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
> ----
> - .gitignore     | 1 +
> - src/.gitignore | 1 +
> - 2 files changed, 2 insertions(+)
> - create mode 100644 src/.gitignore
> -
> -diff --git a/.gitignore b/.gitignore
> -index ca7a06e..cb82166 100644
> ---- a/.gitignore
> -+++ b/.gitignore
> -@@ -45,6 +45,7 @@ cscope.*
> - ncscope.*
> - 
> - # Generated documentation
> -+*.1
> - *.8
> - *.5
> - manpage.links
> -diff --git a/src/.gitignore b/src/.gitignore
> -new file mode 100644
> -index 0000000..38e8e3c
> ---- /dev/null
> -+++ b/src/.gitignore
> -@@ -0,0 +1 @@
> -+hash_info.h
> --- 
> -2.17.1
> -
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
> index 6d4f008df334..92c24c902d88 100644
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
> +++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
> @@ -6,9 +6,9 @@ DEPENDS += "openssl attr keyutils"
>  
>  DEPENDS_class-native += "openssl-native keyutils-native"
>  
> -PV = "1.1+git${SRCPV}"
> -SRCREV = "782224f33cd711050cbf6146a12122cd73f9136b"
> -SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils"
> +PV = "1.2.1+git${SRCPV}"
> +SRCREV = "3eab1f93b634249c1720f65fcb495b1996f0256e"
> +SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils;branch=ima-evm-utils-1.2.y"
>  
>  # Documentation depends on asciidoc, which we do not have, so
>  # do not build documentation.
> @@ -21,12 +21,6 @@ SRC_URI += "file://evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch"
>  # Required for xargs with more than one path as argument (better for performance).
>  SRC_URI += "file://command-line-apply-operation-to-all-paths.patch"
>  
> -SRC_URI += "\
> -    file://0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch \
> -    file://0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch \
> -    file://0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch \
> -    file://0004-ima-evm-utils-update-.gitignore-files.patch \
> -"
>  S = "${WORKDIR}/git"
>  
>  inherit pkgconfig autotools


