Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3502DC4828F
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 18:41:48 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.19793.1707504103900169174
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 10:41:44 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8038FDA7
	for <yocto@lists.yoctoproject.org>; Fri,  9 Feb 2024 10:42:25 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2F6813F5A1
	for <yocto@lists.yoctoproject.org>; Fri,  9 Feb 2024 10:41:43 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] generate-testresult-index: fix key generation when filenames have hyphens
Date: Fri,  9 Feb 2024 18:41:41 +0000
Message-Id: <20240209184141.2671931-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 18:41:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62452

From: Ross Burton <ross.burton@arm.com>

This script generates sorting keys so that 20240201-4 sorts before 202402=
01-20,
but the code assumes that there is only one hyphen when it splits.

However, there is now a patchstatus-meta-oe directory, which causes the
script to throw an exception.

Before padding, use a regex to check that the key is of the format we exp=
ect,
that is two integers separated by a hyphen.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/generate-testresult-index.py | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-test=
result-index.py
index 29a6900..61b684a 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -9,6 +9,7 @@ import argparse
 import os
 import glob
 import json
+import re
 import subprocess
 from jinja2 import Template
=20
@@ -105,10 +106,12 @@ def get_build_branch(p):
=20
 # Pad so 20190601-1 becomes 20190601-000001 and sorts correctly
 def keygen(k):
-    if "-" not in k:
-         return k
-    k1, k2 =3D k.split("-")
-    return k1 + "-" + k2.rjust(6, '0')
+    m =3D re.match(r"(\d+)-(\d+)", k)
+    if m:
+        k1, k2 =3D m.groups()
+        return k1 + "-" + k2.rjust(6, '0')
+    else:
+        return k
=20
 for build in sorted(os.listdir(path), key=3Dkeygen, reverse=3DTrue):
     buildpath =3D os.path.join(path, build, "testresults")
--=20
2.34.1


