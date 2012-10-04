Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11E24E0146B
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 13:17:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Oct 2012 13:17:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="220318413"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 04 Oct 2012 13:17:43 -0700
From: nitin.a.kamble@intel.com
To: darren.hart@intel.com,
	tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 13:16:31 -0700
Message-Id: <cover.1349381455.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] meta-intel misc commits
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
X-List-Received-Date: Thu, 04 Oct 2012 20:17:44 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Here is a commit to add a kernel parameter to crownbay BSP. It is recommended
in the EMGD 1.14 User Guide for video acceleration with the EMGD driver.

Darren,
  Other EMGD based BSPs like FRI2 & sys940x should add the vmalloc=256MB kernel
parameter too. (not needed for noemgd BSPs)

Thanks,
Nitin

The following changes since commit bc6f631c1eaa7154e667325da8fd636a05628f87:

  jasperforest: uprev v3.4 kernel commit ids (2012-10-04 14:21:55 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/misc
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc

Nitin A Kamble (1):
  crownbay.conf: add kernel parameters for EMGD video acceleration

 meta-crownbay/conf/machine/crownbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.3.4


