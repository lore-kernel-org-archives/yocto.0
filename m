Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EE6BC54E4A
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 16:42:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.28263.1709829768348189573
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 08:42:48 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAAA11FB
	for <yocto@lists.yoctoproject.org>; Thu,  7 Mar 2024 08:43:24 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 61C883F738
	for <yocto@lists.yoctoproject.org>; Thu,  7 Mar 2024 08:42:47 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper 1/3] scripts/abint: sort and organise imports
Date: Thu,  7 Mar 2024 16:42:43 +0000
Message-Id: <20240307164245.783037-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 16:42:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62695

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/abint/abint.py | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/scripts/abint/abint.py b/scripts/abint/abint.py
index f4cb8b29..d4fbed7e 100755
--- a/scripts/abint/abint.py
+++ b/scripts/abint/abint.py
@@ -1,14 +1,15 @@
 #! /usr/bin/env python3
=20
-import re
 import collections
-from pprint import pprint
-import bugzilla
-import pickle
-import requests
 import dataclasses
-import arrow
 import logging
+import pickle
+import pprint
+import re
+
+import arrow
+import bugzilla
+import requests
=20
 MOCK =3D False
 # logging.basicConfig(level=3Dlogging.DEBUG)
@@ -83,7 +84,7 @@ def get_data():
         for bug in bugs
     ]
=20
-    pprint(bugs)
+    pprint.pprint(bugs)
     print(f"Found {len(bugs)} AB-INT bugs")
=20
     comments_data =3D bz.get_comments([bug.id for bug in bugs])["bugs"]
--=20
2.34.1


