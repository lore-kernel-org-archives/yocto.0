Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF52E013D2
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 17:01:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Oct 2012 17:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,609,1344236400"; d="scan'208";a="235764533"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2012 17:01:02 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 18 Oct 2012 17:00:01 -0700
Message-Id: <cover.1350604720.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] meta-intel: mesa-dri build warning fix
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
X-List-Received-Date: Fri, 19 Oct 2012 00:01:02 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Only one commit in this pull request to avoid the mes-dri build time warning.

Thanks,
Nitin

The following changes since commit 69c3e43be6f493844a2f432ea0a56c2f6619ca00:

  meta-cedartrail: Add development packages to pvr driver recipe (2012-10-18 09:08:07 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (1):
  mesa-dri.bbappend: avoid buildtime warnings

 .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend

-- 
1.7.3.4


