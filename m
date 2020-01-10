Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13137.1578676545955123869
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jan 2020 09:15:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58EB7E01506; Fri, 10 Jan 2020 09:15:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB62CE00D33
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2020 09:15:43 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id p9so2824348wmc.2
        for <yocto@yoctoproject.org>; Fri, 10 Jan 2020 09:15:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w3l6/PG4Gbi19pandsuOHNTavm7sVCi6UUp1eM2o4cc=;
        b=U98qzuIj+Ldr5wWEERovHQe+7feF/M73yHpyc+wNfJQzwDF97hEqrFclSA97zCaISt
         9HYGGqNSYOLGtoh1yafLhHQqilv0vv/65pxUEkqazlqmrQXyiHwxbcp5lVzthv1H+S/E
         gDcujF6w9szEegeckLvX+6dkaZ6rJBEkcopT90Rq7mcofbzdZiH4P+EcIyn31T9uDuxu
         rJwpKJ+DUpVE7nyLOMjVxec7XFImH4tFpXCxj+QJh/RYOLwTy2xvBQ0NGsb2L6vPk27e
         QwuZtyIk2/Mvnh+/OUurIxTm/TD2Id8gFnCTqCzixUhCEnwgaYvP+fjt4bQfKEFtp6c7
         U2qA==
X-Gm-Message-State: APjAAAUnbG2FUGYTqeBBSoVJlXvhzFM5T+qVbkmH2RULUnEtJwsoK0Mz
	hQFeULSieXMuu8tUaHWCsPz0Olqa
X-Google-Smtp-Source: APXvYqwlAZF280tgG5r7NRMNAd28fr8uKB8HKcUzYa2Odug1AoQkdAAaPlYfhVHKZh68V4XTUSzVVQ==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr5365039wmc.36.1578676542673;
        Fri, 10 Jan 2020 09:15:42 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id l3sm2674451wrt.29.2020.01.10.09.15.41
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2020 09:15:42 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH 1/2] coreutils: fix build with 64bit time_t on 32bit arches
Date: Fri, 10 Jan 2020 17:15:40 +0000
Message-Id: <20200110171541.31341-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From: Andr=C3=A9 Draszik <git@andred.net>

| ../../coreutils-6.9/lib/mktime.c: In function 'ydhms_diff':
| ../../coreutils-6.9/lib/mktime.c:105:52: error: size of array 'a' is ne=
gative
|   105 | #define verify(name, assertion) struct name { char a[(assertion=
) ? 1 : -1]; }
|       |                                                    ^
| ../../coreutils-6.9/lib/mktime.c:168:3: note: in expansion of macro 've=
rify'
|   168 |   verify (long_int_year_and_yday_are_wide_enough,
|       |   ^~~~~~

coreutils tries to determine of mktime() from the c-library
works fine, but when cross-compiling, it unconditionally
assumes buggy behaviour, in which case it will use its own
replacement implementation. These basically are tests for
(g)libc implementation bugs that have existed in ancient
times but aren't relevant anymore.

The alternative implementation makes various assumptions which
don't hold true (and doesn't compile anymore). While more recent
versions of coreutils have fixed those assumptions, it's quite
hard to update the code here without potential licensing issues.

Given mktime() works fine in musl and glibc these days, we can
work-around the issues by simply relying on the c-libraries
mktime() implementation, avoiding all problems with coreutils'
alternative implementation.

I've veryfied this by running the tests both on my musl target,
and my glibc (v2.29) host.

This also reduces code-size slightly.

The ac_cv_func_working_mktime variable here corresponds to the
gl_cv_func_working_mktime variable in more recent versions of
coreutils (gnulib), which is being set in oe-core in meta/site.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
---
 recipes-core/coreutils/coreutils_6.9.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreu=
tils/coreutils_6.9.bb
index 080100d..f6017ec 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -33,7 +33,9 @@ SRC_URI[md5sum] =3D "c9607d8495f16e98906e7ed2d9751a06"
 SRC_URI[sha256sum] =3D "89c2895ad157de50e53298b22d91db116ee4e1dd3fdf4019=
260254e2e31497b0"
=20
 EXTRA_OECONF +=3D "ac_cv_func_getgroups_works=3Dyes \
-                 ac_cv_func_strcoll_works=3Dyes"
+                 ac_cv_func_strcoll_works=3Dyes \
+                 ac_cv_func_working_mktime=3Dyes \
+                 "
=20
 # acl is not a default feature
 #
--=20
2.23.0.rc1

