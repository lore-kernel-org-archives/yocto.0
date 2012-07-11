Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F74AE00342
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:29:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2012 22:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="170273440"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by orsmga002.jf.intel.com with ESMTP; 10 Jul 2012 22:29:11 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Wed, 11 Jul 2012 00:29:01 -0500
Message-Id: <a5dad57c573607e6cf6f325227e787797d1078aa.1341983825.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
References: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341983825.git.tom.zanussi@intel.com>
References: <cover.1341983825.git.tom.zanussi@intel.com>
Subject: [PATCH 4/6] perf: add 'libperl not found' warning
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
X-List-Received-Date: Wed, 11 Jul 2012 05:29:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If libperl isn't found, display a message to that effect along with
some hints on how to fix it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index 3eda00d..6900cda 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -481,6 +481,7 @@ else
 	FLAGS_PERL_EMBED=$(PERL_EMBED_CCOPTS) $(PERL_EMBED_LDOPTS)
 
 	ifneq ($(call try-cc,$(SOURCE_PERL_EMBED),$(FLAGS_PERL_EMBED)),y)
+		msg := $(warning libperl not found, disables Perl scripting support. Please install libperl-dev or perl-devel);
 		BASIC_CFLAGS += -DNO_LIBPERL
 	else
                ALL_LDFLAGS += $(PERL_EMBED_LDFLAGS)
-- 
1.7.0.4


