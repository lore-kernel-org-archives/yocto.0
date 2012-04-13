Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E97DE0059A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 11:27:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Apr 2012 11:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153350686"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.161])
	by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2012 11:27:12 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2012 11:25:49 -0700
Message-Id: <cover.1334341148.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [meta-intel] Romley: Update SRCREV
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
X-List-Received-Date: Fri, 13 Apr 2012 18:27:12 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Updating the SRCREV in linux 3.2 bbappend file 
for including the 82580 Gigabit Ethernet drivers 
from the meta branch for the romley machine. 

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit 15860ffb2164629c27f4bf49614efad5177441c4:

  Cedartrail: Update the README. (2012-04-12 09:09:07 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/romley
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/romley

Kishore Bodke (1):
  Romley: Update SRCREV

 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.5.4


