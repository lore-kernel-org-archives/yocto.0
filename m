Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6E18E00DE7; Mon, 11 Jul 2016 03:51:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25BACE00DC8
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 03:51:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 11 Jul 2016 03:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,346,1464678000"; d="scan'208";a="1004524363"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2016 03:51:47 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 13:51:34 +0300
Message-Id: <cover.1468233661.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [libmatchbox][PATCH 0/4] Add xsetting-client in tree + fixes
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
X-List-Received-Date: Mon, 11 Jul 2016 10:51:52 -0000

Add an internal copy of xsettings-client into libmatchbox: it was
never meant to be a shared library.

Other commits avoid deprecated API use or fix problems found by
modern gcc with -Wall.

Jussi


The following changes since commit 9f7cf8895ae2d39c465c04cc78e918c157420269:

  tests: link to X11 (2013-12-10 11:45:28 +0000)

are available in the git repository at:

  git://github.com/jku/libmatchbox xsettings
  https://github.com/jku/libmatchbox/tree/xsettings

Jussi Kukkonen (4):
  Don't use deprecated XKeycodeToKeysym
  Use correct size with memset calls
  Remove unused pointer dereferences
  Keep an internal copy of xsettings-client

 COPYING.MIT              |  18 ++
 configure.ac             |  68 ------
 libmb/Makefile.am        |   8 +-
 libmb/hash.c             |   2 +-
 libmb/mbexp.c            |   6 +-
 libmb/mbmenu.c           |  15 +-
 libmb/mbmenu.h           |   7 +-
 libmb/mbtray.c           |  61 +----
 libmb/xsettings-client.c | 577 +++++++++++++++++++++++++++++++++++++++++++++++
 libmb/xsettings-client.h |  72 ++++++
 libmb/xsettings-common.c | 264 ++++++++++++++++++++++
 libmb/xsettings-common.h | 110 +++++++++
 12 files changed, 1057 insertions(+), 151 deletions(-)
 create mode 100644 COPYING.MIT
 create mode 100644 libmb/xsettings-client.c
 create mode 100644 libmb/xsettings-client.h
 create mode 100644 libmb/xsettings-common.c
 create mode 100644 libmb/xsettings-common.h

-- 
2.8.1


