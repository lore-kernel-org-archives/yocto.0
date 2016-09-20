Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CC07E00B7A; Tue, 20 Sep 2016 08:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F740E00B5F
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 08:23:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8KFN0sP018575
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 20 Sep 2016 08:23:00 -0700
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Tue, 20 Sep 2016 08:22:59 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 20 Sep 2016 11:22:56 -0400
Message-ID: <cover.1474384870.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/3] yocto-bsp: update h/w reference versions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Sep 2016 15:23:09 -0000
Content-Type: text/plain

Hi all,

As a follow on to the pull request to oe-core, this is an update for the
hardware reference BSPs.

I tweaked the commits from Kevin Hao to have slightly newer SRCREVs, but
they are otherwise unchanged.

With this we shouldn't have mismatches in the PV, and will be building and
booting the latest 4.8 for the reference boards.

Bruce

The following changes since commit 873525ee95491bafa4ea1b36fda251b203637f9e:

  linux-yocto/4.8: introduce preempt-rt (2016-09-20 11:03:57 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Kevin Hao (3):
  meta-yocto-bsp: linux 4.1: bump to the latest stable version for the
    non-x86 BSPs
  meta-yocto-bsp: linux 4.4: bump to the latest stable version for the
    non-x86 BSPs
  meta-yocto-bsp: bump to linux-yocto 4.8 for the non-x86 BSPs

 meta-yocto-bsp/conf/machine/beaglebone.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |  2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 11 +++++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 11 +++++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++++++++
 6 files changed, 29 insertions(+), 11 deletions(-)

-- 
2.5.0


