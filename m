Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C5744C80AE6
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 21:32:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jul 2011 19:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,523,1304319600"; d="scan'208";a="29662682"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.13.215])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2011 19:32:33 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jul 2011 19:32:26 -0700
Message-Id: <cover.1310524088.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] Enable network sanity checks
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
X-List-Received-Date: Wed, 13 Jul 2011 02:32:34 -0000

Add some CONNECTIVITY_CHECK_URIS to local.conf.sample such that the network
sanity checks are enabled for http, https and git sources.

The following changes since commit 7354fc9213f27aa1b643dbe88070437f1ee4c063:

  insane.bbclass: skip rdepends QA checks for kernel / modules (2011-07-12 15:22:09 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib josh/sanity
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/sanity

Joshua Lock (1):
  local.conf.sample: add CONNECTIVITY_CHECK_URIS

 meta-yocto/conf/local.conf.sample |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

-- 
1.7.6


