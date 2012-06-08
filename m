Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC81E01437
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 15:25:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Jun 2012 15:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109855186"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Jun 2012 15:25:30 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri,  8 Jun 2012 15:18:08 -0700
Message-Id: <cover.1339191831.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] a fix for poky-tiny
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
X-List-Received-Date: Fri, 08 Jun 2012 22:25:31 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 0612cf3fcb3365e7721a2d5c331f8cd2647ae60b:

  hob2: create a standalone deploy image tool (2012-06-08 12:13:43 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib master+work
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=master+work

Nitin A Kamble (1):
  eglibc: remove runtime dependency of perl from eglibc-mtrace

 meta/recipes-core/eglibc/eglibc-package.inc |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

-- 
1.7.3.4


