Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 197D0E006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:08:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jul 2012 11:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="188062109"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2012 11:08:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:07:48 -0500
Message-Id: <c05a68cd5ccc821f85a7764fad594a5a493a52fd.1341329269.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
References: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341329269.git.tom.zanussi@intel.com>
References: <cover.1341329269.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Tue, 03 Jul 2012 18:08:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Otherwise we get the sysroot path appended to the build path, not what
we want.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index f966313..15ec207 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -954,7 +954,7 @@ install: all
 	$(INSTALL) scripts/python/bin/* -t '$(DESTDIR_SQ)$(perfexec_instdir_SQ)/scripts/python/bin'
 
 install-python_ext:
-	$(PYTHON_WORD) util/setup.py --quiet install --root='/$(DESTDIR_SQ)'
+	$(PYTHON_WORD) util/setup.py --quiet install --prefix='$(DESTDIR_SQ)/usr'
 
 install-doc:
 	$(MAKE) -C Documentation install
-- 
1.7.0.4


