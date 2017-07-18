Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77EDDE00C44; Tue, 18 Jul 2017 09:14:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23290E00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 09:14:05 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 18 Jul 2017 09:14:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,378,1496127600"; d="scan'208";a="128830608"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.142])
	by fmsmga006.fm.intel.com with ESMTP; 18 Jul 2017 09:14:04 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Jul 2017 11:14:33 -0500
Message-Id: <20170718161438.31649-1-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Cc: mikko.ylinen@intel.com
Subject: [yocto-autobuilder][PATCHv3 0/5] Enable DAFT support into the AB
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
X-List-Received-Date: Tue, 18 Jul 2017 16:14:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This v3 address the following issues,

* Uses BuildImages property instead of uppercase to avoid confusion
  with BB variables.
* Refactor code to get DUT configuration in lib/daft.py.
* Remove the sudo usage when executing daft flash.

Also the changes can be reviewed at,

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=contrib/alimon/daft

Aníbal Limón (5):
  buildsteps/BuildImages: Setproperty BuildImages
  buildsteps/RunSanityTests: Add support for simpleremote target
  autobuilder/buildsteps: Add DaftGetDevices step
  autobuilder/buildsteps: Add DAFTFlash buildstep
  buildset-config.yocto-qa: Add intel-corei7-64-daft buildset

 buildset-config.yocto-qa/intel-corei7-64-daft.conf |  59 +++++++++++
 config/autobuilder.conf.example                    |   4 +
 .../autobuilder/buildsteps/BuildImages.py          |   3 +
 .../autobuilder/buildsteps/DaftFlash.py            |  39 +++++++
 .../autobuilder/buildsteps/DaftGetDevices.py       |  44 ++++++++
 .../autobuilder/buildsteps/RunSanityTests.py       |   8 ++
 lib/python2.7/site-packages/autobuilder/config.py  |   2 +
 .../site-packages/autobuilder/lib/daft.py          | 118 +++++++++++++++++++++
 8 files changed, 277 insertions(+)
 create mode 100644 buildset-config.yocto-qa/intel-corei7-64-daft.conf
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/DaftFlash.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/DaftGetDevices.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/lib/daft.py

-- 
2.11.0


