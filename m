Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B5324C80053
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 14:20:21 -0500 (CDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2011 12:20:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; 
   d="scan'208";a="3494805"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Aug 2011 12:20:20 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2011 14:20:10 -0500
Message-Id: <cover.1312312425.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: fix crownbay grub problem
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
X-List-Received-Date: Tue, 02 Aug 2011 19:20:22 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fix for yocto bug #1257: broken grub due to wrong root path.

The following changes since commit 96c247dad88b9fc0159b2a929216876d9fbb06dc:
  Tom Zanussi (1):
        meta-emenlow: fix glx bug

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/yocto-1257-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/yocto-1257-fix

Tom Zanussi (1):
  meta-crownbay: fix BBFILES in crownbay layer.conf

 meta-crownbay/conf/layer.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


