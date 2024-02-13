Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DB3BC4829A
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 11:17:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.9392.1707823070197297283
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 03:17:50 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 128E4DA7
	for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 03:18:31 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7DCEF3F5A1
	for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 03:17:49 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] scripts/abint: add a footer showing when the report was generated
Date: Tue, 13 Feb 2024 11:17:45 +0000
Message-Id: <20240213111745.1655345-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 11:17:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62474

From: Ross Burton <ross.burton@arm.com>

---
 scripts/abint/abint.html.j2 | 6 ++++++
 scripts/abint/abint.py      | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/scripts/abint/abint.html.j2 b/scripts/abint/abint.html.j2
index 1770a98..f531649 100644
--- a/scripts/abint/abint.html.j2
+++ b/scripts/abint/abint.html.j2
@@ -76,6 +76,12 @@
       </tbody>
     </table>
   </div>
+
+  <div class=3D"container">
+    <footer class=3D"py-4">
+      <p class=3D"text-center text-body-secondary"><small>Generated {{no=
w.format('YYYY-MM-DD HH:mm:ssZZ')}}.</small></p>
+    </footer>
+  </div>
 </body>
=20
 </html>
\ No newline at end of file
diff --git a/scripts/abint/abint.py b/scripts/abint/abint.py
index 19567e5..f4cb8b2 100755
--- a/scripts/abint/abint.py
+++ b/scripts/abint/abint.py
@@ -125,7 +125,7 @@ def last_seen_report(data):
     template =3D env.get_template("abint.html.j2")
     with open("index.html", "w") as f:
         start =3D arrow.utcnow().shift(weeks=3D-100).floor("week")
-        f.write(template.render(bugs=3Ddata, start=3Dstart))
+        f.write(template.render(bugs=3Ddata, start=3Dstart, now=3Darrow.=
now()))
=20
=20
 data =3D get_data()
--=20
2.34.1


