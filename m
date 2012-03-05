Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D289AE013BA
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 20:07:07 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-d3.ottawa.windriver.com [128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q254743T003038;
	Sun, 4 Mar 2012 20:07:05 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun,  4 Mar 2012 23:06:48 -0500
Message-Id: <cover.1330920120.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update kernel SRCREVs
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
X-List-Received-Date: Mon, 05 Mar 2012 04:07:07 -0000

Richard/Saul,

The hardware reference platforms need to be updated to the most recent linux-yocto
changes in oe-core.

The commit message has all the details:

This is an update of the linux-yocto 3.0 and 3.2 SRCREVs to bring
in the following updates:

   - v3.0.23 stable update
   - v3.2.9 stable update
   - 3.0/3.2: fri2 updates (pch + configuration changes) from Darren Hart
   - 3.0: pvr merge from Kishore Bodke
   - linux-yocto/rt: update to 3.0.23-rt38
   - linux-yocto/rt: update to 3.2.9-rt15

These have been built for all qemu targets, and built for the appropriate
hardware platforms.

** Hardware platforms and layers that I don't have visibility into or don't
   typically update .. should be updated to match these SRCREVs.

cc: Tom Zanussi <tom.zanussi@intel.com>
cc: Darren Hart <dvhart@linux.intel.com>

Cheers,

Bruce

The following changes since commit a1ed2ace8b2f1fdab2c17a570f612b58f17fca7b:

  linux-yocto: v3.2.9, v3.0.23 + fixes and updates (2012-03-04 22:44:23 -0500)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: v3.2.9, v3.0.23 + fixes and updates

 .../linux/linux-yocto-rt_3.0.bbappend              |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

-- 
1.7.4.1


