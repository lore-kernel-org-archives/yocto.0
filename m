Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A238BE007BA; Tue, 14 Feb 2017 14:37:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E289FE00726;
	Tue, 14 Feb 2017 14:37:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2017 14:37:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,163,1484035200"; d="scan'208";a="44502744"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2017 14:37:07 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: jianxun.zhang@linux.intel.com, yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
Date: Tue, 14 Feb 2017 14:36:49 -0800
Message-Id: <20170214223652.88931-3-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170214223652.88931-1-todor.minchev@linux.intel.com>
References: <20170214223652.88931-1-todor.minchev@linux.intel.com>
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH v3 2/5] Makefile: add debug target
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
X-List-Received-Date: Tue, 14 Feb 2017 22:37:09 -0000

A debug version of the rmc binary can be built by using the debug
Makefile target. This will include debug symbols and will disable
compiler optimizations.

Example:

make debug

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Makefile b/Makefile
index c58047a..fdd936f 100644
--- a/Makefile
+++ b/Makefile
@@ -23,6 +23,8 @@ ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
 RMC_CFLAGS := -Wall -I$(TOPDIR)/inc
 
 all: rmc
+debug: RMC_CFLAGS += -DDEBUG -g -O0
+debug: rmc
 
 $(ALL_OBJS): %.o: %.c
 	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
-- 
2.11.1


