Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB03E006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:09:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2012 11:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="161052938"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by orsmga001.jf.intel.com with ESMTP; 03 Jul 2012 11:09:23 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:09:21 -0500
Message-Id: <cover.1341337418.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4] linux-yocto-3.2/standard/base: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 18:09:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset comprises the kernel side of the modifications needed to
enable the Perl and Python bindings for perf scripting.

Please pull into linux-yocto-3.2 standard/base.

Thanks,

Tom

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/3.2-perf-scripting-standard-base
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/3.2-perf-scripting-standard-base

Tom Zanussi (4):
  Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
  perf: use pkg-config instead of python-config
  perf: add 'libperl not found' warning
  perf: change --root to --prefix for python install

 tools/perf/Makefile |   90 +++++++++++++++++++++++++++++++++++++++++++++++++--
 1 files changed, 87 insertions(+), 3 deletions(-)


