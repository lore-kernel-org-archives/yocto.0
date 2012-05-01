Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEDFCE01402
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 May 2012 15:14:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160634796"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2012 15:14:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:27 -0700
Message-Id: <eaea14960a9443480bb999c7ac7931fd28473ccf.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 3/7] sys940x: Move emgd-1.10 data to the standard scc file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 May 2012 22:14:10 -0000

Make sys940x consistent with crownbay and fri2 by moving the
emgd-1.10 includes and merges to the $bsp-standard.scc files.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    3 +++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |    2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
index 1f0edec..132e44a 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
@@ -2,5 +2,8 @@ define KMACHINE sys940x
 define KTYPE standard
 define KARCH i386
 
+include features/emgd/emgd-1.10.scc
+git merge emgd-1.10
+
 include ktypes/standard
 include sys940x.scc
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
index 557a83d..962b837 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
@@ -1,7 +1,5 @@
 kconf hardware sys940x.cfg
 
-git merge emgd-1.10
-
 include features/eg20t/eg20t.scc
 include features/drm-emgd/drm-emgd.scc
 include cfg/dmaengine.scc
-- 
1.7.7.6


