Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB99E01462
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:09:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jul 2012 11:09:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118580334"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jul 2012 11:09:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:09:25 -0500
Message-Id: <f2bab89d494ecc432c0f8255252bc1fc8e5fb9dd.1341337418.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <406331faf03f6772742c9a2b2fb7db34c01968e6.1341337418.git.tom.zanussi@intel.com>
References: <406331faf03f6772742c9a2b2fb7db34c01968e6.1341337418.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341337418.git.tom.zanussi@intel.com>
References: <cover.1341337418.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] perf: change --root to --prefix for python install
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
X-List-Received-Date: Tue, 03 Jul 2012 18:09:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Otherwise we get the sysroot path appended to the build path, not what
we want.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index 97bca9c..e5456d3 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -878,7 +878,7 @@ install: all
 	$(INSTALL) scripts/python/bin/* -t '$(DESTDIR_SQ)$(perfexec_instdir_SQ)/scripts/python/bin'
 
 install-python_ext:
-	$(PYTHON_WORD) util/setup.py --quiet install --root='/$(DESTDIR_SQ)'
+	$(PYTHON_WORD) util/setup.py --quiet install --prefix='$(DESTDIR_SQ)/usr'
 
 install-doc:
 	$(MAKE) -C Documentation install
-- 
1.7.0.4


