Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2727.1578517621499976343
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 13:07:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2630DE014C8; Wed,  8 Jan 2020 13:07:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14987E01405
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 13:06:59 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id z7so4892014wrl.13
        for <yocto@yoctoproject.org>; Wed, 08 Jan 2020 13:06:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MiLJiYSdd04A8ZCOMRXnMMcwJ542zUw3qRyEltYgbLw=;
        b=pZYXUsyVWDBDE1En4bppSviv6PVCUBMv3wWW+kTWTsf9b/sjozYpv4jXv8lcHHG+x2
         9B0bivT6REF4B8nsHjbhgQZ0komdFoOTB5+i9Dbdh7iPH8PA7ipv3wVNpQHFMpSjzrbi
         KBaYmhhCyiVsUW7vj4Ok9DJCpDYTqk9uUWquB0H9nQYI66L3YG+z04MsF9PPTxABJ8nx
         NhILTndj59nsMnvYVHtrAaodKdfnpZr/0JlS8FxhSb9rZWofiq2nint/5O8q4PRO6Ob1
         BzFbAfTeC7xBXkHheUcbQcumlVHkjZ4y5MfaWX0hCxsYVgrwJQLdz/YJzgQnrqDsoYCg
         2DlA==
X-Gm-Message-State: APjAAAWFadSZtZ/Gkg0Wwywa2eeiL3kShFmN/2wQoTH4JH6m82IKwucs
	fZuhqjVL6BUxiPAaupg5yub3VY3L
X-Google-Smtp-Source: APXvYqwZzuDdmVAd8tyVPFGYdWxLb6Lcn14Cend51inXo+1GCkDBD5qciwWiVKlxaWDKZ/wQt5AbHQ==
X-Received: by 2002:adf:e6c6:: with SMTP id y6mr6836912wrm.284.1578517618905;
        Wed, 08 Jan 2020 13:06:58 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id r68sm347399wmr.43.2020.01.08.13.06.57
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 13:06:58 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH 2/2 v3] diffutils: use malloc() and realloc() from libc as-is
Date: Wed,  8 Jan 2020 21:06:57 +0000
Message-Id: <20200108210657.22975-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <15E7F58933AE7ECD.24134@lists.yoctoproject.org>
References: <15E7F58933AE7ECD.24134@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From: Andre' Draszik <git@andred.net>

diffutils' version of autoconf tries to run a test
program to determine if malloc() and realloc() behave
like in glibc, i.e. returning non-NULL when given 0 as
size. Running a test program doesn't work when cross-
compiling, so it defaults to assuming different
behaviour and compiles wrappers around malloc() &
realloc().

Given they behave the same in musl (these days), and
given uClibc isn't supported anymore, we can specify
the test-result, and avoid having to use diffutil's
replacement functions.

jm_cv_func_working_malloc and jm_cv_func_working_realloc
are similar to ac_cv_func_malloc_0_nonnull and
ac_cv_func_realloc_0_nonnull, which oe-core sets in
the site configuration in meta/site/, except that the
former two are the flags for the older version of
autoconf used by this package.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>

---
v3:
* update commit message
* don't make this musl specific

v2:
* switch to CACHED_CONFIGUREVARS instead of EXTRA_OECONF
---
 recipes-extended/diffutils/diffutils_2.8.1.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-exte=
nded/diffutils/diffutils_2.8.1.bb
index 4aad28f..7c43c4b 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -16,6 +16,11 @@ SRC_URI =3D "${GNU_MIRROR}/diffutils/diffutils-${PV}.t=
ar.gz \
 SRC_URI[md5sum] =3D "71f9c5ae19b60608f6c7f162da86a428"
 SRC_URI[sha256sum] =3D "c5001748b069224dd98bf1bb9ee877321c7de8b332c8aad5=
af3e2a7372d23f5a"
=20
+CACHED_CONFIGUREVARS =3D "\
+    jm_cv_func_working_malloc=3Dyes \
+    jm_cv_func_working_realloc=3Dyes \
+"
+
 do_configure_prepend () {
 	chmod u+w ${S}/po/Makefile.in.in
 }
--=20
2.23.0.rc1

