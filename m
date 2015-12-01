Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3DCFE00B20; Tue,  1 Dec 2015 14:02:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE5FDE00ADF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 14:02:54 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2015 14:02:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="610892714"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 14:02:48 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 16:03:35 -0600
Message-Id: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 0/6] Integration error handling and enhacements
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
X-List-Received-Date: Tue, 01 Dec 2015 22:02:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This changes can be also reviewed at,

http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/log/?h=boot_images_v3

Aníbal Limón (6):
  recipe/git.py: Add missing import of re module.
  upgradehelper.py: Add support for preserve logs in workdir.
  upgradehelper.py: Add support for specify what image test.
  testimage/ptest: Add require of ptest-pkgs in EXTRA_IMAGE_FEATURES.
  testimage: Add handling of IntegrationError
  upgradehelper: Remove deprecated setting drop_previous_commits.

 README                |   7 ++-
 modules/errors.py     |   9 ++++
 modules/recipe/git.py |   1 +
 modules/testimage.py  |  80 ++++++++++++++++++++++--------
 upgradehelper.py      | 135 +++++++++++++++++++++++++++++++-------------------
 5 files changed, 156 insertions(+), 76 deletions(-)

-- 
2.1.4


