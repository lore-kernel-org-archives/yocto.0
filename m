Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D20E00BA2; Sun,  2 Sep 2018 07:51:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2068E00A38
	for <yocto@yoctoproject.org>; Sun,  2 Sep 2018 07:51:52 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id 8-v6so29591875oip.0
	for <yocto@yoctoproject.org>; Sun, 02 Sep 2018 07:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=euLWWbrTn0QPlhecDYMVVzaa/rx86uoGG/TVWFceQs4=;
	b=aaj4awF86HzB5FGNQIm4ioNBuB+y1LDCuBSKlY8lxYVlkgi2pWmIgsLDH/o6+DvoFG
	NEalKDYvtaJjXHZcAuk8qcYqEfjKArnqo4Sf9rcUXcw+WQd7xxS31nWcojMzk6RTSZjR
	PwroUe5pcF57+SuDASfVcNXsT5o3EylsiYfeo8TtWp2ZyddbJMj4p9Q3I3CpqBV/sKC3
	+tGQSwprWVzD5BAkBq7Xhwi8Y4ajwvv2yEk4d5+0roe2/WHmNcPJoFIpKhc6fBcL8fZk
	YiNte5Bs9xxgMBPoAIrTNStFDcTCi2OA8xb396JZZ4mKzJdTQfWKubwq9JA14SVG8crm
	kQVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=euLWWbrTn0QPlhecDYMVVzaa/rx86uoGG/TVWFceQs4=;
	b=eHmfQ9BojdiCyPS0UUL0FtOnQluVHEOWOzBp3bqJv25VpvFNFGyVJeTZsTOSTWy1y2
	vYLn6KacIE1GrDftH1GjYVxuLoKT6kIKtSGytTtEHiP8aOiB7K+KtWTXg7Q/wLPDDBMH
	y8Jg8cSPbd0q283WRptSwMh648xkOYQ5siKC6FIitQL+iZqE2+NuhClEjk3Yb++ZvV8C
	sertV2uQIy0j5e4tnmryIos6QUJwucP2lsNrOQzHEIUmeZrzDojY8L70uQnptkra17JS
	e+LxdSA/ujN0rhCqVvU7PwIuseKqblv6JJLjHlh4miwbHqExo/wyy4Zy95cLCunZMXKJ
	6Big==
X-Gm-Message-State: APzg51ABV7LZ4z2wh5glQsoVPT27+kbzo0D688qCr3Qp9RUOP/JTgeC+
	mvInLZzZM5MrXszkggE4B9Otddre
X-Google-Smtp-Source: ANB0VdblmfjrTvGMVT2IGYMAxOKoSA3pCgfTlzLrs7GgTxPM0a3qe/LCBx0TO6Vsr0KVNjS8L38gdg==
X-Received: by 2002:aca:7c5:: with SMTP id
	188-v6mr16922001oih.58.1535899911994; 
	Sun, 02 Sep 2018 07:51:51 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:c043:3fe4:1aa0:e88f?
	([2601:202:4180:c33:c043:3fe4:1aa0:e88f])
	by smtp.gmail.com with ESMTPSA id
	j125-v6sm29551007oih.53.2018.09.02.07.51.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 02 Sep 2018 07:51:51 -0700 (PDT)
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
References: <1535699411-6135-1-git-send-email-yi.zhao@windriver.com>
	<1535699411-6135-2-git-send-email-yi.zhao@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <2f878a02-7945-644c-8320-a7e72089e0e5@gmail.com>
