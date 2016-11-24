Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5BFDE00BB0; Thu, 24 Nov 2016 07:28:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F46E00BAD
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 07:27:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 24 Nov 2016 07:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,543,1473145200"; d="scan'208";a="1073042300"
Received: from fsantes-mobl2.amr.corp.intel.com (HELO
	jalamego-MOBL2.zpn.intel.com) ([10.219.5.141])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2016 07:27:58 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Nov 2016 09:27:38 -0600
Message-Id: <1480001259-6737-2-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1480001259-6737-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1480001259-6737-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 1/2] patchwork.bin.parsemail: Use oldest header references
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
X-List-Received-Date: Thu, 24 Nov 2016 15:28:00 -0000

References list for previous emails only include first found
header, causing that some root messages for series are skipped
and corresponding series revision numbering gets corrupted.

This change forces references list to use last header found,
allowing for Patch emails created with send-pull-request script
to be appropriately appended to last revision.

[Yocto #9941]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 47b535f..c10bed5 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -284,9 +284,18 @@ def build_references_from_db(msgid):
 
 
 def build_references_from_mail(mail):
-    return build_references_from_headers(mail.get('In-Reply-To', None),
-                                         mail.get('References', None))
-
+    replies = ""
+    references = ""
+    parser = HeaderParser()
+    headers = parser.parsestr(mail.as_string())
+    for h in headers.items():
+        # Patch emails created with send-pull-Request script
+        # may contain two set of references, so use only the last found
+        if h[0] == 'In-Reply-To':
+            replies = "%s" % h[1]
+        if h[0] == 'References':
+            references = "%s" % h[1]
+    return build_references_from_headers(replies, references)
 
 def build_references_list(mail):
     """Construct the list of msgids from 'mail' to the root of the thread"""
-- 
1.9.1


