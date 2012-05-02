Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDDBCE00723
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 14:18:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 May 2012 14:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148656256"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by fmsmga001.fm.intel.com with ESMTP; 02 May 2012 14:18:43 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com,
	bruce.ashfield@windriver.com, kishore.k.bodke@intel.com
Date: Wed,  2 May 2012 14:08:20 -0700
Message-Id: <cover.1335992611.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [meta-intel][PATCH 0/1] Add SRCREV of yocto/pvr kernel branch
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
X-List-Received-Date: Wed, 02 May 2012 21:18:44 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

SRCREV for yocto/pvr was needed after the new rev of the kernel pvr patches were added

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
--

The following changes since commit 0861f2513ebe7e1ad18291664356cfeab3c196b9:

  meta-cedartrail: fix README to state tools-testapps needed for Glxgears (2012-04-16 16:34:31 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-edison3
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-edison3

Rahul Saxena (1):
  meta-cedartrail: add SRCREV of yocto/pvr kernel branch

 .../linux/linux-yocto-rt_3.0.bbappend              |    3 +--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 +++++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

-- 
1.7.4.1


