Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 577ECE00CBD; Tue,  9 Feb 2016 14:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1049CE00C8C
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:13 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243940"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:12 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:09 -0600
Message-Id: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 00/16] Add Toaster test suite support
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This set of changes adds toaster test suite to qa-tools repo.

Summary,
	- Add ToasterHelper class for clone/setup/start/stop toaster.
	- Add Toaster test suite script, mainly work did by QA Rumania team.
	- Add COPYRIGHT and improve instructions for install/usage.

Next steps are for create an buildset for our AB in order to run toaster tests.

Also the changes can be found at,
	http://git.yoctoproject.org/cgit/cgit.cgi/qa-tools/log/?h=devel
	
Aníbal Limón (16):
  README.md: Update instructions on how install host deps on debian.
  utils/run/toaster.sh: Get rid of toaster shell script.
  toaster: Add helpers for clone, setup, start and stop.
  tests/toaster/__init__.py: Add support for clone/setup/start/stop
  tests/toaster/helpers.py: When execute bash remove interactive mode.
  tests/toaster/helpers.py: Fix toaster_start deadlocks.
  ts/toaster/helpers.py: Add new class ToasterHelper instead functions.
  toaster/helper.py: Add force mode to stop method.
  toaster/__init__.py: Update toaster test to match new ToasterHelper.
  Reorder source code tree,
  README.md: Update with information about setup, toaster and
    maintainence.
  toaster/toaster.py: Add missing shebang to call python.
  toaster: Add header to specify license to MIT.
  toaster/toaster.py: Add command line options.
  toaster/helpers.py: Fix ToasterHelper setup method git checkout.
  README.md: Add recommendation to use vncserver for run Toaster tests.

 COPYING.MIT               |  17 +++++
 README.md                 |  55 +++++++++++++++-
 external/__init__.py      |   0
 requeriments.txt          |   1 +
 tests/toaster/__init__.py | 109 -------------------------------
 toaster/__init__.py       |   0
 toaster/helpers.py        | 113 ++++++++++++++++++++++++++++++++
 toaster/toaster.py        | 160 ++++++++++++++++++++++++++++++++++++++++++++++
 utils/run/toaster.sh      |  20 ------
 9 files changed, 343 insertions(+), 132 deletions(-)
 create mode 100644 COPYING.MIT
 create mode 100644 external/__init__.py
 delete mode 100755 tests/toaster/__init__.py
 create mode 100644 toaster/__init__.py
 create mode 100644 toaster/helpers.py
 create mode 100755 toaster/toaster.py
 delete mode 100755 utils/run/toaster.sh

-- 
2.1.4


