Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72A5DE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 16:09:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 16:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138914942"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 16:09:01 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com,
	bruce.ashfield@windriver.com, kishore.k.bodke@intel.com
Date: Tue,  1 May 2012 15:58:40 -0700
Message-Id: <cover.1335911494.git.rahul.saxena@intel.com>
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
X-List-Received-Date: Tue, 01 May 2012 23:09:01 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

SRCREV for yocto/pvr was needed after the new rev of the kernel pvr patches were added

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>

--
The following changes since commit 0861f2513ebe7e1ad18291664356cfeab3c196b9:

  meta-cedartrail: fix README to state tools-testapps needed for Glxgears (2012-04-16 16:34:31 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-edison
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-edison

Rahul Saxena (1):
  meta-cedartrail: add SRCREV of yocto/pvr kernel branch

 .../linux/linux-yocto-rt_3.0.bbappend              |    3 +--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.7.4.1


