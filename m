Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B714CE00D42; Fri, 19 Feb 2016 08:12:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CEAE00C1D
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 08:12:35 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 19 Feb 2016 08:12:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,471,1449561600"; d="scan'208";a="655723840"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2016 08:12:34 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Feb 2016 10:14:41 -0600
Message-Id: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [[PATCH][autobuilder] 0/8] Add toaster test suite support
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
X-List-Received-Date: Fri, 19 Feb 2016 16:12:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Aníbal Limón (8):
  autobuilder/lib: Add buildsteps module for provide helpers
  autobuilder/buildsteps: Add ToasterSetupVenv step.
  autobuilder/buildsteps: Add ToasterStart and ToasterStop buildsteps.
  buildset-config.toaster: Add toaster-tests.conf.
  buildsteps/ToasterRunTests.py: Add step for run toaster tests.    
    buildset-config.toaster/toaster-tests.conf: Add ToasterRunTests
    step.
  autobuilder/lib/buildsteps.py: ShellCommandCleanEnv preserve PATH
  buildset-config.toaster/toaster-tests.conf: Add Sleep step
  buildsteps/ToasterRunTests.py: Now call run tests with verbose.

 buildset-config.toaster/toaster-tests.conf         | 21 +++++++++++
 buildset-config.toaster/yoctoAB.conf               |  2 +-
 .../autobuilder/buildsteps/ToasterRunTests.py      | 31 ++++++++++++++++
 .../autobuilder/buildsteps/ToasterSetupVenv.py     | 31 ++++++++++++++++
 .../autobuilder/buildsteps/ToasterStart.py         | 32 +++++++++++++++++
 .../autobuilder/buildsteps/ToasterStop.py          | 33 +++++++++++++++++
 .../site-packages/autobuilder/lib/buildsteps.py    | 42 ++++++++++++++++++++++
 7 files changed, 191 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.toaster/toaster-tests.conf
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterSetupVenv.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStart.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterStop.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/lib/buildsteps.py

-- 
2.1.4


