Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.20056.1599926002874891673
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 08:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nO8x4rCz;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2D17238C1336
	for <yocto@yoctoproject.org>; Sat, 12 Sep 2020 08:53:22 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id k13so2366664plk.3
        for <yocto@yoctoproject.org>; Sat, 12 Sep 2020 08:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=NOWiaDehZm6l16JVBeYvhwW5tjWi2GBE9+z7m+6JmiA=;
        b=nO8x4rCz5s0yPZQ6A4q/WG9bBEA1Cm4Y9WvK44rCPSr5TO9HCl2Y+MWW8EqBVOiXxW
         tY2tpG1ScnYKB/dFrbzuSkdp0dQWMqa7r76Rg5yi+nSWfawSzEC4/vbTWvJWiXnk4t+f
         sWUd7KAIlNc4Lop+Ox3D9/zP5POO9rdm13M7iMCl1g+zx6aeiB3PgYROwQ6gHDTB7gE8
         RYICfepcLkMGeqmdt6EgHwX7yi6gZW4JylziT+QsmQpBbxC9wSfZSyfTSvd105moyM3n
         vkIuW/QYV5QSQQlYBEuiVFH5gRGLszZu+cNqrZqDgZjnzbBTYiHBh6TurDQ4rALUz6KU
         uEpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=NOWiaDehZm6l16JVBeYvhwW5tjWi2GBE9+z7m+6JmiA=;
        b=Ong/haLZ2LoRzzIZYBQVsR4v3MUnY3TA5xiRczuPhLjiZ38CajptMCD3X2OkmFCtgC
         Ms7mK6W1zvemsKnfz18eQMWe1XVwlHpCHm1kB2Ec7uC+YQzD25julbMD30CgJO64TzhJ
         f8MJODdmQ/CcYOIg7AsYVjDrlgdYUrPZm+jzmxo6qzYHkbVZCC5jxqgj79mK3OI7kd22
         Iex5PBRSsMqFBQzFQddVRSsPeuWleiHH3yZkWqvnVvX7A9K6PrttxLP344hcG9OmnZCS
         UpbldFeZN9B/itTBZpqEH0l39a3MQwHJIQf6xIKvk6JoBrhNqcJntcydZV3mwOSSHie3
         VgnQ==
X-Gm-Message-State: AOAM531T6ZpQKA1ex8OLnucBA1naRieGi9Hv+QdpwDEjYvNhCx9MMPfo
	rb1VP01GbCVSRHpoDI9oyJ3a6cs23lU=
X-Google-Smtp-Source: ABdhPJyQFVi12GYt5hnwEidpdDSJd5Mjaq7goAPJeXST8L+Vj0Lyt0esdzFCJU/yVjoEUH7oSBiXFA==
X-Received: by 2002:a17:902:8bc2:b029:d0:cbe1:e743 with SMTP id r2-20020a1709028bc2b02900d0cbe1e743mr7055139plo.30.1599926001519;
        Sat, 12 Sep 2020 08:53:21 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id u138sm5644125pfc.218.2020.09.12.08.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 08:53:20 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH v2] ibmswtpm2: update to 1637
To: Jens Rehsack <rehsack@gmail.com>, yocto@yoctoproject.org
Cc: Jens Rehsack <sno@netbsd.org>
References: <20200911073408.16407-1-sno@NetBSD.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <2a1b2213-7659-3a2e-e499-f11fedd13e90@gmail.com>
Date: Sat, 12 Sep 2020 08:53:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911073408.16407-1-sno@NetBSD.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.
thanks

