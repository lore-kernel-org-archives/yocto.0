Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24E6FE013BB
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2012 14:49:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2012 14:49:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153141779"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.91])
	by azsmga001.ch.intel.com with ESMTP; 07 Jun 2012 14:49:48 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	nitin.a.kamble@intel.com
Date: Thu,  7 Jun 2012 14:48:15 -0700
Message-Id: <cover.1339105415.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [meta-intel] meta-cedartrail: update SRCREV
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
X-List-Received-Date: Thu, 07 Jun 2012 21:49:49 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Removed the kernel feature set from the BSP area.
These have been added to kernel meta branch.
So update the SRCREV for meta to pull in these changes.

Please pull into meta-intel/denzil.

Thanks
Kishore.

The following changes since commit 8bc2fa135060e941bcbb4dcfb664e175a3eb871d:

  meta-fri2: add video acceleration (2012-06-06 16:16:24 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-update
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-update

Kishore Bodke (1):
  meta-cedartrail: update SRCREV

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

-- 
1.7.9.5


