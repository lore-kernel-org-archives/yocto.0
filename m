Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1941.1578305978568020163
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2020 02:19:38 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC91E0145B; Mon,  6 Jan 2020 02:19:38 -0800 (PST)
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
	*      [209.85.221.41 listed in list.dnswl.org]
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3B3EE01456
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2020 02:19:36 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id c14so48991192wrn.7
        for <yocto@yoctoproject.org>; Mon, 06 Jan 2020 02:19:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VefZZdZlIZRD03KRCwPvBCzLDa++lQS8zijgdNmuNTo=;
        b=f9waX3YHI02ila0LC0GDckDtoxkQZos58bJCXOo6xkWWW3MzwBagxxQ1U9vXh7wI7J
         8f8LzoTsTx1oN427kHAe674oSYdL9fDhFH3gAxh9idZV4zldFJhlg2Tsdn4drOSuZFDu
         CtuSKGF7kX3EnE03AFIaKZNJt2N8t5dRe7Xfb40kVkLHytw+gCi7/QYWuUQHQyvd6a6s
         Dmy7omyVloZKR5bKAqAJJCFn+4OkBXx3cS/zs7EnS7Cn/14f5E8UGsfgjL4d+wdvWWAB
         tnS7Uro5YfnqdSShtX5ITLp5zmfQbzSmoZ0y4j8JtBk0Hd2KJDJ71RMhgBNfpJfo0Nyt
         aNZQ==
X-Gm-Message-State: APjAAAWzfvIO5Tses189VuO3ovyVgZPzruRltoCz5F8AnEMe4EKDtp/C
	YdwVfV0UhhxkhMWOsHcZZHa6OUhM
X-Google-Smtp-Source: APXvYqxESpDGVRUcjApameFB6fjKTVXgC3afjhPBbG99opm6DF3l4DjSaJEwF5P1MFmR05SvJienAg==
X-Received: by 2002:adf:fc03:: with SMTP id i3mr104805278wrr.306.1578305975692;
        Mon, 06 Jan 2020 02:19:35 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id t1sm22632540wma.43.2020.01.06.02.19.34
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 02:19:35 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH] grep: fix builds with gettext 0.20.x (musl)
Date: Mon,  6 Jan 2020 10:19:34 +0000
Message-Id: <20200106101934.36110-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Update patch to also AC_CHECK_FUNCS([setlocale]).
Various #include <locale.h> are guarded by the outcome of that,
and otherwise compilation fails, e.g.:
| ../../grep-2.5.1a/src/dfa.c:1366:34: error: 'LC_COLLATE' undeclared (fi=
rst use in this function); did you mean 'REG_ECOLLATE'?
|  1366 |   hard_LC_COLLATE =3D hard_locale (LC_COLLATE);
|       |                                  ^~~~~~~~~~
|       |                                  REG_ECOLLATE

It appears that this test used to be triggered by (implied with)
the old gettext version, but now it isn't.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
---
 .../0001-Fix-builds-with-gettext-0.20.patch   | 35 ++++++++++++++++---
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gette=
xt-0.20.patch b/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-ge=
ttext-0.20.patch
index a8042eb..ee9a6b1 100644
--- a/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20=
.patch
+++ b/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20=
.patch
@@ -1,14 +1,27 @@
-From e11be23d694c8bd4e62252874d163d06b6de3117 Mon Sep 17 00:00:00 2001
+From cd814b2203a1b5e71eaf97c3b9efedc94b680a19 Mon Sep 17 00:00:00 2001
 From: Alexander Kanavin <alex.kanavin@gmail.com>
 Date: Tue, 17 Dec 2019 16:46:05 +0100
 Subject: [PATCH] Fix builds with gettext 0.20
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+Andr=C3=A9:
+Updated patch to also AC_CHECK_FUNCS([setlocale]).
+Various #include <locale.h> are guarded by the outcome of that,
+and otherwise compilation fails, e.g.:
+| ../../grep-2.5.1a/src/dfa.c:1366:34: error: 'LC_COLLATE' undeclared (f=
irst use in this function); did you mean 'REG_ECOLLATE'?
+|  1366 |   hard_LC_COLLATE =3D hard_locale (LC_COLLATE);
+|       |                                  ^~~~~~~~~~
+|       |                                  REG_ECOLLATE
=20
 Upstream-Status: Inappropriate [fixing an old version]
 Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
 ---
  Makefile.am  | 2 +-
- configure.in | 2 +-
- 2 files changed, 2 insertions(+), 2 deletions(-)
+ configure.in | 4 +++-
+ 2 files changed, 4 insertions(+), 2 deletions(-)
=20
 diff --git a/Makefile.am b/Makefile.am
 index e4b58c4..a851b9d 100644
@@ -24,10 +37,19 @@ index e4b58c4..a851b9d 100644
  EXTRA_DIST =3D TODO README README-alpha PATCHES.AC PATCHES.AM
 =20
 diff --git a/configure.in b/configure.in
-index 2fa6c71..c042a10 100644
+index 2fa6c71..e1e04ea 100644
 --- a/configure.in
 +++ b/configure.in
-@@ -70,7 +70,7 @@ esac
+@@ -48,6 +48,8 @@ AC_FUNC_ALLOCA
+ AC_FUNC_CLOSEDIR_VOID
+ AC_FUNC_MMAP
+=20
++AC_CHECK_FUNCS([setlocale])
++
+ dnl getpagesize is checked for by AC_FUNC_MMAP.
+ AC_CHECK_FUNCS(btowc isascii memmove setmode strerror wctype mbrtowc)
+ AC_REPLACE_FUNCS(memchr stpcpy strtoul atexit fnmatch)
+@@ -70,7 +72,7 @@ esac
 =20
  dnl I18N feature
  ALL_LINGUAS=3D"cs de el eo es et fr gl hr id it ja ko nl no pl pt_BR ru=
 sl sv"
@@ -36,3 +58,6 @@ index 2fa6c71..c042a10 100644
 =20
  dnl DOS file name convention
  dnl sets HAVE_DOS_FILE_NAMES
+--=20
+2.23.0.rc1
+
--=20
2.23.0.rc1

