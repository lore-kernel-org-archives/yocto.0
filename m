Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.479.1576564182754134054
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 22:29:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: changqing.li@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B8A9E01259; Mon, 16 Dec 2019 22:29:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767BBE010E8
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 22:29:40 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBH6TdGA014360
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 22:29:39 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.468.0; Mon, 16 Dec 2019 22:29:32 -0800
From: "Changqing Li" <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [patchest-oe][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later to source files
Date: Tue, 17 Dec 2019 14:29:31 +0800
Message-ID: <1576564171-447350-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

[YOCTO #13532]

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 selftest/selftest                        | 2 ++
 tests/base.py                            | 2 ++
 tests/pyparsing/common.py                | 2 ++
 tests/pyparsing/parse_shortlog.py        | 2 ++
 tests/pyparsing/parse_signed_off_by.py   | 2 ++
 tests/pyparsing/parse_upstream_status.py | 2 ++
 tests/test_mbox_author.py                | 2 ++
 tests/test_mbox_bugzilla.py              | 2 ++
 tests/test_mbox_description.py           | 2 ++
 tests/test_mbox_format.py                | 2 ++
 tests/test_mbox_mailinglist.py           | 2 ++
 tests/test_mbox_merge.py                 | 2 ++
 tests/test_mbox_shortlog.py              | 2 ++
 tests/test_mbox_signed_off_by.py         | 2 ++
 tests/test_metadata_lic_files_chksum.py  | 2 ++
 tests/test_metadata_license.py           | 2 ++
 tests/test_metadata_max_length.py        | 2 ++
 tests/test_metadata_src_uri.py           | 2 ++
 tests/test_metadata_summary.py           | 2 ++
 tests/test_patch_cve.py                  | 2 ++
 tests/test_patch_signed_off_by.py        | 2 ++
 tests/test_patch_upstream_status.py      | 2 ++
 tests/test_python_pylint.py              | 2 ++
 23 files changed, 46 insertions(+)

diff --git a/selftest/selftest b/selftest/selftest
index f42045b..b6db621 100755
--- a/selftest/selftest
+++ b/selftest/selftest
@@ -17,6 +17,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import os
 import subprocess
 
diff --git a/tests/base.py b/tests/base.py
index 3810a67..ca40d3d 100644
--- a/tests/base.py
+++ b/tests/base.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import unittest
 import logging
 import json
diff --git a/tests/pyparsing/common.py b/tests/pyparsing/common.py
index 04a4fde..7ac23f7 100644
--- a/tests/pyparsing/common.py
+++ b/tests/pyparsing/common.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import pyparsing
 
 # general
diff --git a/tests/pyparsing/parse_shortlog.py b/tests/pyparsing/parse_shortlog.py
index 8e67bcc..ecd008c 100644
--- a/tests/pyparsing/parse_shortlog.py
+++ b/tests/pyparsing/parse_shortlog.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 # NOTE:This is an oversimplified syntax of the mbox's summary
 
 import pyparsing
diff --git a/tests/pyparsing/parse_signed_off_by.py b/tests/pyparsing/parse_signed_off_by.py
index db12b83..fc39a6c 100644
--- a/tests/pyparsing/parse_signed_off_by.py
+++ b/tests/pyparsing/parse_signed_off_by.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 
 import pyparsing
 import common
diff --git a/tests/pyparsing/parse_upstream_status.py b/tests/pyparsing/parse_upstream_status.py
index 232e617..c846fcb 100644
--- a/tests/pyparsing/parse_upstream_status.py
+++ b/tests/pyparsing/parse_upstream_status.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 
 import common
 import pyparsing
diff --git a/tests/test_mbox_author.py b/tests/test_mbox_author.py
index 5f3d74e..b5f7908 100644
--- a/tests/test_mbox_author.py
+++ b/tests/test_mbox_author.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import re
 
diff --git a/tests/test_mbox_bugzilla.py b/tests/test_mbox_bugzilla.py
index bb2e0bf..66ccbe8 100644
--- a/tests/test_mbox_bugzilla.py
+++ b/tests/test_mbox_bugzilla.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import re
 import base
 
diff --git a/tests/test_mbox_description.py b/tests/test_mbox_description.py
index a5b322d..237290b 100644
--- a/tests/test_mbox_description.py
+++ b/tests/test_mbox_description.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 
 class CommitMessage(base.Base):
diff --git a/tests/test_mbox_format.py b/tests/test_mbox_format.py
index 11467bd..fde1938 100644
--- a/tests/test_mbox_format.py
+++ b/tests/test_mbox_format.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import re
 
diff --git a/tests/test_mbox_mailinglist.py b/tests/test_mbox_mailinglist.py
index e5700b4..36c0c1e 100644
--- a/tests/test_mbox_mailinglist.py
+++ b/tests/test_mbox_mailinglist.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import subprocess
 import collections
 import base
diff --git a/tests/test_mbox_merge.py b/tests/test_mbox_merge.py
index 76eef62..6c30db8 100644
--- a/tests/test_mbox_merge.py
+++ b/tests/test_mbox_merge.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import subprocess
 import base
 from patchtestdata import PatchTestInput as pti
diff --git a/tests/test_mbox_shortlog.py b/tests/test_mbox_shortlog.py
index 94f78f8..e6a4410 100644
--- a/tests/test_mbox_shortlog.py
+++ b/tests/test_mbox_shortlog.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import parse_shortlog
 import pyparsing
diff --git a/tests/test_mbox_signed_off_by.py b/tests/test_mbox_signed_off_by.py
index efb9e35..e50bb8e 100644
--- a/tests/test_mbox_signed_off_by.py
+++ b/tests/test_mbox_signed_off_by.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import parse_signed_off_by
 import re
diff --git a/tests/test_metadata_lic_files_chksum.py b/tests/test_metadata_lic_files_chksum.py
index 28a8ae6..da4598e 100644
--- a/tests/test_metadata_lic_files_chksum.py
+++ b/tests/test_metadata_lic_files_chksum.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import re
 import patchtestdata
diff --git a/tests/test_metadata_license.py b/tests/test_metadata_license.py
index 5721f28..ed98cea 100644
--- a/tests/test_metadata_license.py
+++ b/tests/test_metadata_license.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import os
 from patchtestdata import PatchTestInput as pti
diff --git a/tests/test_metadata_max_length.py b/tests/test_metadata_max_length.py
index eaf58b2..e31181a 100644
--- a/tests/test_metadata_max_length.py
+++ b/tests/test_metadata_max_length.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import re
 
diff --git a/tests/test_metadata_src_uri.py b/tests/test_metadata_src_uri.py
index a4c5caa..c0e8145 100644
--- a/tests/test_metadata_src_uri.py
+++ b/tests/test_metadata_src_uri.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import patchtestdata
 import subprocess
 import base
diff --git a/tests/test_metadata_summary.py b/tests/test_metadata_summary.py
index f820f5d..c7ee24b 100644
--- a/tests/test_metadata_summary.py
+++ b/tests/test_metadata_summary.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 from patchtestdata import PatchTestInput as pti
 
diff --git a/tests/test_patch_cve.py b/tests/test_patch_cve.py
index df6fe46..46ed9ef 100644
--- a/tests/test_patch_cve.py
+++ b/tests/test_patch_cve.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import os
 import re
diff --git a/tests/test_patch_signed_off_by.py b/tests/test_patch_signed_off_by.py
index b620cd4..c26759e 100644
--- a/tests/test_patch_signed_off_by.py
+++ b/tests/test_patch_signed_off_by.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import parse_signed_off_by
 import re
diff --git a/tests/test_patch_upstream_status.py b/tests/test_patch_upstream_status.py
index a477dfb..2179764 100644
--- a/tests/test_patch_upstream_status.py
+++ b/tests/test_patch_upstream_status.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import parse_upstream_status
 import pyparsing
diff --git a/tests/test_python_pylint.py b/tests/test_python_pylint.py
index df6a5de..fe24d69 100644
--- a/tests/test_python_pylint.py
+++ b/tests/test_python_pylint.py
@@ -15,6 +15,8 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+# SPDX-License-Identifier: GPL-2.0-or-later
+
 import base
 import patchtestdata
 import pylint.epylint as lint
-- 
2.7.4

