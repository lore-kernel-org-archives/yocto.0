Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B781E008A2; Wed, 11 Nov 2015 14:33:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DD80E00473
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:33:53 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:33:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559576"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:33:54 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:16 -0600
Message-Id: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 00/13] Improvements and small fixes
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
X-List-Received-Date: Wed, 11 Nov 2015 22:33:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This changeset fixes comments made by Paul Eggleton and adds 3 new commits
the last ones related to send email improvements.

The changes can be found at,

http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/log/?h=devel

Aníbal Limón (13):
  upgradehelper.py: Add step for build gcc-runtime at init.
  upgradehelper.py: Fix bug when buildhistory isn't enabled
  recipe.py: Improvements and refactor of fetch method.
  buildhistory.py: Don't modify BB_ENV_EXTRAWHITE before init.
  upgradehelper.py: Add sanity test for ensure that git is configured.
  buildhistory.py: Add missing warning import. git.py: Fix last_commit
    method.
  upgradehelper.py: Improve work directory structure
  upgradehelper.py: Add support for do recipe upgrades based on builddep
  upgradehelper.py: Add support for preserve statistics into work
    directory.
  requirements.txt: Add file for now only with GitPython
  upgradehelper.py: Only send email to Maintainer when upgrade succeed.
  upgradehelper.py: Fix indent due to previous commit.
  upgradehelper.py: Add support for preserve emails.

 buildhistory.py  |   8 +-
 git.py           |   2 +-
 recipe.py        |  58 ++++++-----
 requirements.txt |   1 +
 upgradehelper.py | 297 ++++++++++++++++++++++++++++++++++++-------------------
 5 files changed, 237 insertions(+), 129 deletions(-)
 create mode 100644 requirements.txt

-- 
2.1.4


