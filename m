Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01F27E006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:08:32 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Jul 2012 11:08:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="163667917"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by azsmga001.ch.intel.com with ESMTP; 03 Jul 2012 11:08:31 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:08:30 -0500
Message-Id: <cover.1341337852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] linux-yocto-3.4/meta: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 18:08:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset enables FTRACE_SYSCALLS, used by some existing perf scripts.

Please pull into linux-yocto-3.4.

Thanks,

Tom

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/3.4-perf-scripting-meta
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/3.4-perf-scripting-meta

Tom Zanussi (1):
  features/ftrace: enable FTRACE_SYSCALLS

 meta/cfg/kernel-cache/features/ftrace/ftrace.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


