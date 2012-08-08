Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A13AE01385
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:22:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Aug 2012 13:22:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="194777762"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2012 13:21:46 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:40 -0500
Message-Id: <cover.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 00/13][denzil] yocto-bsp updates for denzil
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
X-List-Received-Date: Wed, 08 Aug 2012 20:22:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes yocto bugs [YOCTO #2693] and [YOCTO #2587], and
fixes some other minor usability problems reported by users.

Please pull into the current poky/denzil point release branch.

The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:

  documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-denzil-update
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-denzil-update

Tom Zanussi (13):
  yocto-bsp: add new strip_base() function
  yocto-bsp: strip '/base' from kernel branches in templates
  yocto-bsp: update default branch names
  yocto-bsp: allow branch display filtering
  yocto-bsp: use branches_base
  yocto-bsp: add standard branch mapping
  yocto-bsp: use standard branch mapping in bsp templates
  yocto-bsp: use rstrip() for assignment lines
  yocto-bsp: remove 'branch' statements in .scc if reusing branch
  yocto-bsp: add some standard policy
  yocto-bsp: add i586 option for i386
  yocto-bsp: use emgd 1.10 for i386 template
  yocto-bsp: generate default properties even if json specified

 scripts/lib/bsp/engine.py                          |   44 ++++++++++++++++++-
 scripts/lib/bsp/kernel.py                          |   18 ++++++++
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 .../arch/i386/conf/machine/{{=machine}}.conf       |   14 ++++--
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
 .../linux/files/{{=machine}}-standard.scc          |   14 ++++++-
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    2 +-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +--
 .../linux/files/{{=machine}}-standard.scc          |    9 +---
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   24 +++++-----
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   24 +++++-----
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   24 +++++-----
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   24 +++++-----
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
 .../linux/files/{{=machine}}-standard.scc          |   10 ++++-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
 37 files changed, 240 insertions(+), 149 deletions(-)

-- 
1.7.4.1


