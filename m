Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EB8EE00596
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 10:39:30 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2012 10:39:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="100085962"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2012 10:39:28 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 26 Jan 2012 10:38:13 -0800
Message-Id: <cover.1327602562.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [meta-intel] [PATCH 0/1] meta-cedartrail: Add smp feature for rt kernel build
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
X-List-Received-Date: Thu, 26 Jan 2012 18:39:30 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>


Hi,

The patch is for enabling the smp feature for the rt kernel build for the Cedartrail BSP.

Please pull into master.

Thanks
Kishore.

The following changes since commit 3f86785a9a510773ca9eb7b31903f90ac78a297e:

  meta-cedartrail: update linux-yocto-3.0 SRCREVs (2012-01-24 23:04:15 -0600)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/enable-smp-rt-fix
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/enable-smp-rt-fix

Kishore Bodke (1):
  meta-cedartrail: enable smp for linux-yocto-rt_3.0

 .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

-- 
1.7.5.4


