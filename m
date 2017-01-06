Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5A5EE00B19; Fri,  6 Jan 2017 15:03:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C52AE00AF4
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 15:03:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 06 Jan 2017 15:03:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,326,1477983600"; d="scan'208";a="27166511"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.139])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2017 15:03:12 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  6 Jan 2017 17:03:05 -0600
Message-Id: <1483743785-13872-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [patchwork][PATCH] patchwork/bin/parsemail: Make "[PATCH" prefix mandatory
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
X-List-Received-Date: Fri, 06 Jan 2017 23:03:17 -0000

Patchwork may incorrectly identify emails containing patch-like content as
patches.
This change makes "[PATCH" prefix in subject mandatory for emails to be
considered as new patches.

[YOCTO #10764]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 476118d..8d6529c 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -399,7 +399,8 @@ def find_content(project, mail):
     refs = build_references_list(mail)
     is_root = refs == []
     is_cover_letter = is_root and x == 0
-    is_patch = patchbuf is not None
+    patch_prefix = re.search('\[\s*PATCH', mail.get('Subject'))
+    is_patch = patchbuf is not None and patch_prefix
 
     drop_patch = not is_attachment and \
         project.git_send_email_only and not is_git_send_email(mail)
-- 
1.9.1


