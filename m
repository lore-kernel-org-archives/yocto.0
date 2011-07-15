Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 963DB4C80FE0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 00:27:01 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-217.ottawa.windriver.com [128.224.146.217])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6F5QvKK008920;
	Thu, 14 Jul 2011 22:26:57 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 15 Jul 2011 01:26:55 -0400
Message-Id: <cover.1310707201.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <\>
References: <\>
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta: update SRCREVs
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
X-List-Received-Date: Fri, 15 Jul 2011 05:27:02 -0000

This is a repeat of the oe-core version of the patch, here's
the duplicate text:
    
The patch itself says it all, but here's an update to the 2.6.37
kernel that fixes a few issues. No sense sitting on this until
3.0 is ready, but these same fixes have already been applied
to the dev kernel as well.

The first change is to meta, to address a couple of bugs with
the routerstation pro:

 Fixes bug [YOCTO #1161]
 Fixes bug [YOCTO #773]

This streamlines the routerstation pro configuration to remove options
that are either unecessary or that are causing bugs.

Also added to all branches is:

  commit ffd73d6b2a9bfa0de5710b90a2237f4be66ae9a7
  Author: Yinghai Lu <yinghai@kernel.org>
  Date:   Thu Jul 14 15:27:44 2011 -0700

    mm: use alloc_bootmem_node_nopanic() on really needed path

    commit 8f389a99b652aab5b42297280bd94d95933ad12f upstream.

Which is a commit from Darren that he needed when working on the
boot/footprint efforts.

The following changes since commit f45c49d19403be3291ec2a144401c379ab0b0476:

  linux-yocto/meta: update meta SRCREV for routerstation pro (2011-07-15 00:57:11 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update SRCREVS

 .../linux/linux-yocto_2.6.37.bbappend              |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

-- 
1.7.4.1


