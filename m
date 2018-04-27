Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA448E0073D; Fri, 27 Apr 2018 12:48:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A02CE0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 12:48:21 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Apr 2018 12:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,336,1520924400"; d="scan'208";a="51411303"
Received: from aurora.jf.intel.com ([10.7.198.68])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2018 12:48:20 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Apr 2018 12:48:34 -0700
Message-Id: <1524858514-27377-1-git-send-email-amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Amanda Brindle <amanda.r.brindle@intel.com>, stephano.cetola@intel.com
Subject: [patchtest-oe][PATCH] test_metadata_src_uri.py: Check if files are added
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
X-List-Received-Date: Fri, 27 Apr 2018 19:48:22 -0000

Check if files are added to the patchset and not added to the SRC_URI.
This will prevent test_src_uri_left_files from giving a false positive
when patches are renamed in the patchset and not renamed in the SRC_URI.

Also update the fail message from "Patches not removed from tree" to
"Patches not removed from SRC_URI" to be clearer.

[Fixes YOCTO 12636]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 tests/test_metadata_src_uri.py | 42 +++++++++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/tests/test_metadata_src_uri.py b/tests/test_metadata_src_uri.py
index a4c5caa..d4d06e2 100644
--- a/tests/test_metadata_src_uri.py
+++ b/tests/test_metadata_src_uri.py
@@ -65,23 +65,31 @@ class SrcUri(base.Metadata):
             pretest_files = set([os.path.basename(patch) for patch in pretest_src_uri if patch.startswith('file://')])
             test_files    = set([os.path.basename(patch) for patch in test_src_uri    if patch.startswith('file://')])
 
-            # check if files were removed
-            if len(test_files) < len(pretest_files):
+            # check if files were removed or added
+            filesremoved_from_patchset = set()
+            filesadded_to_patchset = set()
+            for patch in self.patchset:
+                if patch.is_removed_file:
+                    filesremoved_from_patchset.add(os.path.basename(patch.path))
+                elif patch.is_added_file:
+                    filesadded_to_patchset.add(os.path.basename(patch.path))
 
-                # get removals from patchset
-                filesremoved_from_patchset = set()
-                for patch in self.patchset:
-                    if patch.is_removed_file:
-                        filesremoved_from_patchset.add(os.path.basename(patch.path))
+            # get the removed files from the SRC_URI
+            filesremoved_from_usr_uri = pretest_files - test_files
+            # get the patches removed at SRC_URI and not removed from the patchset
+            not_removed = filesremoved_from_usr_uri - filesremoved_from_patchset
+            yeah_removed = filesremoved_from_patchset - filesremoved_from_usr_uri
+            if not_removed:
+                self.fail('Patches not removed from SRC_URI',
+                          'Amend the patch containing the software patch file removal',
+                          data=[('Patch', f) for f in not_removed])
 
-                # get the deleted files from the SRC_URI
-                filesremoved_from_usr_uri = pretest_files - test_files
-
-                # finally, get those patches removed at SRC_URI and not removed from the patchset
-                # TODO: we are not taking into account  renames, so test may raise false positives
-                not_removed = filesremoved_from_usr_uri - filesremoved_from_patchset
-                if not_removed:
-                    self.fail('Patches not removed from tree',
-                              'Amend the patch containing the software patch file removal',
-                              data=[('Patch', f) for f in not_removed])
+            # get the added files from the SRC_URI
+            filesadded_to_usr_uri = test_files - pretest_files
 
+            # get the patches added to the patchset and not added to the SRC_URI
+            not_added = filesadded_to_patchset - filesadded_to_usr_uri
+            if not_added:
+                self.fail('Patches not added to SRC_URI',
+                          'Amend the patch containing the software patch file addition',
+                          data=[('Patch', f) for f in not_added])
-- 
2.7.4


