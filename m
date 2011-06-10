Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7C6C4C800E0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 12:47:49 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jun 2011 10:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; d="scan'208";a="14885690"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.133])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2011 10:47:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Jun 2011 18:47:32 +0100
Message-Id: <cover.1307727998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1] meta-intel: fix formfactor bbappends to use FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Fri, 10 Jun 2011 17:47:50 -0000

The following changes since commit 01d1a545477cbc1b2a1da5b66edb52fd9e783206:

  meta-intel: update kernel SRCREVs (2011-06-06 16:13:01 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/meta-intel-paths
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/meta-intel-paths

Paul Eggleton (1):
  meta-intel: fix formfactor bbappends to use FILESEXTRAPATHS_prepend

 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.4.1


