Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31BBBE00343
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:29:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jul 2012 22:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191104056"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2012 22:29:01 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Wed, 11 Jul 2012 00:29:00 -0500
Message-Id: <cover.1341983825.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Peter Zijlstra <a.p.zijlstra@chello.nl>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Paul Mackerras <paulus@samba.org>, Ingo Molnar <mingo@elte.hu>,
	Jiri Olsa <jolsa@redhat.com>
Subject: [PATCH 0/6][3.0 KERNEL] linux-yocto-3.0 perf-scripting updates
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
X-List-Received-Date: Wed, 11 Jul 2012 05:29:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset comprises the kernel side of the modifications needed to
enable the Perl and Python bindings for perf scripting for
linux-yocto-3.0.

I haven't had time to build-test all four meta-yocto machines that
need this, but I did do a successful build-test of the atom-pc machine
and got the expected perf compile/install results.  I assume that
since it worked for atom-pc it should also work for the other
meta-yocto machines as well.  I don't have the hardware to test
the meta-yocto machines either, but since essentially the same thing
worked fine for the similar set of qemu machines as well as all other
hardware tested so far, we can probably assume the same for these.

Please pull into linux-yocto-3.0 yocto/standard/base.

Thanks,

Tom

The following changes since commit bd6ad607c754dea30d91502a237870b4c45e0f1b:
  Bruce Ashfield (1):
        Merge branch 'yocto/base' into yocto/standard/base

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/perf-features-linux-yocto-3.0
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/perf-features-linux-yocto-3.0

Jiri Olsa (1):
  perf tools: Add support to install perf python extension

Tom Zanussi (5):
  Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
  perf: use pkg-config instead of python-config
  perf: add 'libperl not found' warning
  perf: change --root to --prefix for python install
  perf: add sgidefs.h to for mips builds

 tools/perf/Makefile                                |   96 +++++++++++++++++++-
 .../perf/scripts/python/Perf-Trace-Util/Context.c  |    4 +
 .../util/scripting-engines/trace-event-python.c    |    4 +
 tools/perf/util/setup.py                           |   21 ++++-
 4 files changed, 119 insertions(+), 6 deletions(-)


