Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CAA44C800A3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 09:35:15 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2011 07:35:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="12903555"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by orsmga002.jf.intel.com with ESMTP; 13 Jun 2011 07:35:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2011 09:35:11 -0500
Message-Id: <cover.1307970929.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [KERNEL][PATCH] add utrace
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
X-List-Received-Date: Mon, 13 Jun 2011 14:35:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds support for utrace to linux-yocto, for userspace tracing
in systemtap.

Please pull into the yocto/base branch linux-yocto.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/yocto/base-utrace
  Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto/base-utrace

Tom Zanussi (1):
  utrace: support for user space probing/tracing

 Documentation/DocBook/Makefile    |    2 +-
 Documentation/DocBook/utrace.tmpl |  589 +++++++++
 fs/proc/array.c                   |    3 +
 include/linux/ptrace.h            |    1 +
 include/linux/sched.h             |    6 +
 include/linux/tracehook.h         |   97 ++-
 include/linux/utrace.h            |  692 +++++++++++
 init/Kconfig                      |    9 +
 kernel/Makefile                   |    1 +
 kernel/fork.c                     |    3 +
 kernel/ptrace.c                   |   16 +-
 kernel/signal.c                   |    4 +-
 kernel/utrace.c                   | 2440 +++++++++++++++++++++++++++++++++++++
 13 files changed, 3853 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/DocBook/utrace.tmpl
 create mode 100644 include/linux/utrace.h
 create mode 100644 kernel/utrace.c