Date: Sun, 2 Sep 2018 07:51:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1535699411-6135-2-git-send-email-yi.zhao@windriver.com>
Subject: Re: [meta-security][PATCH 2/2] xmlsec1: upgrade 1.2.25 -> 1.2.26
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
X-List-Received-Date: Sun, 02 Sep 2018 14:51:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 08/31/2018 12:10 AM, Yi Zhao wrote:
> Drop patch xmlsec1-fix-a-typo-in-examples-verify3.c.patch since the
> issue had been fixed upstream.
>
> Rebase patch change-finding-path-of-nss.patch
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
merged
> ---
>  .../xmlsec1/change-finding-path-of-nss.patch       | 107 ++++++++++-----------
>  .../xmlsec1-fix-a-typo-in-examples-verify3.c.patch |  23 -----
>  .../{xmlsec1_1.2.25.bb => xmlsec1_1.2.26.bb}       |   5 +-
>  3 files changed, 53 insertions(+), 82 deletions(-)
>  delete mode 100644 recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
>  rename recipes-security/xmlsec1/{xmlsec1_1.2.25.bb => xmlsec1_1.2.26.bb} (89%)
>
> diff --git a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
> index fcc63b3..1cec47f 100644
> --- a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
> +++ b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
> @@ -1,4 +1,4 @@
> -From 47379747e34f952d31af028c672940ca7859ae3c Mon Sep 17 00:00:00 2001
> +From c1c980a95d85bcaf8802524d6148783522b300d7 Mon Sep 17 00:00:00 2001
>  From: Yulong Pei <Yulong.pei@windriver.com>
>  Date: Wed, 21 Jul 2010 22:33:43 +0800
>  Subject: [PATCH] change finding path of nss and nspr
> @@ -7,66 +7,61 @@ Upstream-Status: Pending
>  
>  Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
>  Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> -
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>  ---
> - configure.ac | 12 ++++++------
> - 1 file changed, 6 insertions(+), 6 deletions(-)
> + configure.ac | 20 ++++++++++----------
> + 1 file changed, 10 insertions(+), 10 deletions(-)
>  
>  diff --git a/configure.ac b/configure.ac
> -index 3278200..6edec7d 100644
> +index 951b3eb..1fdeb0f 100644
>  --- a/configure.ac
>  +++ b/configure.ac
> -@@ -644,7 +644,7 @@ if test "z$NSS_FOUND" = "zno" ; then
> +@@ -866,10 +866,10 @@ MOZILLA_MIN_VERSION="1.4"
> + NSS_CRYPTO_LIB="$XMLSEC_PACKAGE-nss"
> + NSPR_PACKAGE=mozilla-nspr
> + NSS_PACKAGE=mozilla-nss
> +-NSPR_INCLUDE_MARKER="nspr/nspr.h"
> ++NSPR_INCLUDE_MARKER="nspr.h"
> + NSPR_LIB_MARKER="libnspr4$shrext"
> + NSPR_LIBS_LIST="-lnspr4 -lplds4 -lplc4"
> +-NSS_INCLUDE_MARKER="nss/nss.h"
> ++NSS_INCLUDE_MARKER="nss3/nss.h"
> + NSS_LIB_MARKER="libnss3$shrext"
> + NSS_LIBS_LIST="-lnss3 -lsmime3"
>   
> -     if test "z$with_nspr" != "z" ; then
> - 	NSPR_PREFIX="$with_nspr"
> --	NSPR_CFLAGS="-I$with_nspr/include -I$with_nspr/include/nspr"
> -+	NSPR_CFLAGS="-I$with_nspr/usr/include -I$with_nspr/usr/include/nspr4"
> - 	if test "z$with_gnu_ld" = "zyes" ; then
> - 	    NSPR_LIBS="-Wl,-rpath-link -Wl,$with_nspr/lib -L$with_nspr/lib $NSPR_LIBS_LIST"
> - 	else
> -@@ -652,7 +652,7 @@ if test "z$NSS_FOUND" = "zno" ; then
> - 	fi
> - 	NSPR_INCLUDES_FOUND="yes"
> - 	NSPR_LIBS_FOUND="yes"
> --	NSPR_PRINIT_H="$with_nspr/include/prinit.h"
> -+	NSPR_PRINIT_H="$with_nspr/usr/include/nspr4/prinit.h"
> +@@ -898,24 +898,24 @@ fi
> + dnl Priority 1: User specifies the path to installation
> + if test "z$NSPR_FOUND" = "zno" -a "z$with_nspr" != "z" -a "z$with_nspr" != "zyes" ; then
> +     AC_MSG_CHECKING(for nspr library installation in "$with_nspr" folder)
> +-    if test -f "$with_nspr/include/$NSPR_INCLUDE_MARKER" -a -f "$with_nspr/lib/$NSPR_LIB_MARKER" ; then
> +-        NSPR_INCLUDE_PATH="$with_nspr/include"
> +-        NSPR_LIB_PATH="$with_nspr/lib"
> ++    if test -f "$with_nspr/usr/include/$NSPR_INCLUDE_MARKER" -a -f "$with_nspr/${libdir}/$NSPR_LIB_MARKER" ; then
> ++        NSPR_INCLUDE_PATH="$with_nspr/usr/include"
> ++        NSPR_LIB_PATH="$with_nspr/${libdir}"
> +         NSPR_FOUND="yes"
> +         AC_MSG_RESULT([yes])
>       else
> - 	for dir in $ac_nss_inc_dir ; do
> -     	    if test -f $dir/nspr/prinit.h ; then
> -@@ -690,7 +690,7 @@ if test "z$NSS_FOUND" = "zno" ; then
> - 	OLD_CPPFLAGS=$CPPFLAGS
> - 	CPPFLAGS="$NSPR_CFLAGS"
> - 	AC_EGREP_CPP(yes,[
> --    	    #include <prinit.h>
> -+	    #include <nspr4/prinit.h>
> -             #if PR_VMAJOR >= 4
> -                yes
> -             #endif
> -@@ -715,7 +715,7 @@ if test "z$NSS_FOUND" = "zno" ; then
> -     NSS_NSS_H=""
> - 
> -     if test "z$with_nss" != "z" ; then
> --	NSS_CFLAGS="$NSS_CFLAGS -I$with_nss/include -I$with_nss/include/nss"
> -+	NSS_CFLAGS="$NSS_CFLAGS -I$with_nss/usr/include -I$with_nss/usr/include/nss3 -I$with_nspr/usr/include/nspr4"
> - 	if test "z$with_gnu_ld" = "zyes" ; then
> - 	    NSS_LIBS="$NSS_LIBS -Wl,-rpath-link -Wl,$with_nss/lib -L$with_nss/lib $NSS_LIBS_LIST"
> -         else
> -@@ -723,7 +723,7 @@ if test "z$NSS_FOUND" = "zno" ; then
> -         fi
> - 	NSS_INCLUDES_FOUND="yes"
> - 	NSS_LIBS_FOUND="yes"
> --	NSS_NSS_H="$with_nss/include/nss.h"
> -+	NSS_NSS_H="$with_nss/usr/include/nss3/nss.h"
> +-        AC_MSG_ERROR([not found: "$with_nspr/include/$NSPR_INCLUDE_MARKER" and/or "$with_nspr/lib/$NSPR_LIB_MARKER" files don't exist), typo?])
> ++        AC_MSG_ERROR([not found: "$with_nspr/usr/include/$NSPR_INCLUDE_MARKER" and/or "$with_nspr/${libdir}/$NSPR_LIB_MARKER" files don't exist), typo?])
> +     fi
> + fi
> + if test "z$NSS_FOUND" = "zno" -a "z$with_nss" != "z" -a "z$with_nss" != "zyes" ; then
> +     AC_MSG_CHECKING(for nss library installation in "$with_nss" folder)
> +-    if test -f "$with_nss/include/$NSS_INCLUDE_MARKER" -a -f "$with_nss/lib/$NSS_LIB_MARKER" ; then
> +-        NSS_INCLUDE_PATH="$with_nss/include"
> +-        NSS_LIB_PATH="$with_nss/lib"
> ++    if test -f "$with_nss/usr/include/$NSS_INCLUDE_MARKER" -a -f "$with_nss/${libdir}/$NSS_LIB_MARKER" ; then
> ++        NSS_INCLUDE_PATH="$with_nss/usr/include/nss3"
> ++        NSS_LIB_PATH="$with_nss/${libdir}"
> +         NSS_FOUND="yes"
> +         AC_MSG_RESULT([yes])
>       else
> - 	for dir in $ac_nss_inc_dir ; do
> - 	    if test -f $dir/nss/nss.h ; then
> -@@ -761,7 +761,7 @@ if test "z$NSS_FOUND" = "zno" ; then
> -        OLD_CPPFLAGS=$CPPFLAGS
> -        CPPFLAGS="$NSPR_CFLAGS $NSS_CFLAGS"
> -        AC_EGREP_CPP(yes,[
> --          #include <nss.h>
> -+	  #include <nss3/nss.h>
> -           #if NSS_VMAJOR >= 3 && NSS_VMINOR >= 2
> -              yes
> -           #endif
> +-        AC_MSG_ERROR([not found: "$with_nss/include/$NSS_INCLUDE_MARKER" and/or "$with_nss/lib/$NSS_LIB_MARKER" files don't exist), typo?])
> ++        AC_MSG_ERROR([not found: "$with_nss/usr/include/$NSS_INCLUDE_MARKER" and/or "$with_nss/${libdir}/$NSS_LIB_MARKER" files don't exist), typo?])
> +     fi
> + fi
> + 
> +-- 
> +2.7.4
> +
> diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
> deleted file mode 100644
> index 5f967bb..0000000
> --- a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -From 1d8ae4b32bd76c19ec238f30eb9b1ee582cbe990 Mon Sep 17 00:00:00 2001
> -From: Jackie Huang <jackie.huang@windriver.com>
> -Date: Fri, 2 Mar 2018 01:10:58 -0800
> -Subject: [PATCH] xmlsec1: fix a typo in examples/verify3.c
> -
> -Upstream-Status: Submitted [https://github.com/lsh123/xmlsec/pull/153]
> -
> -Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> -
> ----
> - examples/verify3.c | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/examples/verify3.c b/examples/verify3.c
> -index 2d26ae7..68f52ab 100644
> ---- a/examples/verify3.c
> -+++ b/examples/verify3.c
> -@@ -1,4 +1,4 @@
> --4/** 
> -+/**
> -  * XML Security Library example: Verifying a file signed with X509 certificate
> -  *
> -  * Verifies a file signed with X509 certificate. 
> diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
> similarity index 89%
> rename from recipes-security/xmlsec1/xmlsec1_1.2.25.bb
> rename to recipes-security/xmlsec1/xmlsec1_1.2.26.bb
> index 341ca08..2dbbf33 100644
> --- a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
> +++ b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
> @@ -17,12 +17,11 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
>      file://change-finding-path-of-nss.patch \
>      file://makefile-ptest.patch \
>      file://xmlsec1-examples-allow-build-in-separate-dir.patch \
> -    file://xmlsec1-fix-a-typo-in-examples-verify3.c.patch \
>      file://run-ptest \
>      "
>  
> -SRC_URI[md5sum] = "dbbef1efc69e61bc4629650205a05b41"
> -SRC_URI[sha256sum] = "967ca83edf25ccb5b48a3c4a09ad3405a63365576503bf34290a42de1b92fcd2"
> +SRC_URI[md5sum] = "9c4aaf9ff615a73921b9e3bf4988d878"
> +SRC_URI[sha256sum] = "8d8276c9c720ca42a3b0023df8b7ae41a2d6c5f9aa8d20ed1672d84cc8982d50"
>  
>  inherit autotools-brokensep ptest pkgconfig
>  


