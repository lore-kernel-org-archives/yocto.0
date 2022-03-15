Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D0FC433EF
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:31:38 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.13344.1647361897211289738
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:31:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 5302324000B;
	Tue, 15 Mar 2022 16:31:35 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 2/4] scripts: docs-build-patches: fix
 bitbake objects.inv being used
Date: Tue, 15 Mar 2022 17:31:13 +0100
Message-Id: <20220315163115.2186540-2-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315163115.2186540-1-foss+yocto@0leil.net>
References: <20220315163115.2186540-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:31:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56449

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Each Yocto Project release is validated for a specific Bitbake release.

By mistake, most release docs are pointing at the development branch of
Bitbake documentation instead of the one that was validated for the
Yocto Project release.

This fixes the issue by patching the conf.py of impacted releases.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 ...nf.py-fix-version-of-bitbake-objects.patch | 40 +++++++++++++++++++
 ...nf.py-fix-version-of-bitbake-objects.patch | 40 +++++++++++++++++++
 ...nf.py-fix-version-of-bitbake-objects.patch | 40 +++++++++++++++++++
 ...nf.py-fix-version-of-bitbake-objects.patch | 38 ++++++++++++++++++
 ...nf.py-fix-version-of-bitbake-objects.patch | 40 +++++++++++++++++++
 ...nf.py-fix-version-of-bitbake-objects.patch | 38 ++++++++++++++++++
 ...nf.py-fix-version-of-bitbake-objects.patch | 38 ++++++++++++++++++
 7 files changed, 274 insertions(+)
 create mode 100644 scripts/docs-build-patches/yocto-3.3.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
 create mode 100644 scripts/docs-build-patches/yocto-3.3.2/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
 create mode 100644 scripts/docs-build-patches/yocto-3.3.3/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
 create mode 100644 scripts/docs-build-patches/yocto-3.3.4/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
 create mode 100644 scripts/docs-build-patches/yocto-3.3/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch
 create mode 100644 scripts/docs-build-patches/yocto-3.4.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
 create mode 100644 scripts/docs-build-patches/yocto-3.4/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch

diff --git a/scripts/docs-build-patches/yocto-3.3.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.3.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..1842ebe
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.3.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,40 @@
+From 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:17:25 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.50 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+[adapted from commit 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f "documentation: conf.py: fix version of bitbake objects.inv"]
+Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 28af37d7b..e42e7b18a 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.3.1"
++bitbake_version = "1.50"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -89,7 +90,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # -- Options for HTML output -------------------------------------------------
+-- 
+2.35.1
+
diff --git a/scripts/docs-build-patches/yocto-3.3.2/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.3.2/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..036095f
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.3.2/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,40 @@
+From 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:17:25 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.50 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+[adapted from commit 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f "documentation: conf.py: fix version of bitbake objects.inv"]
+Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 28af37d7b..e42e7b18a 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.3.2"
++bitbake_version = "1.50"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -89,7 +90,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # -- Options for HTML output -------------------------------------------------
+-- 
+2.35.1
+
diff --git a/scripts/docs-build-patches/yocto-3.3.3/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.3.3/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..5b11408
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.3.3/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,40 @@
+From 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:17:25 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.50 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+[adapted from commit 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f "documentation: conf.py: fix version of bitbake objects.inv"]
+Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 28af37d7b..e42e7b18a 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.3.3"
++bitbake_version = "1.50"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -89,7 +90,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # -- Options for HTML output -------------------------------------------------
+-- 
+2.35.1
+
diff --git a/scripts/docs-build-patches/yocto-3.3.4/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.3.4/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..ed54e9b
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.3.4/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,38 @@
+From 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:17:25 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.50 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 28af37d7b..e42e7b18a 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.3.4"
++bitbake_version = "1.50"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -89,7 +90,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # -- Options for HTML output -------------------------------------------------
+-- 
+2.35.1
+
diff --git a/scripts/docs-build-patches/yocto-3.3/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.3/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..cc162c4
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.3/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,40 @@
+From 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:17:25 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.50 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+[adapted from commit 79e90a28ef7f591b1b9b4c41ef7f353bcf17679f "documentation: conf.py: fix version of bitbake objects.inv"]
+Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 28af37d7b..e42e7b18a 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.3"
++bitbake_version = "1.50"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -89,7 +90,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # -- Options for HTML output -------------------------------------------------
+-- 
+2.35.1
+
diff --git a/scripts/docs-build-patches/yocto-3.4.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.4.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..386c177
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.4.1/0001-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,38 @@
+From fcb24deb8b3abb8a77a12baa2cdd5ba5aa976f01 Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:27:56 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.52 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 104b49ea0..eff758a7b 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.4"
++bitbake_version = "1.52"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -90,7 +91,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # Suppress "WARNING: unknown mimetype for ..."
+-- 
+2.35.1
+
diff --git a/scripts/docs-build-patches/yocto-3.4/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch b/scripts/docs-build-patches/yocto-3.4/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch
new file mode 100644
index 0000000..386c177
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.4/0002-documentation-conf.py-fix-version-of-bitbake-objects.patch
@@ -0,0 +1,38 @@
+From fcb24deb8b3abb8a77a12baa2cdd5ba5aa976f01 Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Wed, 8 Dec 2021 17:27:56 +0100
+Subject: [PATCH] documentation: conf.py: fix version of bitbake objects.inv
+
+Using the Bitbake 1.52 references instead of the master ones,
+which may break if some variables or sections are removed.
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Reported-by: Quentin Schulz <foss@0leil.net>
+---
+ documentation/conf.py | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index 104b49ea0..eff758a7b 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -17,6 +17,7 @@ import sys
+ import datetime
+ 
+ current_version = "3.4"
++bitbake_version = "1.52"
+ 
+ # String used in sidebar
+ version = 'Version: ' + current_version
+@@ -90,7 +91,7 @@ extlinks = {
+ 
+ # Intersphinx config to use cross reference with Bitbake user manual
+ intersphinx_mapping = {
+-    'bitbake': ('https://docs.yoctoproject.org/bitbake/', None)
++    'bitbake': ('https://docs.yoctoproject.org/bitbake/' + bitbake_version, None)
+ }
+ 
+ # Suppress "WARNING: unknown mimetype for ..."
+-- 
+2.35.1
+
-- 
2.35.1


