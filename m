Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 449D4E01363
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 21:49:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Nov 2011 21:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,447,1315206000"; d="scan'208";a="32825702"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Nov 2011 21:49:37 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, rpjday@crashcourse.ca,
	scott.m.rifenbark@linux.intel.com, jfabernathy@gmail.com
Date: Wed,  2 Nov 2011 23:49:27 -0500
Message-Id: <cover.1320295198.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] Development Manual Appendix A changes
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
X-List-Received-Date: Thu, 03 Nov 2011 04:49:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Here are a set of changes that attempt to clean up the BSP Development
Manual a bit.  Thanks to Robert P. J. Day and Jim Abernathy for their
input.

I went through the resulting doc and set things up exactly as written,
and so far the build is looking ok - will report if it doesn't turn out
as expected in the morning...

Tom

The following changes since commit 9b76e6a2cfc5a4d779f3b06e3acc5ff7b8275470:
  Simon Busch (1):
        meta: glib-2.0: don't apply qsort_r test removable patch for native version

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/appendix-a-changes
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/appendix-a-changes

Tom Zanussi (1):
  documentation/dev-manual: BSP Development Example changes

 .../dev-manual/dev-manual-bsp-appendix.xml         |  188 ++++++++++++++++----
 1 files changed, 154 insertions(+), 34 deletions(-)


