Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 415DAE00566; Fri, 10 Feb 2017 09:05:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAE76E004D8
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 09:05:20 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Feb 2017 09:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,142,1484035200"; d="scan'208";a="64257429"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.117])
	by fmsmga006.fm.intel.com with ESMTP; 10 Feb 2017 09:05:19 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Feb 2017 11:05:12 -0600
Message-Id: <1486746312-7283-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [patchwork][PATCH] parsemail: Split PATCH prefix if not single
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
X-List-Received-Date: Fri, 10 Feb 2017 17:05:22 -0000

PATCH prefix is not appropriately identified as such if it is not
sepparated from following word in an email Subject line. This leads to
wrong email parsing and revisions not appended to initial series.

This change allows appropriate email parsing by checking if PATCH prefix
in Subject line is not sepparated from following word and adding a space
 between them.

[YOCTO #10823]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index c9eb05c..6e13beb 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -578,11 +578,18 @@ def find_patch_for_comment(project, refs):
 
 
 split_re = re.compile(r'[,\s]+')
+patch_pref = re.re.compile(r'^.*\[(\s*PATCH\w+).*', re.I)
 
 
 def split_prefixes(prefix):
     """ Turn a prefix string into a list of prefix tokens """
 
+    # Check if PATCH prefix is followed by anoter word without a sepparation
+    # space. Add missing space to allow appropriate parsing
+    if patch_pref.match(prefix):
+        index = prefix.find(patch_pref.match(prefix).group(1))
+        prefix = prefix[:index + 5] + ' ' + prefix[index + 5:]
+
     matches = split_re.split(prefix)
     return [s for s in matches if s != '']
 
-- 
1.9.1


