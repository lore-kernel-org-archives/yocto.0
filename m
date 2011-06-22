Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A99024C8005F
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 16:39:59 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5MLdQb4005947;
	Wed, 22 Jun 2011 14:39:26 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 22 Jun 2011 17:37:16 -0400
Message-Id: <cover.1308778240.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, saul.wold@intel.com
Subject: [PATCH 0/1] meta-yocto/linux-yocto: BSP SRCREV updates
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
X-List-Received-Date: Wed, 22 Jun 2011 21:39:59 -0000

This is the merge request for Darren's update beagleboard
support (and update to the other BSPs that picked up 
the common USB patch).

This is based on the meta updates that went out to the oe-core
list in a separate pull request.

cc: Darren Hart <dvhart@linux.intel.com>


The following changes since commit 3d6054040479ae77c7de24721ff822c1b09291c6:
  Bruce Ashfield (1):
        linux-yocto: update meta and yocto/standard SRCREVs

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update yocto/standard and beagleboard SRCREVs

 .../linux/linux-yocto_2.6.37.bbappend              |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)


