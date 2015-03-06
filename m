Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC690E00712; Fri,  6 Mar 2015 07:35:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B03E00321
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2015 07:35:48 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 06 Mar 2015 07:30:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,353,1422950400"; d="scan'208";a="463496594"
Received: from linux.intel.com ([10.23.219.25])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Mar 2015 07:29:23 -0800
Received: from ed.fi.intel.com (ed.fi.intel.com [10.237.72.59])
	by linux.intel.com (Postfix) with ESMTP id 0942C300001;
	Fri,  6 Mar 2015 07:35:31 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  6 Mar 2015 17:35:43 +0200
Message-Id: <1425656143-19157-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
Subject: [PATCH] yocto-project-qs: update OpenSUSE essentials
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
X-List-Received-Date: Fri, 06 Mar 2015 15:35:49 -0000

Replaced texinfo -> makeinfo in the list of essential packages for
OpenSUSE.

texinfo was in the essentials to only provide makeinfo utility.
/usr/bin/makeinfo is provided by makeinfo package on OpenSUSE distro, so
it's enough to install makeinfo to be able to build poky.

This change reduces number of packages installed on the host system as
installing texinfo causes installation of around 1500 texlive-*
packages and requires around 1Gb of additional disk space on OpenSUSE.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/poky.ent | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/poky.ent b/documentation/poky.ent
index 2d5bd38..7b44d24 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -63,6 +63,6 @@
      diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath \
      ccache perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue socat">
 <!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL "python gcc gcc-c++ git chrpath make wget python-xml \
-     diffstat texinfo python-curses patch socat">
+     diffstat makeinfo python-curses patch socat">
 <!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip python unzip perl patch \
      diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath socat">
-- 
1.8.4.5


