Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 291FFC54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 16:42:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.28264.1709829768702005303
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 08:42:48 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62E1AC15
	for <yocto@lists.yoctoproject.org>; Thu,  7 Mar 2024 08:43:25 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 12C293F738
	for <yocto@lists.yoctoproject.org>; Thu,  7 Mar 2024 08:42:47 -0800 (PST)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper 2/3] scripts/abint: add argument parser
Date: Thu,  7 Mar 2024 16:42:44 +0000
Message-Id: <20240307164245.783037-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307164245.783037-1-ross.burton@arm.com>
References: <20240307164245.783037-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 16:42:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62696

From: Ross Burton <ross.burton@arm.com>

Add an argument parser so that the use of the cache or verbose logging
can be enabled/disabled without having to edit the source code.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/abint/abint.py | 45 ++++++++++++++++++++++--------------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/scripts/abint/abint.py b/scripts/abint/abint.py
index d4fbed7e..1d358836 100755
--- a/scripts/abint/abint.py
+++ b/scripts/abint/abint.py
@@ -1,5 +1,6 @@
 #! /usr/bin/env python3
=20
+import argparse
 import collections
 import dataclasses
 import logging
@@ -11,19 +12,6 @@ import arrow
 import bugzilla
 import requests
=20
-MOCK =3D False
-# logging.basicConfig(level=3Dlogging.DEBUG)
-
-
-def save_pickle(name, data):
-    with open(name, "wb") as f:
-        pickle.dump(data, f, pickle.HIGHEST_PROTOCOL)
-
-
-def load_pickle(name):
-    with open(name, "rb") as f:
-        return pickle.load(f)
-
=20
 http =3D requests.Session()
=20
@@ -104,15 +92,9 @@ def get_data():
                 except requests.exceptions.HTTPError as e:
                     logging.debug(f"Couldn't find build for {builder=3D}=
 {build=3D}")
=20
-    save_pickle("bugs.data", bugs)
     return bugs
=20
=20
-if MOCK:
-
-    def get_data():
-        return load_pickle("bugs.data")
-
=20
 def last_seen_report(data):
     import jinja2
@@ -129,5 +111,26 @@ def last_seen_report(data):
         f.write(template.render(bugs=3Ddata, start=3Dstart, now=3Darrow.=
now()))
=20
=20
-data =3D get_data()
-last_seen_report(data)
+CACHE_NAME =3D "bugs.data"
+
+if __name__ =3D=3D "__main__":
+    parser =3D argparse.ArgumentParser()
+    parser.add_argument("--verbose", action=3D"store_true", help=3D"Enab=
le verbose logging")
+    parser.add_argument("--cached", action=3D"store_true", help=3D"Use t=
he local cached data instead of fetching")
+    args =3D parser.parse_args()
+
+    if args.verbose:
+        logging.basicConfig(level=3Dlogging.DEBUG)
+
+    if args.cached:
+        logging.debug(f"Loading cached data from {CACHE_NAME}")
+        with open(CACHE_NAME, "rb") as f:
+            data =3D pickle.load(f)
+    else:
+        data =3D get_data()
+        # Always save a cache because it's quick
+        logging.debug(f"Saving data to cache {CACHE_NAME}")
+        with open(CACHE_NAME, "wb") as f:
+            pickle.dump(data, f, pickle.HIGHEST_PROTOCOL)
+
+    last_seen_report(data)
--=20
2.34.1


