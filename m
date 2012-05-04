Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F20EE0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 11:57:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2012 11:57:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139016207"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.112])
	by azsmga001.ch.intel.com with ESMTP; 04 May 2012 11:57:03 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Fri,  4 May 2012 11:55:49 -0700
Message-Id: <cover.1336157346.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [meta-intel] Cedartrail: Update SRCREV of yocto/pvr kernel branch
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
X-List-Received-Date: Fri, 04 May 2012 18:57:04 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This patch is to update the SRCREVs for the yocto/pvr
to pull in the new kernel patches.

Please pull into meta-intel/denzil.

Thanks
Kishore.

The following changes since commit bde31fd7e66faea865d24ff0858a9006b89e4e54:

  meta-emenlow: update kernel SRCREVs (2012-04-26 15:24:31 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/denzil
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/denzil

Kishore Bodke (1):
  Cedartrail: Update SRCREV of yocto/pvr kernel branch

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
1.7.9.5


