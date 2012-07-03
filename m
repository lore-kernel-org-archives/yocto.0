Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53FFBE01421
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:07:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jul 2012 11:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173048601"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2012 11:07:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:07:47 -0500
Message-Id: <cc8ddf0f79c95124adfb712e74693499f04352de.1341329269.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
References: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341329269.git.tom.zanussi@intel.com>
References: <cover.1341329269.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] perf: add 'libperl not found' warning
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
X-List-Received-Date: Tue, 03 Jul 2012 18:07:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If libperl isn't found, display a message to that effect along with
some hints on how to fix it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index 35425ab..f966313 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -549,6 +549,7 @@ else
 	FLAGS_PERL_EMBED=$(PERL_EMBED_CCOPTS) $(PERL_EMBED_LDOPTS)
 
 	ifneq ($(call try-cc,$(SOURCE_PERL_EMBED),$(FLAGS_PERL_EMBED)),y)
+		msg := $(warning libperl not found, disables Perl scripting support. Please install libperl-dev or perl-devel);
 		BASIC_CFLAGS += -DNO_LIBPERL
 	else
                ALL_LDFLAGS += $(PERL_EMBED_LDFLAGS)
-- 
1.7.0.4


