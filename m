Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B91CE00D48; Thu, 14 Dec 2017 08:35:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66C5BE00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:24 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726548"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:23 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:40 +0200
Message-Id: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
Subject: [auh][PATCH 00/20] Porting AUH to devtool and making it suitable for local use
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset replaces custom recipe rewriting code in AUH with calls to devtool and
makes other improvements aimed at making it suitable for local, interactive use by
recipe maintainers.

The following changes since commit ccf93239c7def7b475fe20f8fcd91043bc59bd61:

  upgradehelper.py: Layer mode do a full cleanup of poky (2017-06-05 16:14:23 -0500)

are available in the Git repository at:

  git://github.com/kanavin/auh-devtool devel
  https://github.com/kanavin/auh-devtool/tree/devel

Alexander Kanavin (20):
  upgradehelper.py: do not error out if testimage or buildhistory are
    enabled in bitbake conf, but not in AUH conf
  upgradehelper.py: always run checkpkg
  upgradehelper.py: do not manipulate git branches.
  upgradehelper.py: support updates to a new vcs revision.
  upgradehelper.py: add the old recipe version in pkg_ctx
  Add devtool support for upgrading recipes
  buildhistory.py: replace cleanall with cleansstate
  testimage.py: do not manipulate branches
  Replace references to Aníbal Limón as the maintainer.
  modules/recipe: remove
  upgradehelper.py: remove the package ordering code
  utils/git.py: print current dir when git fails
  testimage.py: do not call into removed code
  testimage.py: add extra logging for the testimage logs retrieval
  upgradehelper.py: fixups to the email message template
  upgradehelper.py: send email even if recipe upgrade failed
  upgradehelper.py: add all changes before committing them
  upgradehelper.py: when attempting to commit changes do not discard
    previous errors
  upgradehelper.py: when recovering from upgrade error, do not refer to
    a dict entry that may not exist
  upgradehelper.py: revert commits that failed to build

 README                     |   2 +-
 modules/buildhistory.py    |   2 +-
 modules/errors.py          |   7 +-
 modules/recipe/__init__.py |   0
 modules/recipe/base.py     | 724 ---------------------------------------------
 modules/recipe/git.py      |  98 ------
 modules/recipe/svn.py      |  28 --
 modules/steps.py           | 191 ++++++------
 modules/testimage.py       |  46 +--
 modules/utils/devtool.py   |  41 +++
 modules/utils/git.py       |   8 +-
 upgradehelper.py           | 254 ++++------------
 12 files changed, 208 insertions(+), 1193 deletions(-)
 delete mode 100644 modules/recipe/__init__.py
 delete mode 100644 modules/recipe/base.py
 delete mode 100644 modules/recipe/git.py
 delete mode 100644 modules/recipe/svn.py
 create mode 100644 modules/utils/devtool.py

-- 
2.15.0


