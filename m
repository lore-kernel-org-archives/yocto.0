Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A756E00D4F; Tue, 30 Jul 2019 02:14:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE5D3E00C94
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 02:14:33 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id u14so29531173pfn.2
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 02:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=UF7RnmX5Rpfw/F0WoK+c1JLWtxFey9crdpIMzU9DK2k=;
	b=ImQH8vOs+/unI6RuO+gDFqFFr5u+e7oOkwkTd8poRHnduBFrtDpLO8MF3t8Nu5GYTN
	rObRyYqYx8jcLRw1CyuGcPekZsM7xVCcejKrEYaSwSTkTGUr824+qTaJYmVEQ8ehRjsE
	VzqStPKFiA8zT18oqUrMgDNHKDwgnDFUyu+Ix0YQidBhswn0X2GTchzhG1laE9VhMgCU
	+BCj8sZuielfyTDghAUF70CMPGdfB8nRQMl26oEhCF1dtQ0pLhdQ6qtlp/tOKtJaPytg
	H3eKARkNcTYydC9QG5PRNC2S4d5TuV8GG87JA0CwSpZ228sc95plGVC2P8PJjEb+evCm
	sBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=UF7RnmX5Rpfw/F0WoK+c1JLWtxFey9crdpIMzU9DK2k=;
	b=ngWw2Cbq4xSZFfXttWzwF4KxjLOeF9TED50RmjHL6n5OUh3a6o1/IAWLaEn0DxW058
	36efdtK/x7up6a1FE8FgHs+0H3Yi71+Ju1gJH6KEbhkmqOHoOyOBFezkCfsKCAYu2bpf
	eXvpgUmtLoHEmf2UnjjMZKpHlV35Dm66Fx+jGQxW4N64m2i08ENzXDSu2U+CV6h8Hx4J
	gMsRKqWY8s2mAzBD6gAbeZOFDD/H4ba/MQK+nep4nLiuUsKt1DjUigpOaSAjCo4wdUSN
	4Olg5NAt3UEN1nIEJd8PO3z01YlKjnwU4aQm48wWgip5Xd6LPG+m3kKQonS8Z9vPJKEi
	n04w==
X-Gm-Message-State: APjAAAUo4SBYZKfoCTI4qjIq+aXXEUZRf1mBVDBW+Z4aGRDdb8fhfBC+
	reDa7UxivHvucZvul4yIIta3/dc3Dz0=
X-Google-Smtp-Source: APXvYqwgsQiNmgsu+Ono/CVpGGwNTz1diRi6krUxIhvhNhAAa8Em0r7Zn1ieuLqkOuSo7gKkrflKHw==
X-Received: by 2002:a17:90a:9386:: with SMTP id
	q6mr114921425pjo.81.1564478072271; 
	Tue, 30 Jul 2019 02:14:32 -0700 (PDT)
Received: from [192.168.0.10] ([2.28.42.19]) by smtp.gmail.com with ESMTPSA id
	j15sm64057149pfr.146.2019.07.30.02.14.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 02:14:31 -0700 (PDT)
To: dbaryshkov@gmail.com, yocto@yoctoproject.org
References: <20190729104747.22414-1-dbaryshkov@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <84d1ffce-e838-8d23-cdf0-1944df233491@gmail.com>
Date: Tue, 30 Jul 2019 02:14:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729104747.22414-1-dbaryshkov@gmail.com>
Subject: Re: [meta-security] keyutils: migrate to meta-oe
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
X-List-Received-Date: Tue, 30 Jul 2019 09:14:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 7/29/19 3:47 AM, dbaryshkov@gmail.com wrote:
> From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
>
> keyutils are now part of meta-oe, so remove them from meta-security.

This should be sitting in master-next already

