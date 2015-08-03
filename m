Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D764EE00A19; Mon,  3 Aug 2015 12:04:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A590E0034B
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 12:04:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 12:04:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,603,1432623600"; d="scan'208";a="775902864"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 12:04:31 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 14:04:28 -0500
Message-Id: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv2 00/11][auh] Add support for buildhistory and minor fixes
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
X-List-Received-Date: Mon, 03 Aug 2015 19:04:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This v2 fixes comments by Paul Eggleton in patch 01 and patch 05 of this
patchset.

This changes can be found at,

http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/log/?h=alimon/devel

Aníbal Limón (11):
  upgradehelper.py: Only run with one recipe or all.
  upgradehelper.py: Validate if upgrade is needed
  upgradehelper.py: Only send emails when patch file exist
  bitbake.py: Improve performance on env() call
  upgradehelper.py: Add own step for loading environment
  upgradehelper.py: step _detect_repo clarify why don't load git
  upgradehelper.py: UniverseUpdate don't abort if recipe checkpkg fails.
  bitbake.py: Rename bitbake_log.txt to bitbake_error_log
  upgradehelper.py: Remove unused references to Buildhistory class
  upgradehelper.py: Move upstream versioning code to UniverseUpdater
  upgradehelper: Add support for generate buildhistory recipe diff's

 bitbake.py       |  52 ++------
 buildhistory.py  |  75 ++++++++++++
 errors.py        |   6 +
 upgradehelper.py | 359 ++++++++++++++++++++++++++++++-------------------------
 4 files changed, 290 insertions(+), 202 deletions(-)
 create mode 100644 buildhistory.py

-- 
1.9.1


