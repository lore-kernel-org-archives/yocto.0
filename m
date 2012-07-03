Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2943E006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:09:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2012 11:09:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="166453190"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2012 11:09:57 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:09:55 -0500
Message-Id: <cover.1341337455.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] linux-yocto-3.2/meta: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 18:09:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset enables FTRACE_SYSCALLS, used by some existing perf scripts.

Please pull into linux-yocto-3.2.

Thanks,

Tom

Tom Zanussi (1):
  features/ftrace: enable FTRACE_SYSCALLS

 meta/cfg/kernel-cache/features/ftrace/ftrace.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


