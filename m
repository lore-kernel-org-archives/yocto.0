Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 874664C80AAF
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2011 08:43:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 06:43:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="721605852"
Received: from unknown (HELO localhost) ([10.255.16.25])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 06:43:41 -0700
Message-Id: <cover.1300455727.git.josh@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 13:42:07 +0000
Date: Fri, 18 Mar 2011 13:43:35 +0000
To: yocto@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Remove duplicate PACKAGE_EXTRA_ARCHS for Emenlow
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
X-List-Received-Date: Fri, 18 Mar 2011 13:43:42 -0000

From: Joshua Lock <josh@linux.intel.com>

These duplicates cause problems at least at rootfs creation

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/bernard-emen
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/bernard-emen

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  emenlow.conf: no need to set PACKAGE_EXTRA_ARCHS

 meta-emenlow/conf/machine/emenlow.conf |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

-- 
1.7.4


