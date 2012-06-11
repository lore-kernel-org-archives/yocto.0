Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CF69E0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 13:49:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jun 2012 13:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="156314346"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 11 Jun 2012 13:49:58 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon, 11 Jun 2012 13:42:23 -0700
Message-Id: <cover.1339447204.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [KERNEL 0/1] remove rc6 patches from meta branch
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
X-List-Received-Date: Mon, 11 Jun 2012 20:49:58 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

These patches are already part of v3.4 kernel sources. So there is no need to
maintain them in the yocto linux 3.4 repository.

Thanks,
Nitin
PS: this is resend of earlier pull request with proper email formats.

The following changes since commit 3fd089debe624c642d7b4d9363f853021d1675b2:

  checkpoint dir: meta (2012-06-06 16:24:42 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/meta
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/meta

Nitin A Kamble (1):
  meta: remove rc6 patches for snb

 .../features/tmp/rc6/rc6-kernel-params.patch       |   81 --------------------
 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc     |    5 -
 .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch  |   26 ------
 .../features/tmp/rc6/snb-disable-rc6p.patch        |   39 ----------
 .../features/tmp/rc6/snb-enable-rc6.patch          |   54 -------------
 5 files changed, 0 insertions(+), 205 deletions(-)
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch

-- 
1.7.3.4


