Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B65844C80095
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 02:41:20 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2011 00:41:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,513,1304319600"; d="scan'208";a="28808440"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2011 00:41:19 -0700
From: Ke Liping <liping.ke@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2011 15:31:30 +0800
Message-Id: <cover.1310365020.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2][Image Creator] Hob Cache for speed up switching
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
X-List-Received-Date: Mon, 11 Jul 2011 07:41:21 -0000

From: Liping Ke <liping.ke@intel.com>

The two patches are the implmentation of Hob Cache for accelarating
UI switching. If one configuration has been saved before, when user
switch back to the same configuration combination, we will use the
cache content instead of re-triggering parsing/loading phase.

The following changes since commit f974868cadf74d0cf8380b2c6a4152d2fa4590b5:
  Saul Wold (1):
        libx11: ensure nativesdk uses correct DEPENDS and XCB flags

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib lke/hob_cache
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/hob_cache

Liping Ke (2):
  Use Pref as the centralized place for storing Hob attributes
  Cache target dependency tree for Hob

 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |   19 ++++++++++++++++---
 bitbake/lib/bb/ui/crumbs/hobprefs.py        |    3 ++-
 bitbake/lib/bb/ui/crumbs/tasklistmodel.py   |    5 +++++
 bitbake/lib/bb/ui/hob.py                    |   24 +++++++++++++++++++++---
 4 files changed, 44 insertions(+), 7 deletions(-)


