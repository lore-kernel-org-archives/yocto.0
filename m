Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D586AE009CF; Tue, 21 Jun 2016 16:08:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72861E009BF
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631790"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:06 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:37 -0500
Message-Id: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 00/15] Add support for generate bitbake/oe-selftest error reports
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This v2 adds support for generate also oe-selftest reports this is almost
the previous version with changes requested in review [1], the next patches
starts from patch,

	autobuilder/lib/{ABtools,builsteps}.py: Create save_error_report func

Also the changes could be reviewed at [2].

[1] https://lists.yoctoproject.org/pipermail/yocto/2016-June/030515.html
[2] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=contrib/alimon/devel

Aníbal Limón (15):
  lib/buildsteps.py: Add BitbakeShellCommand class
  lib/buildsteps.py: Add BitbakeLogLineObserver for
    BitbakeShellCommands.
  lib/buildsteps: BitbakeShellCommand add support for create error
    reports
  lib/ABTools: Add functions for get errordir path in controller and
    worker
  buildbot: Add support for DirectoryDownload transfer step
  autobuilder/buildsteps: Add DownloadBitbakeErrorReports step
  buiidsets: Add DownloadBitbakeErrorReport step
  lib/buildsteps.py: BitbakeShellCommand add support for error_type
  autobuilder/lib/buildsteps.py: BitbakeShellCommand update error report
        types.
  autobuilder/lib/{ABtools,builsteps}.py: Create save_error_report func
  autobuilder/lib/ABTools.py: Add get_lsb_distro function
  buildsteps/RunOeSelftest.py: Add support for create/save error reports
  nightly-oe-selftest.conf: Add steps for Download and Send error
    report.
  autobuilder/buildsteps: Rename DownloadBitbakeErrorReports to
    DownloadErrorReports
  buildset-config: Update references from DownloadBitbakeErrorReports to
    DownloadErrorReports

 buildset-config.controller/build-appliance.conf    |   1 +
 buildset-config.controller/buildtools.conf         |   1 +
 buildset-config.controller/nightly-arm-lsb.conf    |   1 +
 buildset-config.controller/nightly-arm.conf        |   1 +
 buildset-config.controller/nightly-arm64.conf      |   1 +
 .../nightly-deb-non-deb.conf                       |   1 +
 buildset-config.controller/nightly-deb.conf        |   1 +
 buildset-config.controller/nightly-ipk.conf        |   1 +
 buildset-config.controller/nightly-mips-lsb.conf   |   1 +
 buildset-config.controller/nightly-mips.conf       |   1 +
 buildset-config.controller/nightly-mips64.conf     |   1 +
 buildset-config.controller/nightly-multilib.conf   |   1 +
 buildset-config.controller/nightly-musl.conf       |   1 +
 buildset-config.controller/nightly-no-x11.conf     |   1 +
 buildset-config.controller/nightly-non-gpl3.conf   |   1 +
 .../nightly-oe-selftest.conf                       |   5 +-
 buildset-config.controller/nightly-oecore.conf     |   1 +
 buildset-config.controller/nightly-ppc-lsb.conf    |   1 +
 buildset-config.controller/nightly-ppc.conf        |   1 +
 buildset-config.controller/nightly-qa-extras.conf  |   1 +
 .../nightly-qa-logrotate.conf                      |   1 +
 buildset-config.controller/nightly-qa-pam.conf     |   1 +
 .../nightly-qa-skeleton.conf                       |   1 +
 buildset-config.controller/nightly-qa-systemd.conf |   1 +
 .../nightly-qa-targetbuilds.conf                   |   1 +
 .../nightly-rpm-non-rpm.conf                       |   1 +
 buildset-config.controller/nightly-rpm.conf        |   1 +
 buildset-config.controller/nightly-uclibc.conf     |   1 +
 buildset-config.controller/nightly-world-lsb.conf  |   1 +
 buildset-config.controller/nightly-world.conf      |   1 +
 buildset-config.controller/nightly-x32.conf        |   1 +
 buildset-config.controller/nightly-x86-64-lsb.conf |   1 +
 buildset-config.controller/nightly-x86-64.conf     |   1 +
 buildset-config.controller/nightly-x86-lsb.conf    |   1 +
 buildset-config.controller/nightly-x86.conf        |   1 +
 buildset-config.controller/nightly.conf            |   1 +
 buildset-config.controller/poky-tiny.conf          |   1 +
 buildset-config.examples/awesomefirmware.conf      |   1 +
 buildset-config.freescale/nightly-fsl-arm-lsb.conf |   1 +
 buildset-config.freescale/nightly-fsl-arm.conf     |   1 +
 buildset-config.freescale/nightly-fsl-ppc-lsb.conf |   1 +
 buildset-config.freescale/nightly-fsl-ppc.conf     |   1 +
 buildset-config.iot-devkit/iot-devkit.conf         |   1 +
 buildset-config.kernel/kernel-arm-lsb.conf         |   1 +
 buildset-config.kernel/kernel-arm.conf             |   1 +
 buildset-config.kernel/kernel-arm64.conf           |   1 +
 buildset-config.kernel/kernel-mips-lsb.conf        |   1 +
 buildset-config.kernel/kernel-mips.conf            |   1 +
 buildset-config.kernel/kernel-ppc-lsb.conf         |   1 +
 buildset-config.kernel/kernel-ppc.conf             |   1 +
 buildset-config.kernel/kernel-x86-64-lsb.conf      |   1 +
 buildset-config.kernel/kernel-x86-64.conf          |   1 +
 buildset-config.kernel/kernel-x86-lsb.conf         |   1 +
 buildset-config.kernel/kernel-x86.conf             |   1 +
 buildset-config.kernel/nightly-kernel.conf         |   1 +
 buildset-config.tizen/nightly-tizen-ivi.conf       |   1 +
 buildset-config.tizen/nightly-tizen.conf           |   1 +
 buildset-config.tizen/nightly.conf                 |   1 +
 .../autobuilder/buildsteps/BuildImages.py          |   7 +-
 .../autobuilder/buildsteps/BuildToolchainImages.py |   7 +-
 .../autobuilder/buildsteps/DownloadErrorReports.py |  42 +++++++++
 .../autobuilder/buildsteps/GetBitbakeVersion.py    |   6 +-
 .../autobuilder/buildsteps/RunESDKSanityTests.py   |   6 +-
 .../autobuilder/buildsteps/RunOeSelftest.py        |  46 +++++++++
 .../autobuilder/buildsteps/RunSDKSanityTests.py    |   6 +-
 .../autobuilder/buildsteps/RunSanityTests.py       |   6 +-
 .../autobuilder/buildsteps/SendErrorReport.py      |  16 ++--
 .../site-packages/autobuilder/lib/ABTools.py       |  59 ++++++++++++
 .../site-packages/autobuilder/lib/buildsteps.py    | 104 +++++++++++++++++++++
 .../buildbot/steps/transfer.py                     |  86 ++++++++++++++++-
 .../buildslave/commands/registry.py                |   1 +
 .../buildslave/commands/transfer.py                |  79 ++++++++++++++++
 72 files changed, 509 insertions(+), 24 deletions(-)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/DownloadErrorReports.py

-- 
2.1.4


