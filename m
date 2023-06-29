Return-Path: <ml@calgera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FB50EB64DD
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 14:32:06 +0000 (UTC)
Received: from t4v1.calgera.eu (t4v1.calgera.eu [80.208.226.141])
 by mx.groups.io with SMTP id smtpd.web11.9780.1688049122343384387
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 07:32:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@calgera.com header.s=mail header.b=HDjKRZSM;
 spf=pass (domain: calgera.com, ip: 80.208.226.141, mailfrom: renato@calgera.com)
Received: (nullmailer pid 352885 invoked by uid 1000);
	Thu, 29 Jun 2023 14:31:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=calgera.com; s=mail;
	t=1688049120; bh=udkJKZOJoE7zSM+y7EOeISVELaThJFGJ/UC53pJCdCE=;
	h=From:To:Cc:Subject:Date:From;
	b=HDjKRZSM0dzDvQALLAkkGJQjybrThsOPHdPVpB6+wkivO2WeRFBj+hepsE8ZityN2
	 HI5qbRIwkw6I7nt+hG1rTzKyTqp+NltKv7HuF1mPbUg9eFQd9TFV9tF19ZgORr4t31
	 CiOcwaUZEpyXlx82Jih7PbtIGk/EMV52VxPV8zX6NzfmGljEnfeSg3C+HSQQIqO6Lq
	 sNgHxdpF7oE7nBID2tmeX+gR6YMtai4ys/kwWcb3mHShLgokXvpxcuvL/moinhqTEp
	 On/BCzK48kHS/Bnc7G/vlbOy+SJhUgMVZoidhC/OmEmV5R6YYD86VWiMrr39SWupKm
	 dtWp+ShtBlqHA==
From: Renato Caldas <ml@calgera.com>
To: yocto@lists.yoctoproject.org
Cc: Renato Caldas <renato@calgera.com>
Subject: [meta-selinux][PATCH] libselinux: fix compilation with musl
Date: Thu, 29 Jun 2023 15:31:47 +0100
Message-ID: <20230629143147.352870-1-ml@calgera.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 14:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60477

From: Renato Caldas <renato@calgera.com>

Signed-off-by: Renato Caldas <renato@calgera.com>
---
 ...re-drop-the-obsolete-LSF-transitiona.patch | 39 +++++++++++++++++++
 recipes-security/selinux/libselinux_3.5.bb    |  5 +++
 2 files changed, 44 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0003-libselinux-r=
estore-drop-the-obsolete-LSF-transitiona.patch

diff --git a/recipes-security/selinux/libselinux/0003-libselinux-restore-=
drop-the-obsolete-LSF-transitiona.patch b/recipes-security/selinux/libsel=
inux/0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch
new file mode 100644
index 0000000..5b37395
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0003-libselinux-restore-drop-th=
e-obsolete-LSF-transitiona.patch
@@ -0,0 +1,39 @@
+From a822176c6f181d1e6989900dfc58bbdab6d9065a Mon Sep 17 00:00:00 2001
+From: Renato Caldas <renato@calgera.com>
+Date: Thu, 29 Jun 2023 13:59:11 +0100
+Subject: [PATCH] libselinux: restore: drop the obsolete LSF transitional=
 API.
+
+The preferred way to enable LSF support on 32 bit systems is to define
+_FILE_OFFSET_BITS=3D64 when building selinux.
+
+Upstream-Status: Submitted [https://github.com/SELinuxProject/selinux/pu=
ll/401]
+
+Signed-off-by: Renato Caldas <renato@calgera.com>
+---
+ libselinux/src/selinux_restorecon.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/libselinux/src/selinux_restorecon.c b/libselinux/src/selinu=
x_restorecon.c
+index 7ef2d45d..2ff920b0 100644
+--- a/src/selinux_restorecon.c
++++ b/src/selinux_restorecon.c
+@@ -437,7 +437,7 @@ static int filespec_add(ino_t ino, const char *con, =
const char *file,
+ 	file_spec_t *prevfl, *fl;
+ 	uint32_t h;
+ 	int ret;
+-	struct stat64 sb;
++	struct stat sb;
+
+ 	__pthread_mutex_lock(&fl_mutex);
+
+@@ -451,7 +451,7 @@ static int filespec_add(ino_t ino, const char *con, =
const char *file,
+ 	for (prevfl =3D &fl_head[h], fl =3D fl_head[h].next; fl;
+ 	     prevfl =3D fl, fl =3D fl->next) {
+ 		if (ino =3D=3D fl->ino) {
+-			ret =3D lstat64(fl->file, &sb);
++			ret =3D lstat(fl->file, &sb);
+ 			if (ret < 0 || sb.st_ino !=3D ino) {
+ 				freecon(fl->con);
+ 				free(fl->file);
+--
+2.41.0
diff --git a/recipes-security/selinux/libselinux_3.5.bb b/recipes-securit=
y/selinux/libselinux_3.5.bb
index 8009d6d..37383eb 100644
--- a/recipes-security/selinux/libselinux_3.5.bb
+++ b/recipes-security/selinux/libselinux_3.5.bb
@@ -10,6 +10,11 @@ require selinux_common.inc
=20
 inherit lib_package pkgconfig
=20
+FILESEXTRAPATHS:prepend :=3D "${THISDIR}/libselinux:"
+SRC_URI +=3D "\
+        file://0003-libselinux-restore-drop-the-obsolete-LSF-transitiona=
.patch \
+        "
+
 DEPENDS =3D "libsepol libpcre2"
 DEPENDS:append:libc-musl =3D " fts"
=20
--=20
2.41.0


