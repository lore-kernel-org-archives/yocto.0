Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FE70E009BC; Thu,  9 Feb 2017 12:34:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE0EE009AA
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 12:34:14 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP; 09 Feb 2017 12:34:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,137,1484035200"; d="scan'208";a="63902058"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga006.fm.intel.com with ESMTP; 09 Feb 2017 12:34:13 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Feb 2017 14:41:34 -0600
Message-Id: <1486672894-3837-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Cc: paul.eggleton@linux.intel.com
Subject: [patchtest-oe][PATCH] test/test_mbox_mailinglist.py: check if series was intended for other project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Feb 2017 20:34:16 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

People working on the Poky project often send  patches to the wrong
mailing list, the most common scenarios area: bitbake patches sent to the
oe-core list, OE patches sent to OE-Core. This new code checks these possible
scenarios (and two other projects, Poky and OE) and suggest the proper
ML.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 tests/test_mbox_mailinglist.py | 58 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 tests/test_mbox_mailinglist.py

diff --git a/tests/test_mbox_mailinglist.py b/tests/test_mbox_mailinglist.py
new file mode 100644
index 0000000..dcf3d75
--- /dev/null
+++ b/tests/test_mbox_mailinglist.py
@@ -0,0 +1,58 @@
+#!/usr/bin/env python
+#
+# Check if the series was intended for other project (not OE-Core)
+#
+# Copyright (C) 2017 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import subprocess
+import collections
+import base
+from patchtestdata import PatchTestInput as pti
+
+class MailingList(base.Base):
+
+    # base paths of main yocto project sub-projects
+    paths = {
+        'oe-core': ['meta-selftest', 'meta-skeleton', 'meta', 'scripts'],
+        'bitbake': ['lib', 'classes', 'conf', 'doc', 'contrib', 'bin'],
+        'documentation': ['adt-manual','ref-manual', 'sdk-manual','bsp-guide', 'profile-manual','template','toaster-manual','dev-manual', 'mega-manual','tools','kernel-dev','yocto-project-qs'],
+        'poky': ['meta-poky','meta-yocto-bsp'],
+        'oe': ['meta-gpe', 'meta-gnome', 'meta-efl', 'meta-networking', 'meta-multimedia','meta-initramfs', 'meta-ruby', 'contrib', 'meta-xfce', 'meta-filesystems', 'meta-perl', 'meta-webserver', 'meta-systemd', 'meta-oe', 'meta-python']
+        }
+
+    Project = collections.namedtuple('Project', ['name', 'listemail', 'gitrepo', 'paths'])
+
+    bitbake = Project(name='Bitbake', listemail='bitbake-devel@lists.openembedded.org', gitrepo='http://git.openembedded.org/bitbake/', paths=paths['bitbake'])
+    doc     = Project(name='Documentantion', listemail='yocto@yoctoproject.org', gitrepo='http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/', paths=paths['documentation'])
+    poky    = Project(name='Poky', listemail='poky@yoctoproject.org', gitrepo='http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)', paths=paths['poky'])
+    oe      = Project(name='oe', listemail='openembedded-devel@lists.openembedded.org', gitrepo='http://git.openembedded.org/meta-openembedded/', paths=paths['oe'])
+
+
+    def test_target_mailing_list(self):
+        """In case of merge failure, check for other targeted projects"""
+        if pti.repo.ismerged:
+            self.skipTest('Series merged, no reason to check other mailing lists')
+
+        for patch in self.patchset:
+            folders = patch.path.split('/')
+            base_path = folders[0]
+            for project in [self.bitbake, self.doc, self.oe, self.poky]:
+                if base_path in  project.paths:
+                    self.fail('Series sent to the wrong mailing list', 'Send the series again to the correct mailing list (ML)',
+                              data=[('Suggested ML', '%s [%s]' % (project.listemail, project.gitrepo))])
+
+
+
-- 
2.1.4


