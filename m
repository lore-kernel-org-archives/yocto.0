Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AC51E00D3E; Tue, 23 Feb 2016 13:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 266A2E00D53
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:44:33 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 23 Feb 2016 13:44:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,491,1449561600"; d="scan'208";a="751934772"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga003.jf.intel.com with ESMTP; 23 Feb 2016 13:44:31 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Feb 2016 14:40:46 -0800
Message-Id: <1456267247-15726-5-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
References: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
Subject: [yocto-autobuilder][PATCH 5/6] bin/release_scripts/release.py: fix the tarball naming
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
X-List-Received-Date: Tue, 23 Feb 2016 21:44:34 -0000

Fixed tarball repackaging to add missing branch name to the new
tarball name. i.e. <blob>-<hash>.tar.bz2 was being renamed to
<blob>-<poky-ver>.14.0.1.tar.bz2, which is wrong. Should be renamed to
<blob>-<branch>-<poky-ver>.tar.bz2.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 83c198e..8751a04 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -94,7 +94,7 @@ def fix_tarballs():
         filename = chunks[0]
         basename = split_thing(filename, "-")
         index = len(basename)-1
-        basename[index] = POKY_VER
+        basename[index] = "-".join([BRANCH, POKY_VER])
         new_name = rejoin_thing(basename, "-")
         chunks[0] = new_name
         new_blob = rejoin_thing(chunks, ".")
@@ -511,3 +511,4 @@ if __name__ == '__main__':
         else:
             print "Publishing ADT repo."
             publish_adt(REL_ID, REL_TYPE, "")
+
-- 
2.4.3


