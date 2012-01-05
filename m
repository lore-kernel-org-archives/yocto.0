Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 916B5E0030C
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 15:38:05 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2012 15:38:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="94983389"
Received: from unknown (HELO localhost) ([10.19.147.21])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2012 15:38:04 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Khem Raj <raj.khem@gmail.com>, Yocto Project <yocto@yoctoproject.org>,
	Chris Larson <kergoth@gmail.com>, philb@gnu.org,
	Koen Kooi <koen@dominion.thruhere.net>
Date: Thu,  5 Jan 2012 15:37:34 -0800
Message-Id: <cover.1325806059.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/1] Restore poky-tiny without eglibc wchar changes
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
X-List-Received-Date: Thu, 05 Jan 2012 23:38:05 -0000

Restore the poky-tiny distro definition addressing concerns raised on the list.
Rather than conditionally drop eglibc-utils based on wchar support, this
version sets USE_NLS="no" in the distro config to avoid pulling in gettext.

Also addresses some confusion over the "All rights reserved." statement by
explicitly referencing the MIT license.

The following changes since commit 7f837eb05f924996c89283ec8b74e46f6b5cd343:

  bitbake/runqueue: Improve the setscene logging (2012-01-05 13:04:19 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny

Darren Hart (1):
  distro: Add poky-tiny distro definition

 meta-yocto/conf/distro/poky-tiny.conf |  110 +++++++++++++++++++++++++++++++++
 1 files changed, 110 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/conf/distro/poky-tiny.conf

-- 
1.7.6.4


