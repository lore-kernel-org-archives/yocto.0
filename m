Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBEC34C808B6
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2011 09:33:35 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Jun 2011 07:33:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,309,1304319600"; 
   d="scan'208";a="5947639"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.204])
	by azsmga001.ch.intel.com with ESMTP; 02 Jun 2011 07:33:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Jun 2011 15:32:05 +0100
Message-Id: <cover.1307024851.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2] meta-intel: minor layer fixes
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
X-List-Received-Date: Thu, 02 Jun 2011 14:33:36 -0000

A couple of minor things I uncovered whilst working on the layer tools.

Paul Eggleton (2):
  meta-emenlow: remove obsolete bbappends
  meta-crownbay: tidy up layer configuration

 meta-crownbay/conf/layer.conf                      |    6 +-----
 .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ----
 .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 --
 3 files changed, 1 insertions(+), 11 deletions(-)
 delete mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
 delete mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend

-- 
1.7.4.1


