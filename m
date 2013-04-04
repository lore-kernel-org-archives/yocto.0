Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB975E014D8
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:23:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2013 10:23:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,410,1363158000"; d="scan'208";a="313706093"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2013 10:23:48 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id E8A6A2C8001
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:23:40 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Apr 2013 20:23:27 +0300
Message-Id: <cover.1365095192.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH 0/2] Add a new buildset
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
X-List-Received-Date: Thu, 04 Apr 2013 17:23:49 -0000

The following changes since commit 72198b128658049d1f07f0df999f7282a9c6535f:

  PublishArtifacts.py: poky-tiny deploy (2013-04-03 23:44:07 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/yab4
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab4

Stefan Stanacar (2):
  QA1-nightly-extra.conf: add new buildset config
  nightly.conf, yoctoAB.conf: enable the new QA1-nightly-extra buildset

 buildset-config/QA1-nightly-extra.conf | 18 ++++++++++++++++++
 buildset-config/nightly.conf           |  2 +-
 buildset-config/yoctoAB.conf           |  3 ++-
 3 files changed, 21 insertions(+), 2 deletions(-)
 create mode 100644 buildset-config/QA1-nightly-extra.conf

-- 
1.8.1.4


