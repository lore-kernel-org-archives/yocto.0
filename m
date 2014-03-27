Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2220E00A71
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 09:50:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Mar 2014 09:42:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,743,1389772800"; d="scan'208";a="481517109"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 27 Mar 2014 09:41:59 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.160])
	by linux.intel.com (Postfix) with ESMTP id B1E6E6A4007;
	Thu, 27 Mar 2014 09:41:44 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Mar 2014 18:42:14 +0200
Message-Id: <1395938534-9644-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [yocto-autobuilder][PATCH] buildsets: nightly-qa-targetbuilds: remove the mips build
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
X-List-Received-Date: Thu, 27 Mar 2014 16:50:25 -0000

The build tests for iptables/cvs/sudoku take too much time on qemumips
and usually buildbot ends up killing the step as it hits the timeout,
so we should drop them.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config.master/nightly-qa-targetbuilds.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/buildset-config.master/nightly-qa-targetbuilds.conf b/buildset-config.master/nightly-qa-targetbuilds.conf
index a95db78..96ec7f8 100644
--- a/buildset-config.master/nightly-qa-targetbuilds.conf
+++ b/buildset-config.master/nightly-qa-targetbuilds.conf
@@ -20,7 +20,4 @@ steps: [{'SetDest':{}},
         {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato-sdk'}},
-        {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
-        {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
-        {'BuildImages': {'images': 'core-image-sato-sdk'}},
         {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}}]
-- 
1.8.5.3


