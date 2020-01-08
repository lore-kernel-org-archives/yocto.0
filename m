Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9158.1578496082770251326
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 07:08:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65F03E0140D; Wed,  8 Jan 2020 07:08:02 -0800 (PST)
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
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14688E0049C
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 07:08:01 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id d16so3707330wre.10
        for <yocto@yoctoproject.org>; Wed, 08 Jan 2020 07:08:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gUr4U2QBtkD0nq4koeo55dDi0guFlHnGO+1owHMFRmE=;
        b=qUQB8kq8r/OUQR20kR82ZT4+mJldN5LyfbfEP91cxjKRaD2Wry23wvhAktIjQAp/qP
         pVJn+9W31sUMfLBYCiEmiR57lC7EQlO8L+YcwvApIsp71a0TlLwR9k8hM3gLrBZlcLyj
         sJ8By2+kocwQKin/rJCeApreYebIB4Wsp0KETgQx/MMgjKJFnullldbZ92Z6rbVVNy08
         h/2iyVCq9t3vmb18GrbxQ66FP+Fk2/2aQip5jJ1XKg6TiNe4UYtAcXjjZ3NS5KXQM0vM
         qUWZl621s9Cm2JkQCXyYT4psBaSxG5h6GcFC6RyKo7X5CipOBxePFBSU/dAFVzTBv8VM
         2saA==
X-Gm-Message-State: APjAAAX0qZ+EdTn7+dT7fSAeaIpQpmMX02D/CRJHa59hw5WrPe8WHAUA
	XgDov5WvAoRVQCXE4IE/aJSvjhf5
X-Google-Smtp-Source: APXvYqwhCKGgnrjiG+8QJ2VCNqfkG30CWfGGD50kOYafXO4H7CHqxecM1Cya5JecU+8mF1B30w0T/g==
X-Received: by 2002:a5d:4d4a:: with SMTP id a10mr5184071wru.220.1578496079831;
        Wed, 08 Jan 2020 07:07:59 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id a184sm4266907wmf.29.2020.01.08.07.07.59
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 07:07:59 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH 1/2] diffutils: fix build with 64bit time_t on 32bit arches
Date: Wed,  8 Jan 2020 15:07:57 +0000
Message-Id: <20200108150758.13856-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

See included patch.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
---
 ...ilation-with-64bit-time_t-on-32bit-a.patch | 46 +++++++++++++++++++
 recipes-extended/diffutils/diffutils_2.8.1.bb |  1 +
 2 files changed, 47 insertions(+)
 create mode 100644 recipes-extended/diffutils/diffutils-2.8.1/0003-conte=
xt-fix-compilation-with-64bit-time_t-on-32bit-a.patch

diff --git a/recipes-extended/diffutils/diffutils-2.8.1/0003-context-fix-=
compilation-with-64bit-time_t-on-32bit-a.patch b/recipes-extended/diffuti=
ls/diffutils-2.8.1/0003-context-fix-compilation-with-64bit-time_t-on-32bi=
t-a.patch
new file mode 100644
index 0000000..a8fcde0
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils-2.8.1/0003-context-fix-compila=
tion-with-64bit-time_t-on-32bit-a.patch
@@ -0,0 +1,46 @@
+From 07c75310fecbaec62a24a3ee98b4209e1bf9ff62 Mon Sep 17 00:00:00 2001
+From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
+Date: Mon, 6 Jan 2020 13:31:50 +0000
+Subject: [PATCH] context: fix compilation with 64bit time_t on 32bit arc=
hes
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+In file included from ../../diffutils-2.8.1/src/diff.h:23,
+                 from ../../diffutils-2.8.1/src/context.c:23:
+../../diffutils-2.8.1/src/context.c: In function 'print_context_label':
+../../diffutils-2.8.1/src/system.h:41:52: error: size of array 'a' is ne=
gative
+   41 | #define verify(name, assertion) struct name { char a[(assertion)=
 ? 1 : -1]; }
+      |                                                    ^
+../../diffutils-2.8.1/src/context.c:65:4: note: in expansion of macro 'v=
erify'
+   65 |    verify (info_preserved, sizeof inf->stat.st_mtime <=3D sizeof=
 sec);
+      |    ^~~~~~
+
+struct stat::st_mtime is a time_t and will not fit into a
+long (when 64bit time_t has been requested on a 32bit machine).
+
+Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
+Upstream-Status: Inappropriate [fixing an old version]
+---
+ src/context.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/src/context.c b/src/context.c
+index 18d7023..d41efde 100644
+--- a/src/context.c
++++ b/src/context.c
+@@ -61,9 +61,9 @@ print_context_label (char const *mark,
+       int nsec =3D TIMESPEC_NS (inf->stat.st_mtim);
+       if (! (tm && nstrftime (buf, sizeof buf, time_format, tm, 0, nsec=
)))
+ 	{
+-	  long sec =3D inf->stat.st_mtime;
++	  time_t sec =3D inf->stat.st_mtime;
+ 	  verify (info_preserved, sizeof inf->stat.st_mtime <=3D sizeof sec);
+-	  sprintf (buf, "%ld.%.9d", sec, nsec);
++	  sprintf (buf, "%lld.%.9d", (long long) sec, nsec);
+ 	}
+       fprintf (outfile, "%s %s\t%s\n", mark, inf->name, buf);
+     }
+--=20
+2.23.0.rc1
+
diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-exte=
nded/diffutils/diffutils_2.8.1.bb
index 5a71c94..4aad28f 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -10,6 +10,7 @@ SRC_URI =3D "${GNU_MIRROR}/diffutils/diffutils-${PV}.ta=
r.gz \
            file://fix_gcc6.patch \
            file://0001-Make-it-build-with-compile-time-hardening-enabled=
.patch \
            file://0002-included-libc-use-mempcpy-instead-of.patch \
+           file://0003-context-fix-compilation-with-64bit-time_t-on-32bi=
t-a.patch \
            "
=20
 SRC_URI[md5sum] =3D "71f9c5ae19b60608f6c7f162da86a428"
--=20
2.23.0.rc1

