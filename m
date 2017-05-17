Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA814E009C2; Wed, 17 May 2017 00:54:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC00E00901
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 00:54:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 May 2017 00:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,353,1491289200"; d="scan'208";a="1148786013"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by fmsmga001.fm.intel.com with ESMTP; 17 May 2017 00:54:40 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 May 2017 10:54:37 +0300
Message-Id: <cover.1495007050.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [libfakekey][PATCH 0/2] Bug fixes for libfakekey
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
X-List-Received-Date: Wed, 17 May 2017 07:54:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

A (slightly modified) old patch from bugzilla that fixes handling of
fake shifted keypresses where the character is not in the keymap
already, and a build script fix.

Thanks, Jussi


The following changes since commit e327ff049b8503af2dadffa84370a0860b9fb682:

  src/Makefile.am: Fix compiles in out of tree build case (2013-03-08 11:52:39 +0000)

are available in the git repository at:

  git://github.com/jku/libfakekey shifted-keysym-fix
  https://github.com/jku/libfakekey/tree/shifted-keysym-fix

Jussi Kukkonen (2):
  tests/Makefile.am: Add missing LIBS
  Handle shifted keysyms that are not in keymap

 src/libfakekey.c  | 11 ++++++++++-
 tests/Makefile.am |  2 +-
 2 files changed, 11 insertions(+), 2 deletions(-)

-- 
2.11.0


