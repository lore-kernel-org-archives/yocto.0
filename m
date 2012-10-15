Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 626A1E00293
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:33:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Oct 2012 12:33:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,590,1344236400"; d="scan'208";a="234186639"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2012 12:33:14 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 15 Oct 2012 12:34:27 -0700
Message-Id: <cover.1350329479.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [meta-intel] meta-crystalforest: Update SRCREVs for meta
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
X-List-Received-Date: Mon, 15 Oct 2012 19:33:39 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This updates the SRCREVs of meta branch to include the
new PCI config options added to the Crystal Forest branch.

Please pull them into meta-intel/master.

Thanks
Kishore.

The following changes since commit f521abf424beb841fed85107e79f37b618c3e833:

  emgd-driver-bin: add custom-licenses dir for emgd recipe Licenses (2012-10-12 08:41:50 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib Kishore/CRF-srcrev
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CRF-srcrev

Kishore Bodke (1):
  meta-crystalforest: Update SRCREV for meta.

 .../linux/linux-yocto-rt_3.4.bbappend              |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.9.5


