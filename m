Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 136EFE014D3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 15:29:13 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Apr 2013 15:29:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,546,1363158000"; d="scan'208";a="291448058"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2013 15:29:12 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id A00842C8001;
	Wed, 24 Apr 2013 15:29:03 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 01:29:10 +0300
Message-Id: <cover.1366841959.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH 0/6] New buildsets and options for 1.5
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
X-List-Received-Date: Wed, 24 Apr 2013 22:29:14 -0000

Hello Beth,

Here are the new changes, I've fixed that small issue, hope it looks good now.
After some more tests, I'll follow up with some builds for ipk only images :),
but I'm getting ahead of myelf now.

Regards,
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

 buildset-config/nightly-qa-extras.conf             | 16 ++++++++++++++++
 buildset-config/nightly-qa-systemd.conf            | 20 ++++++++++++++++++++
 buildset-config/nightly.conf                       |  3 ++-
 buildset-config/yoctoAB.conf                       |  3 ++-
 .../autobuilder/buildsteps/CreateAutoConf.py       | 22 ++++++++++++++++++++--
 .../autobuilder/buildsteps/RunSanityTests.py       |  3 +++
 6 files changed, 63 insertions(+), 4 deletions(-)
 create mode 100644 buildset-config/nightly-qa-extras.conf
 create mode 100644 buildset-config/nightly-qa-systemd.conf

-- 
1.8.1.4


