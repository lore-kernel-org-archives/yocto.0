Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.15776.1599553245079466676
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Sep 2020 01:20:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0C7FF38C0854
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2020 01:20:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 0888KBkn022558
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 8 Sep 2020 01:20:32 -0700
Received: from ala-lpggp7.wrs.com (147.11.105.171) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.487.0; Tue, 8 Sep 2020
 01:20:22 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [yocto][meta-security][PATCH] nss: update patch to fix do_patch error
Date: Tue, 8 Sep 2020 01:20:22 -0700
Message-ID: <20200908082022.12556-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Currently sssd's do_patch task fails. Update the patch to fix this proble=
m.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 ...s-Collision-with-external-nss-symbol.patch | 155 +++++++++---------
 1 file changed, 78 insertions(+), 77 deletions(-)

diff --git a/recipes-security/sssd/files/0001-nss-Collision-with-external=
-nss-symbol.patch b/recipes-security/sssd/files/0001-nss-Collision-with-e=
xternal-nss-symbol.patch
index bf79f65..c319269 100644
--- a/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-sy=
mbol.patch
+++ b/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-sy=
mbol.patch
@@ -1,77 +1,78 @@
-+From a069e4186a3cb482226005d4bc73c6fb3dd35c79 Mon Sep 17 00:00:00 2001
-+From: =3D?UTF-8?q?Michal=3D20=3DC5=3DBDidek?=3D <mzidek@redhat.com>
-+Date: Thu, 27 Feb 2020 06:50:40 +0100
-+Subject: [PATCH] nss: Collision with external nss symbol
-+MIME-Version: 1.0
-+Content-Type: text/plain; charset=3DUTF-8
-+Content-Transfer-Encoding: 8bit
-+
-+One of our internal static function names started
-+to collide with external nss symbol. Additional
-+sss_ suffix was added to avoid the collision.
-+
-+This is needed to unblock Fedora Rawhide's
-+SSSD build.
-+
-+Reviewed-by: Pavel B=C5=99ezina <pbrezina@redhat.com>
-+
-+Upstream-Status: Backport [https://github.com/SSSD/sssd.git]
-+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
-+---
-+ src/responder/nss/nss_cmd.c | 18 ++++++++++--------
-+ 1 file changed, 10 insertions(+), 8 deletions(-)
-+
-+diff --git a/src/responder/nss/nss_cmd.c b/src/responder/nss/nss_cmd.c
-+index 25e663e..a4d4cfc 100644
-+--- a/src/responder/nss/nss_cmd.c
-++++ b/src/responder/nss/nss_cmd.c
-+@@ -728,11 +728,13 @@ done:
-+     talloc_free(cmd_ctx);
-+ }
-+=20
-+-static void nss_setnetgrent_done(struct tevent_req *subreq);
-++static void sss_nss_setnetgrent_done(struct tevent_req *subreq);
-+=20
-+-static errno_t nss_setnetgrent(struct cli_ctx *cli_ctx,
-+-                               enum cache_req_type type,
-+-                               nss_protocol_fill_packet_fn fill_fn)
-++/* This function's name started to collide with external nss symbol,
-++ * so it has additional sss_* prefix unlike other functions here. */
-++static errno_t sss_nss_setnetgrent(struct cli_ctx *cli_ctx,
-++                                   enum cache_req_type type,
-++                                   nss_protocol_fill_packet_fn fill_fn=
)
-+ {
-+     struct nss_ctx *nss_ctx;
-+     struct nss_state_ctx *state_ctx;
-+@@ -774,7 +776,7 @@ static errno_t nss_setnetgrent(struct cli_ctx *cli_=
ctx,
-+         goto done;
-+     }
-+=20
-+-    tevent_req_set_callback(subreq, nss_setnetgrent_done, cmd_ctx);
-++    tevent_req_set_callback(subreq, sss_nss_setnetgrent_done, cmd_ctx)=
;
-+=20
-+     ret =3D EOK;
-+=20
-+@@ -787,7 +789,7 @@ done:
-+     return EOK;
-+ }
-+=20
-+-static void nss_setnetgrent_done(struct tevent_req *subreq)
-++static void sss_nss_setnetgrent_done(struct tevent_req *subreq)
-+ {
-+     struct nss_cmd_ctx *cmd_ctx;
-+     errno_t ret;
-+@@ -1037,8 +1039,8 @@ static errno_t nss_cmd_initgroups_ex(struct cli_c=
tx *cli_ctx)
-+=20
-+ static errno_t nss_cmd_setnetgrent(struct cli_ctx *cli_ctx)
-+ {
-+-    return nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
-+-                           nss_protocol_fill_setnetgrent);
-++    return sss_nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
-++                               nss_protocol_fill_setnetgrent);
-+ }
-+=20
-+ static errno_t nss_cmd_getnetgrent(struct cli_ctx *cli_ctx)
-+--=20
-+2.21.0
-+
+From 05c315100a70d3372e891e9a0ea981a875b2ec90 Mon Sep 17 00:00:00 2001
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
+Signed-off-by: Hongxu.jia@windriver.com
+Signed-off-by: Qi.Chen@windriver.com
+---
+ src/responder/nss/nss_cmd.c | 18 ++++++++++--------
+ 1 file changed, 10 insertions(+), 8 deletions(-)
+
+diff --git a/src/responder/nss/nss_cmd.c b/src/responder/nss/nss_cmd.c
+index 25e663ed5..a4d4cfc0b 100644
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
--=20
2.21.0