On 9/11/20 12:34 AM, Jens Rehsack wrote:
> From: Jens Rehsack <sno@netbsd.org>
>
> Update ibmswtpm2 from 1628 to 1637. Build 1637 Includes:
> * Increase NV memory size to match PC Client RSA 3072 requirements
> * Add and fix ACT support
> * Update Visual Studio files to 2019.
>
> Signed-off-by: Jens Rehsack <sno@netbsd.org>
> ---
>  .../ibmswtpm2/files/fix-wrong-cast.patch      | 27 ++++++++++
>  .../ibmswtpm2/files/remove_optimization.patch | 26 ----------
>  .../ibmswtpm2/files/tune-makefile.patch       | 50 +++++++++++++++++++
>  .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb  | 26 ----------
>  .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb  | 39 +++++++++++++++
>  5 files changed, 116 insertions(+), 52 deletions(-)
>  create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
>  delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
>  create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
>  delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
>  create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
>
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
> new file mode 100644
> index 0000000..f2938e0
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
> @@ -0,0 +1,27 @@
> +Fix strict aliasing issue of gcc10
> +
> +fixes:
> +
> +TpmFail.c: In function 'TpmLogFailure':
> +TpmFail.c:217:23: error: dereferencing type-punned pointer will break strict-aliasing rules [-Werror=strict-aliasing]
> +  217 |     s_failFunction = *(UINT32 *)&function; /* kgold */
> +      |                       ^~~~~~~~~~~~~~~~~~~
> +cc1: all warnings being treated as errors
> +
> +Upstream-Status: Submitted
> +
> +Signed-off-by: Jens Rehsack <sno@NetBSD.org>
> +
> +Index: src/TpmFail.c
> +===================================================================
> +--- src.orig/TpmFail.c	2020-09-10 15:43:57.085063875 +0200
> ++++ src/TpmFail.c	2020-09-10 15:48:35.563302634 +0200
> +@@ -214,7 +214,7 @@
> +     // On a 64-bit machine, this may truncate the address of the string
> +     // of the function name where the error occurred.
> + #if FAIL_TRACE
> +-    s_failFunction = *(UINT32 *)&function;	/* kgold */
> ++    memcpy(&s_failFunction, function, sizeof(uint32_t));	/* kgold */
> +     s_failLine = line;
> + #else
> +     s_failFunction = 0;
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
> deleted file mode 100644
> index 2919e2e..0000000
> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -Allow recipe to overide optimization.
> -
> -fixes:
> -
> -397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
> -|       |    ^~~~~~~
> -| cc1: all warnings being treated as errors
> -
> -
> -Upstream-Status: OE specific
> -
> -Signed-off-by: Armin Kuster <akuster808@gmail.com>
> -
> -Index: src/makefile
> -===================================================================
> ---- src.orig/makefile
> -+++ src/makefile
> -@@ -43,7 +43,7 @@ CC = /usr/bin/gcc
> - CCFLAGS = -Wall  			\
> - 	-Wmissing-declarations -Wmissing-prototypes -Wnested-externs \
> - 	-Werror -Wsign-compare \
> --	 -c -ggdb -O0 			\
> -+	 -c -ggdb -O 			\
> - 	-DTPM_POSIX			\
> - 	-D_POSIX_			\
> - 	-DTPM_NUVOTON
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
> new file mode 100644
> index 0000000..eebddb9
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
> @@ -0,0 +1,50 @@
> +1) Allow recipe to overide optimization.
> +
> +fixes:
> +
> +397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
> +|       |    ^~~~~~~
> +| cc1: all warnings being treated as errors
> +
> +2) Allow recipe to override OE related compile-/link-flags
> +
> +fixes:
> +
> +ERROR: QA Issue: File /usr/bin/tpm_server in package ibmswtpm2 doesn't have GNU_HASH (didn't pass LDFLAGS?) [ldflags]
> +
> +Upstream-Status: OE specific
> +
> +Signed-off-by: Jens Rehsack <sno@NetBSD.org>
> +
> +Index: src/makefile
> +===================================================================
> +--- src.orig/makefile
> ++++ src/makefile
> +@@ -38,12 +38,10 @@
> + #################################################################################
> + 
> + 
> +-CC = /usr/bin/gcc
> +-
> + CCFLAGS = -Wall  			\
> + 	-Wmissing-declarations -Wmissing-prototypes -Wnested-externs \
> + 	-Werror -Wsign-compare \
> +-	 -c -ggdb -O0 			\
> ++	 -c -ggdb -O 			\
> + 	-DTPM_POSIX			\
> + 	-D_POSIX_			\
> + 	-DTPM_NUVOTON
> +@@ -79,11 +77,11 @@
> + .PRECIOUS:	%.o
> + 
> + tpm_server:	$(OBJFILES)
> +-		$(CC) $(OBJFILES) $(LNFLAGS) -o tpm_server
> ++		$(CCLD) $(OBJFILES) $(LDFLAGS) $(LNFLAGS) -o tpm_server
> + 
> + clean:		
> + 		rm -f *.o tpm_server *~
> + 
> + %.o:		%.c
> +-		$(CC) $(CCFLAGS) $< -o $@
> ++		$(CC) $(CCFLAGS) $(CFLAGS) $< -o $@
> + 
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
> deleted file mode 100644
> index 3373a30..0000000
> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -SUMMARY = "IBM's Software TPM 2.0"
> -LICENSE = "BSD"
> -SECTION = "securty/tpm"
> -LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
> -
> -DEPENDS = "openssl"
> -
> -SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
> -           file://remove_optimization.patch \
> -           "
> -SRC_URI[md5sum] = "bfd3eca2411915f24de628b9ec36f259"
> -SRC_URI[sha256sum] = "a8e874e7a1ae13a1290d7679d846281f72d0eb6a5e4cfbafca5297dbf4e29ea3"
> -SRC_URI[sha1sum] = "7c8241a4e97a801eace9f0eea8cdda7c58114f7f"
> -SRC_URI[sha384sum] = "eec25cc8ba0e3cb27d41ba4fa4c71d8158699953ccb61bb6d440236dcbd8f52b6954eaae9d640a713186e0b99311fd91"
> -SRC_URI[sha512sum] = "ab47caa4406ba57c0afc6fadae304fc9ef5e3e125be0f2fb1955a419cf93cd5e9176e103f0b566825abc16cca00b795f98d2b407f0a2bf7b141ef4b025d907d0"
> -
> -S = "${WORKDIR}/src"
> -
> -do_compile () {
> -   make CC='${CC}'
> -}
> -
> -do_install () {
> -   install -d ${D}/${bindir}
> -   install -m 0755 tpm_server  ${D}/${bindir}
> -}
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
> new file mode 100644
> index 0000000..32afd37
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
> @@ -0,0 +1,39 @@
> +SUMMARY = "IBM's Software TPM 2.0"
> +DESCRIPTION = "The software TPM 2.0 is targeted toward application development, \
> +education, and virtualization. \
> +\
> +The intent is that an application can be developed using the software TPM. \
> +The application should then run using a hardware TPM without changes. \
> +Advantages of this approach: \
> +* In contrast to a hardware TPM, it runs on many platforms and it's generally faster. \
> +* Application software errors are easily reversed by simply removing the TPM state and starting over. \
> +* Difficult crypto errors are quickly debugged by looking inside the TPM."
> +HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
> +LICENSE = "BSD"
> +SECTION = "securty/tpm"
> +LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
> +
> +DEPENDS = "openssl"
> +
> +SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
> +           file://tune-makefile.patch \
> +           file://fix-wrong-cast.patch \
> +           "
> +SRC_URI[md5sum] = "43b217d87056e9155633925eb6ef749c"
> +SRC_URI[sha256sum] = "dd3a4c3f7724243bc9ebcd5c39bbf87b82c696d1c1241cb8e5883534f6e2e327"
> +SRC_URI[sha1sum] = "ab4b94079e57a86996991e8a2b749ce063e4ad3e"
> +SRC_URI[sha384sum] = "bbef16a934853ce78cba7ddc766aa9d7ef3cde3430a322b1be772bf3ad4bd6d413ae9c4de21bc1a4879d17dfe2aadc1d"
> +SRC_URI[sha512sum] = "007aa415cccf19a2bcf789c426727dc4032dcb04cc9d11eedc231d2add708c1134d3d5ee5cfbe7de68307c95fff7a30bd306fbd8d53c198a5ef348440440a6ed"
> +
> +S = "${WORKDIR}/src"
> +
> +CFLAGS += "-Wno-error=maybe-uninitialized"
> +
> +do_compile () {
> +   make CC='${CC}'
> +}
> +
> +do_install () {
> +   install -d ${D}/${bindir}
> +   install -m 0755 tpm_server  ${D}/${bindir}
> +}
>
> 

