Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10090.1578500163426128804
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 08:16:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBA3CE014C5; Wed,  8 Jan 2020 08:16:02 -0800 (PST)
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
	*      [209.85.128.65 listed in list.dnswl.org]
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC7CCE01148
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 08:16:01 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id d73so3119743wmd.1
        for <yocto@yoctoproject.org>; Wed, 08 Jan 2020 08:16:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gExKa5+Z65QftMUMlxvUuKBU77VTCM+ZX6dvCSgK4T8=;
        b=K18lJKMdTcsMKYIfJzUV5AG6EN/TJmjSfL3pKVP7lq0WCE9m/tBv0AazhXkaXwP29w
         MtR7ED4ZOzxAFkYk6gJVMPga8v8oSA8doZl2qRkVKsv1OmxatCkEyqGCTPqotxiW3i9j
         hQd16/9LKTJR2fPMYe7gLisAOCQUM9Qi8dGEVkGUWY0TV0F9+vTExhaMF6ZyHFKFscS4
         sUXjvp7kb4QaiLTvilYfGyaIiEt9dtJoajPcUYPGWBeijs0xoTVBbBxzEDvoVATe256z
         G5w1VU6TP8KAoZ2Cn9FdXh2gL4x5NfEuOFYh58NS+ZZ3I17z4skfZS9/bJROutidnIWh
         DJhg==
X-Gm-Message-State: APjAAAXNjOfGNnsNrEm2dz/afwVXbij1/iqi+FixGsqW8cd1vjhpZVyo
	Ct+O896icbgOydV5MhjDz+Hvu1nj
X-Google-Smtp-Source: APXvYqz4Da5RFaFrilxumowWTzTABlgAVUPYlF0oRoumD+HqU+VhOkn2Feo1qBMhfsnXmgbWdAwh0g==
X-Received: by 2002:a1c:e289:: with SMTP id z131mr4527942wmg.18.1578500160676;
        Wed, 08 Jan 2020 08:16:00 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id v17sm4557818wrt.91.2020.01.08.08.15.59
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 08:15:59 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH 2/2 v2] diffutils: musl has working malloc() and realloc()
Date: Wed,  8 Jan 2020 16:15:58 +0000
Message-Id: <20200108161558.40180-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <15E7F1D320E9D777.2841@lists.yoctoproject.org>
References: <15E7F1D320E9D777.2841@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

diffutils tries to run a test program to determine if
malloc() and realloc() work, i.e. whether they fail if
given 0 for size. running a test program doesn't work
when cross-compiling, so it defaults to assuming non-
working malloc() / realloc()

Given they work correctly in musl, we can specify the
test-result, and avoid having to use diffutil's
replacement functions.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>

---
v2:
* switch to CACHED_CONFIGUREVARS instead of EXTRA_OECONF
---
 recipes-extended/diffutils/diffutils_2.8.1.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-exte=
nded/diffutils/diffutils_2.8.1.bb
index 4aad28f..680911b 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -16,6 +16,11 @@ SRC_URI =3D "${GNU_MIRROR}/diffutils/diffutils-${PV}.t=
ar.gz \
 SRC_URI[md5sum] =3D "71f9c5ae19b60608f6c7f162da86a428"
 SRC_URI[sha256sum] =3D "c5001748b069224dd98bf1bb9ee877321c7de8b332c8aad5=
af3e2a7372d23f5a"
=20
+CACHED_CONFIGUREVARS_libc-musl =3D "\
+    jm_cv_func_working_malloc=3Dyes \
+    jm_cv_func_working_realloc=3Dyes \
+"
+
 do_configure_prepend () {
 	chmod u+w ${S}/po/Makefile.in.in
 }
--=20
2.23.0.rc1

