Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1343EE00771
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2011 09:05:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2011 09:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,334,1312182000"; d="scan'208";a="48266235"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2011 09:05:27 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 05 Sep 2011 11:05:01 -0500
Message-ID: <1315238701.31478.199.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 0/3][KERNEL] linux-yocto-3.0/yocto/standard/base: re-enable utrace
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
X-List-Received-Date: Mon, 05 Sep 2011 16:05:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This patchset re-enables utrace.  Tested on qemuppc, qemux86, qemux86-64,
qemuarm (where it doesn't work, as expected - utrace doesn't currently
support arm), and sugarbay.

These patches are taken from the utrace-3.0 branch of the utrace git repo at
git://git.kernel.org/pub/scm/linux/kernel/git/oleg/misc.git.

Please pull into linux-yocto-3.0/meta.

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git utrace-yocto/standard/base
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=utrace-yocto/standard/base

Oleg Nesterov (2):
  ptrace: temporary revert the recent ptrace/jobctl rework
  tracehooks: preparation for ptrace-utrace

Roland McGrath (1):
  utrace core

 Documentation/DocBook/Makefile    |    2 +-
 Documentation/DocBook/utrace.tmpl |  589 +++++++++
 fs/exec.c                         |    1 -
 fs/proc/array.c                   |    3 +
 include/linux/ptrace.h            |    2 +
 include/linux/sched.h             |   23 +-
 include/linux/tracehook.h         |  122 ++-
 include/linux/utrace.h            |  692 +++++++++++
 init/Kconfig                      |    9 +
 kernel/Makefile                   |    1 +
 kernel/exit.c                     |   77 +-
 kernel/fork.c                     |    3 +
 kernel/ptrace.c                   |  118 +--
 kernel/signal.c                   |  341 ++----
 kernel/utrace.c                   | 2440 +++++++++++++++++++++++++++++++++++++
 15 files changed, 3986 insertions(+), 437 deletions(-)
 create mode 100644 Documentation/DocBook/utrace.tmpl
 create mode 100644 include/linux/utrace.h
 create mode 100644 kernel/utrace.c




