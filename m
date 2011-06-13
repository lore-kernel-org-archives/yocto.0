Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26C684C800B3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 09:35:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jun 2011 07:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="11905094"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by azsmga001.ch.intel.com with ESMTP; 13 Jun 2011 07:35:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2011 09:35:33 -0500
Message-Id: <cover.1307975029.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [KERNEL][PATCH] add utrace feature
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
X-List-Received-Date: Mon, 13 Jun 2011 14:35:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a utrace feature, in support of userspace tracing for systemtap.

It's been tested on actual x86 and x86-64 hardware, as well as qemux86-64
and qemuppc (utrace doesn't currently have support for arm or mips).

A couple examples with output have been added to the systemtap entry in
the tracing and profiling section of the Yocto wiki:

https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling#systemtap

Please pull into the meta branch of linux-yocto.

Tom Zanussi (1):
  meta: add utrace feature for linux-yocto

 meta/cfg/kernel-cache/features/utrace/utrace.cfg   |    1 +
 meta/cfg/kernel-cache/features/utrace/utrace.scc   |    2 ++
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 3 files changed, 6 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/utrace/utrace.cfg
 create mode 100644 meta/cfg/kernel-cache/features/utrace/utrace.scc


