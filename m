Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 160EDE00B03; Fri, 18 Dec 2015 03:31:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A24E0033E
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 03:31:35 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 18 Dec 2015 03:31:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,445,1444719600"; d="scan'208";a="874202620"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 18 Dec 2015 03:31:34 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 1EF1E6A4007;
	Fri, 18 Dec 2015 04:19:34 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Dec 2015 13:00:07 +0200
Message-Id: <cover.1450436004.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Cc: srifenbark@gmail.com
Subject: [PATCH 0/2] Improving Toaster documentation
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
X-List-Received-Date: Fri, 18 Dec 2015 11:31:41 -0000

Hi,

This patchset includes the following fixes for Toaster documentation:
- A couple of old sections that no longer apply were commented out. Remove
  the content, since it is obsolete.
- The sentence explaining how to run builds was not very specific. Make
  explicit that you can run builds both using the command line and the
  Toaster web interface

The following changes since commit b6b059f67ed92a8290f548aef59de4cc51c3e407:

  toaster: remove 2 confusing parameters (2015-12-18 12:24:48 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ed/toaster/submit/contrib/bbarrosp/documentation
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ed/toaster/submit/contrib/bbarrosp/documentation

Belen Barros Pena (2):
  toaster-manual: Remove commented content
  toaster-manual: Add some details to section 3.1

 .../toaster-manual-setup-and-use.xml               | 919 +--------------------
 1 file changed, 6 insertions(+), 913 deletions(-)

--
2.1.4


