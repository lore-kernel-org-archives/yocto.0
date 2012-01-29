Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E80D5E006B0
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 20:31:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2012 20:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111722017"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.146])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2012 20:31:15 -0800
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Sun, 29 Jan 2012 12:29:56 +0800
Message-Id: <cover.1327808192.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH V2 0/1] Change default signature handler
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
X-List-Received-Date: Sun, 29 Jan 2012 04:31:17 -0000

Fixed bug #1555.

Changed the default handler to OEBasicHash for poky distro. Also added some 
descriptive comment in local.conf.extended.

The following changes since commit 636d7e308fefe7cca67166d564c3a8f877f2ca86:
  Richard Purdie (1):
        useradd.bbclass: Fix missing quote

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib llu/bug1555
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug1555

Lianhao Lu (1):
  meta-yocto/conf: Change default signature handler.

 meta-yocto/conf/distro/poky.conf           |    2 ++
 meta-yocto/conf/local.conf.sample.extended |    6 +++++-
 2 files changed, 7 insertions(+), 1 deletions(-)


