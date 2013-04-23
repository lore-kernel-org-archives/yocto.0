Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86054E014D8
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 11:52:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Apr 2013 11:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,536,1363158000"; d="scan'208";a="323722098"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 23 Apr 2013 11:52:07 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 2193B2C8001;
	Tue, 23 Apr 2013 11:51:57 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Tue, 23 Apr 2013 21:52:00 +0300
Message-Id: <cover.1366742537.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][RFC 0/6] New buildsets and options for 1.5
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
X-List-Received-Date: Tue, 23 Apr 2013 18:52:07 -0000

Hello Beth,

Would you mind taking a look on these changes? Obviously they are meant post-dylan release, 
but I sent them earlier so you can have time to review and request changes.
It would be great to have them in 1.5 and I plan on adding even more builds 
(especially for multilib images and ipk images which proved tricky with postinstalls and systemd).

Thanks,
Stefan


The following changes since commit 0178163efc6670c9acb982dd579671396cb24290:

  PublishLayerTarballs.py: bad redirect. (2013-04-22 22:56:58 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/yab0
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab0

Stefan Stanacar (6):
  nightly-qa-extras.conf: add new buildset config
  CreateAutoConf.py: add initmgr option
  buildset-config/nightly-qa-systemd.conf: add a new target for systemd
    images
  nightly.conf, yoctoAB.conf: enable the new buildsets
  buildsteps/RunSanityTests.py: add suport for custom steps
  CreateAutoConf.py: add option for package types

 buildset-config/nightly-qa-extras.conf               | 16 ++++++++++++++++
 buildset-config/nightly-qa-systemd.conf              | 20 ++++++++++++++++++++
 buildset-config/nightly.conf                         |  3 ++-
 buildset-config/yoctoAB.conf                         |  3 ++-
 .../autobuilder/buildsteps/CreateAutoConf.py         | 20 +++++++++++++++++++-
 .../autobuilder/buildsteps/RunSanityTests.py         |  3 +++
 6 files changed, 62 insertions(+), 3 deletions(-)
 create mode 100644 buildset-config/nightly-qa-extras.conf
 create mode 100644 buildset-config/nightly-qa-systemd.conf

-- 
1.8.1.4


