Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9E87E00771
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2011 09:06:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Sep 2011 09:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="45411019"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 05 Sep 2011 09:06:02 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 05 Sep 2011 11:05:36 -0500
Message-ID: <1315238736.31478.204.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 3/3][KERNEL] utrace core
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
X-List-Received-Date: Mon, 05 Sep 2011 16:06:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This adds the utrace facility, a new modular interface in the kernel for
implementing user thread tracing and debugging.  This fits on top of the
tracehook_* layer, so the new code is well-isolated.

The new interface is in <linux/utrace.h> and the DocBook utrace book
describes it.  It allows for multiple separate tracing engines to work in
parallel without interfering with each other.  Higher-level tracing
facilities can be implemented as loadable kernel modules using this layer.

The new facility is made optional under CONFIG_UTRACE.
When this is not enabled, no new code is added.
It can only be enabled on machines that have all the
prerequisites and select CONFIG_HAVE_ARCH_TRACEHOOK.

In this initial version, utrace and ptrace do not play together at all.
The next patch reworks ptrace to use the utrace API.

Signed-off-by: Roland McGrath <roland@redhat.com>
Signed-off-by: Oleg Nesterov <oleg@redhat.com>
Integrated-by: Tom Zanussi <tom.zanussi@intel.com>
---
 Documentation/DocBook/Makefile    |    2 +-
 Documentation/DocBook/utrace.tmpl |  589 +++++++++
 fs/proc/array.c                   |    3 +
 include/linux/sched.h             |    5 +
 include/linux/tracehook.h         |   87 ++-
 include/linux/utrace.h            |  692 +++++++++++
 init/Kconfig                      |    9 +
 kernel/Makefile                   |    1 +
 kernel/fork.c                     |    3 +
 kernel/utrace.c                   | 2440 +++++++++++++++++++++++++++++++++++++
 10 files changed, 3829 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/DocBook/utrace.tmpl
 create mode 100644 include/linux/utrace.h
 create mode 100644 kernel/utrace.c


Patch too large to post here, see git repo.