- armin
>
> Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
> ---
>  .../files/fix_library_install_path.patch      | 28 ----------
>  ...ror-report-by-adding-default-message.patch | 42 ---------------
>  .../keyutils-test-fix-output-format.patch     | 41 --------------
>  recipes-security/keyutils/files/run-ptest     |  3 --
>  recipes-security/keyutils/keyutils_1.6.bb     | 53 -------------------
>  5 files changed, 167 deletions(-)
>  delete mode 100644 recipes-security/keyutils/files/fix_library_install_path.patch
>  delete mode 100644 recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
>  delete mode 100644 recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
>  delete mode 100755 recipes-security/keyutils/files/run-ptest
>  delete mode 100644 recipes-security/keyutils/keyutils_1.6.bb
>
> diff --git a/recipes-security/keyutils/files/fix_library_install_path.patch b/recipes-security/keyutils/files/fix_library_install_path.patch
> deleted file mode 100644
> index 938fe2eb57a4..000000000000
> --- a/recipes-security/keyutils/files/fix_library_install_path.patch
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00 2001
> -From: Wenzong Fan <wenzong.fan@windriver.com>
> -Date: Tue, 26 Sep 2017 07:59:51 +0000
> -Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for link
> -
> -The absolute path of the symlink will be invalid
> -when populated in sysroot, so use relative path instead.
> -
> -Upstream-Status: Pending
> -
> -Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> -Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> -{rebased for 1.6]
> -Signed-off-by: Armin Kuster <akuster808@gmail.com>
> -
> -Index: keyutils-1.6/Makefile
> -===================================================================
> ---- keyutils-1.6.orig/Makefile
> -+++ keyutils-1.6/Makefile
> -@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)
> - 	$(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
> - 	$(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
> - 	mkdir -p $(DESTDIR)$(USRLIBDIR)
> --	$(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
> -+	$(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
> - 	sed \
> - 	-e 's,@VERSION\@,$(VERSION),g' \
> - 	-e 's,@prefix\@,$(PREFIX),g' \
> diff --git a/recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch b/recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
> deleted file mode 100644
> index acd91c01c483..000000000000
> --- a/recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -fix keyutils test error report
> -
> -Upstream-Status: Pending
> -
> -"Permission denied" may be the reason of EKEYEXPIRED and EKEYREVOKED.
> -"Required key not available" may be the reason of EKEYREVOKED.
> -EXPIRED and REVOKED are 2 status of kernel security keys features.
> -But the userspace keyutils lib will output the error message, which may
> -have several reasons.
> -
> -Signed-off-by: Han Chao <chan@windriver.com>
> -
> -diff --git a/tests/toolbox.inc.sh b/tests/toolbox.inc.sh
> -index bbca00a..739e9d0 100644
> ---- a/tests/toolbox.inc.sh
> -+++ b/tests/toolbox.inc.sh
> -@@ -227,11 +227,12 @@ function expect_error ()
> - 	    ;;
> - 	EKEYEXPIRED)
> - 	    my_err="Key has expired"
> --	    alt_err="Unknown error 127"
> -+	    alt_err="Permission denied"
> - 	    ;;
> - 	EKEYREVOKED)
> - 	    my_err="Key has been revoked"
> --	    alt_err="Unknown error 128"
> -+	    alt_err="Permission denied"
> -+	    alt2_err="Required key not available"
> - 	    ;;
> - 	EKEYREJECTED)
> - 	    my_err="Key has been rejected"
> -@@ -249,6 +250,9 @@ function expect_error ()
> -     elif [ "x$alt_err" != "x" ] && expr "$my_errmsg" : ".*: $alt_err" >&/dev/null
> -     then
> - 	:
> -+    elif [ "x$alt2_err" != "x" ] && expr "$my_errmsg" : ".*: $alt2_err" >&/dev/null
> -+    then
> -+	:
> -     elif [ "x$old_err" != "x" ] && expr "$my_errmsg" : ".*: $old_err" >&/dev/null
> -     then
> - 	:
> -
> diff --git a/recipes-security/keyutils/files/keyutils-test-fix-output-format.patch b/recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
> deleted file mode 100644
> index a4ffd50ce54c..000000000000
> --- a/recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
> +++ /dev/null
> @@ -1,41 +0,0 @@
> -From 49b6321368e4bd3cd233d045cd09004ddd7968b2 Mon Sep 17 00:00:00 2001
> -From: Jackie Huang <jackie.huang@windriver.com>
> -Date: Mon, 15 May 2017 14:52:00 +0800
> -Subject: [PATCH] keyutils: fix output format
> -
> -keyutils ptest output format is incorrect, according to yocto
> -Development Manual
> -(http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#testing-packages-with-ptest)
> -5.10.6. Testing Packages With ptestThe test generates output in the format used by Automake:
> -<result>: <testname>
> -where the result can be PASS, FAIL, or SKIP, and the testname can be any
> -identifying string.
> -So we should change the test result format to match yocto ptest rules.
> -
> -Upstream-Status: Inappropriate [OE ptest specific]
> -
> -Signed-off-by: Li Wang <li.wang@windriver.com>
> -Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ----
> - tests/runtest.sh | 5 +++++
> - 1 file changed, 5 insertions(+)
> -
> -diff --git a/tests/runtest.sh b/tests/runtest.sh
> -index b6eaa7c..84263fb 100644
> ---- a/tests/runtest.sh
> -+++ b/tests/runtest.sh
> -@@ -21,6 +21,11 @@ for i in ${TESTS}; do
> -     echo "### RUNNING TEST $i"
> -     if [[ $AUTOMATED != 0 ]] ; then
> -         bash ./runtest.sh
> -+        if [ $? != 0 ]; then
> -+            echo "FAIL: $i"
> -+        else
> -+            echo "PASS: $i"
> -+        fi
> -     else
> -         bash ./runtest.sh || exit 1
> -     fi
> --- 
> -2.11.0
> -
> diff --git a/recipes-security/keyutils/files/run-ptest b/recipes-security/keyutils/files/run-ptest
> deleted file mode 100755
> index 305707f65d78..000000000000
> --- a/recipes-security/keyutils/files/run-ptest
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -#!/bin/sh
> -export AUTOMATED=1
> -make -C tests run
> diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
> deleted file mode 100644
> index 4d3a96f29bcc..000000000000
> --- a/recipes-security/keyutils/keyutils_1.6.bb
> +++ /dev/null
> @@ -1,53 +0,0 @@
> -SUMMARY = "Linux Key Management Utilities"
> -DESCRIPTION = "\
> -    Utilities to control the kernel key management facility and to provide \
> -    a mechanism by which the kernel call back to userspace to get a key \
> -    instantiated. \
> -    "
> -HOMEPAGE = "http://people.redhat.com/dhowells/keyutils"
> -SECTION = "base"
> -
> -LICENSE = "LGPLv2.1+ & GPLv2.0+"
> -
> -LIC_FILES_CHKSUM = "file://LICENCE.GPL;md5=5f6e72824f5da505c1f4a7197f004b45 \
> -                    file://LICENCE.LGPL;md5=7d1cacaa3ea752b72ea5e525df54a21f"
> -
> -inherit siteinfo autotools-brokensep ptest
> -
> -SRC_URI = "http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2 \
> -           file://keyutils-test-fix-output-format.patch \
> -           file://keyutils-fix-error-report-by-adding-default-message.patch \
> -           file://run-ptest \
> -           file://fix_library_install_path.patch \
> -           "
> -
> -SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
> -SRC_URI[sha256sum] = "d3aef20cec0005c0fa6b4be40079885567473185b1a57b629b030e67942c7115"
> -
> -EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -Wall' \
> -    NO_ARLIB=1 \
> -    BINDIR=${base_bindir} \
> -    SBINDIR=${base_sbindir} \
> -    LIBDIR=${libdir} \
> -    USRLIBDIR=${libdir} \
> -    INCLUDEDIR=${includedir} \
> -    BUILDFOR=${SITEINFO_BITS}-bit \
> -    NO_GLIBC_KEYERR=1 \
> -    "
> -
> -do_install () {
> -    install -d ${D}/${libdir}/pkgconfig
> -    oe_runmake DESTDIR=${D} install
> -}
> -
> -do_install_ptest () {
> -    cp -r ${S}/tests ${D}${PTEST_PATH}/
> -    sed -i -e 's/OSDIST=Unknown/OSDIST=${DISTRO}/' ${D}${PTEST_PATH}/tests/prepare.inc.sh
> -}
> -
> -
> -RDEPENDS_${PN}-ptest += "lsb"
> -RDEPENDS_${PN}-ptest_append_libc-glibc = " glibc-utils"
> -RDEPENDS_${PN}-ptest_append_libc-musl = " musl-utils"
> -
> -BBCLASSEXTEND = "native nativesdk"


