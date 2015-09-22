Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3217E00EE8; Tue, 22 Sep 2015 16:41:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 994EAE009F3
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 16:41:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 22 Sep 2015 16:41:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,575,1437462000"; d="scan'208";a="810851289"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.166])
	by orsmga002.jf.intel.com with ESMTP; 22 Sep 2015 16:41:06 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Sep 2015 18:41:11 -0500
Message-Id: <1442965271-13638-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Cc: alexander.kanavin@intel.com
Subject: [PATCH][rrs] rrs_upstream_history.py: Fix use regexes in packages
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
X-List-Received-Date: Tue, 22 Sep 2015 23:41:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Make difference when handling suffixes or preffixes like 'nativesdk-'
when try to use regexes in packages that have suffixes like '-crosssdk'
it can contain the arch into it like binutils-crosssdk-x86_64.

Use split method in suffixes and replace method into preffixes, this
fixes issues with suffixes containing archs at end.

[YOCTO #8102]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/tools/rrs_upstream_history.py | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index aeac3d3..3db8f38 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -54,14 +54,20 @@ def set_regexes(d):
         return
 
     suffixes = d.getVar('SPECIAL_PKGSUFFIX', True).split()
-    suffixes.append('nativesdk-')
+    prefixes = ['nativesdk-']
 
-    localdata = bb.data.createCopy(d)
+    special = list(suffixes)
+    special.extend(prefixes)
 
+    localdata = bb.data.createCopy(d)
     pn = localdata.getVar('PN', True)
-    for sfx in suffixes:
-        if pn.find(sfx) != -1:
-            pnstripped = pn.replace(sfx, '')
+    for s in special:
+        if pn.find(s) != -1:
+            if s in suffixes:
+                pnstripped = pn.split(s)[0]
+            else:
+                pnstripped = pn.replace(s, '')
+
             localdata.setVar('OVERRIDES', "pn-" + pnstripped + ":" +
                     d.getVar('OVERRIDES', True))
             bb.data.update_data(localdata)
-- 
1.9.1


