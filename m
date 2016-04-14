Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0995CE00D83; Thu, 14 Apr 2016 05:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6ABEE00D7E
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 05:11:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Apr 2016 05:10:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,484,1455004800"; d="scan'208";a="958576093"
Received: from heimdall.fi.intel.com ([10.237.68.144])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2016 05:10:36 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Apr 2016 15:10:29 +0300
Message-Id: <cover.1460633980.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.0.rc3
Subject: [matchbox-keyboard][PATCH 0/1] Add support for GTK3 IM
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
X-List-Received-Date: Thu, 14 Apr 2016 12:11:07 -0000

The patch adds --enable-gtk3-im flag which builds a GTK+3 input method
module.

I wasn't sure which branch Yocto would be using going forward but
there's a corresponding patch for the matchbox-keyboard-0-1 branch in
case that's useful:

  git://github.com/jku/matchbox-keyboard gtk3-im/matchbox-keyboard-0-1
  https://github.com/jku/matchbox-keyboard/tree/gtk3-im/matchbox-keyboard-0-1

- Jussi




The following changes since commit 897d67a440d509c632408ac7c2062559c2011072:

  config-parser: Use matching printf format (2016-01-18 12:12:52 +0000)

are available in the git repository at:

  git://github.com/jku/matchbox-keyboard gtk3-im/master
  https://github.com/jku/matchbox-keyboard/tree/gtk3-im/master

Jussi Kukkonen (1):
  gtk-im: Add support for GTK+3 as well as GTK+2

 Makefile.am          |  6 +-----
 configure.ac         | 29 +++++++++++++++++++++--------
 gtk-im/Makefile.am   | 29 +++++++++++++++++++++++------
 gtk-im/im-context.c  |  2 +-
 gtk-im/im-protocol.c | 10 ++++++----
 5 files changed, 52 insertions(+), 24 deletions(-)

-- 
2.8.0.rc3


