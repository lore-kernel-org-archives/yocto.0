Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FF7E0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2012 18:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151639824"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2012 18:00:06 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:03 -0500
Message-Id: <cover.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/10][KERNEL][RFC] policy cleanup patches
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
X-List-Received-Date: Fri, 11 May 2012 01:00:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This set of patches factors out the policy vs hardware-related config
of the common-pc and common-pc-64 along with some meta-intel BSPs.

There are also a couple usb cleanups as well.

This is an RFC patchset because it's completely untested at this
point so shouldn't be pulled in - I wanted to get this pre-NAKed
at least once before actually going through the trouble of testing.  ;-)

Tom

The following changes since commit 1dfd60fa1250259eed38ae5b2840eb37e3758a1b:
  Tom Zanussi (1):
        meta/fishriver: move smp options from recipe-space

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/policy-cleanup
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/policy-cleanup

Tom Zanussi (10):
  meta: add ROOT_HUB_TT config option to the usb/ehci-hcd feature
  meta/common-pc: use usb features
  meta/common-pc-64: use usb features
  meta/common-pc: factor out policy-related options
  meta/common-pc: factor out policy-related options
  meta/crownbay: factor out policy-related options
  meta/emenlow: factor out policy-related options
  meta/emenlow: factor out policy-related options
  meta/jasperforest: factor out policy-related options
  meta/sugarbay: factor out policy-related options

 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    6 ++++++
 .../bsp/common-pc-64/common-pc-64-standard.scc     |    6 ++++++
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    3 ---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    8 ++------
 .../bsp/common-pc/common-pc-preempt-rt.scc         |    7 +++++++
 .../bsp/common-pc/common-pc-standard.scc           |    6 ++++++
 .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    5 -----
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    6 ++----
 .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
 .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    7 -------
 .../bsp/emenlow/emenlow-preempt-rt.scc             |    8 ++++++++
 .../kernel-cache/bsp/emenlow/emenlow-standard.scc  |    8 ++++++++
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    7 -------
 .../bsp/fishriver/fishriver-preempt-rt.scc         |    8 ++++++++
 .../bsp/fishriver/fishriver-standard.scc           |    8 ++++++++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    7 -------
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    7 +++++++
 .../bsp/jasperforest/jasperforest-standard.scc     |    6 ++++++
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ------
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    7 +++++++
 .../bsp/sugarbay/sugarbay-standard.scc             |    6 ++++++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    6 ------
 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg    |    1 +
 25 files changed, 104 insertions(+), 55 deletions(-)


