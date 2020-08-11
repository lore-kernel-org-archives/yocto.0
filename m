Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.6839.1597111607472217919
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Aug 2020 19:06:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: hongxu.jia@windriver.com)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 07B26kYi010286
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Mon, 10 Aug 2020 19:06:46 -0700 (PDT)
Received: from ala-lpggp7.wrs.com (147.11.105.171) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.487.0; Mon, 10 Aug 2020
 19:06:26 -0700
From: "hongxu" <hongxu.jia@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] sssd: Avoid nss function conflicts with glibc nss.h
Date: Mon, 10 Aug 2020 19:06:26 -0700
Message-ID: <20200811020626.7547-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 07B26kYi010286
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

glibc 2.32 will define these varibles [1] which results in conflicts
with these static function names, backport a fix from upstream

[1] https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D499a92df8b9f=
c64a054cf3b7f728f8967fc1da7d

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...s-Collision-with-external-nss-symbol.patch | 77 +++++++++++++++++++
 recipes-security/sssd/sssd_1.16.4.bb          |  1 +
 2 files changed, 78 insertions(+)
 create mode 100644 recipes-security/sssd/files/0001-nss-Collision-with-e=
xternal-nss-symbol.patch

diff --git a/recipes-security/sssd/files/0001-nss-Collision-with-external=
-nss-symbol.patch b/recipes-security/sssd/files/0001-nss-Collision-with-e=
xternal-nss-symbol.patch
new file mode 100644
index 0000000..9c2bbec
--- /dev/null
+++ b/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-sy=
mbol.patch
@@ -0,0 +1,77 @@
+From a069e4186a3cb482226005d4bc73c6fb3dd35c79 Mon Sep 17 00:00:00 2001
+From: =3D?UTF-8?q?Michal=3D20=3DC5=3DBDidek?=3D <mzidek@redhat.com>
+Date: Thu, 27 Feb 2020 06:50:40 +0100
+Subject: [PATCH] nss: Collision with external nss symbol
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+One of our internal static function names started
+to collide with external nss symbol. Additional
+sss_ suffix was added to avoid the collision.
+
+This is needed to unblock Fedora Rawhide's
+SSSD build.
+
+Reviewed-by: Pavel B=C5=99ezina <pbrezina@redhat.com>
+
+Upstream-Status: Backport [https://github.com/SSSD/sssd.git]
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ src/responder/nss/nss_cmd.c | 18 ++++++++++--------
+ 1 file changed, 10 insertions(+), 8 deletions(-)
+
+diff --git a/src/responder/nss/nss_cmd.c b/src/responder/nss/nss_cmd.c
+index 25e663e..a4d4cfc 100644
+--- a/src/responder/nss/nss_cmd.c
++++ b/src/responder/nss/nss_cmd.c
+@@ -728,11 +728,13 @@ done:
+     talloc_free(cmd_ctx);
+ }
+=20
+-static void nss_setnetgrent_done(struct tevent_req *subreq);
++static void sss_nss_setnetgrent_done(struct tevent_req *subreq);
+=20
+-static errno_t nss_setnetgrent(struct cli_ctx *cli_ctx,
+-                               enum cache_req_type type,
+-                               nss_protocol_fill_packet_fn fill_fn)
++/* This function's name started to collide with external nss symbol,
++ * so it has additional sss_* prefix unlike other functions here. */
++static errno_t sss_nss_setnetgrent(struct cli_ctx *cli_ctx,
++                                   enum cache_req_type type,
++                                   nss_protocol_fill_packet_fn fill_fn)
+ {
+     struct nss_ctx *nss_ctx;
+     struct nss_state_ctx *state_ctx;
+@@ -774,7 +776,7 @@ static errno_t nss_setnetgrent(struct cli_ctx *cli_c=
tx,
+         goto done;
+     }
+=20
+-    tevent_req_set_callback(subreq, nss_setnetgrent_done, cmd_ctx);
++    tevent_req_set_callback(subreq, sss_nss_setnetgrent_done, cmd_ctx);
+=20
+     ret =3D EOK;
+=20
+@@ -787,7 +789,7 @@ done:
+     return EOK;
+ }
+=20
+-static void nss_setnetgrent_done(struct tevent_req *subreq)
++static void sss_nss_setnetgrent_done(struct tevent_req *subreq)
+ {
+     struct nss_cmd_ctx *cmd_ctx;
+     errno_t ret;
+@@ -1037,8 +1039,8 @@ static errno_t nss_cmd_initgroups_ex(struct cli_ct=
x *cli_ctx)
+=20
+ static errno_t nss_cmd_setnetgrent(struct cli_ctx *cli_ctx)
+ {
+-    return nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
+-                           nss_protocol_fill_setnetgrent);
++    return sss_nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
++                               nss_protocol_fill_setnetgrent);
+ }
+=20
+ static errno_t nss_cmd_getnetgrent(struct cli_ctx *cli_ctx)
+--=20
+2.21.0
+
diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd=
/sssd_1.16.4.bb
index 2c3c803..d66c027 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -17,6 +17,7 @@ SRC_URI =3D "https://releases.pagure.org/SSSD/${BPN}/${=
BP}.tar.gz \
            file://sssd.conf \
            file://volatiles.99_sssd \
            file://fix-ldblibdir.patch \
+           file://0001-nss-Collision-with-external-nss-symbol.patch \
            "
=20
 SRC_URI[md5sum] =3D "757bbb6f15409d8d075f4f06cb678d50"
--=20
2.21.0

