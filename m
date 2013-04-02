Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 324BAE01481
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 12:55:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2013 12:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,394,1363158000"; d="scan'208";a="279813714"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2013 12:55:04 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 3D01A2C8001
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 12:54:57 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Apr 2013 22:54:53 +0300
Message-Id: <cover.1364932393.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH 0/1] Add support for creating lib64 multilib configs
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
X-List-Received-Date: Tue, 02 Apr 2013 19:55:05 -0000

The following changes since commit 2c1a41e7fd054dc0443b4740c9f5e14d0bf25ce4:

  CreateAutoConf.py: Remove unneeded try/excepts (2013-04-02 11:59:45 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/yab2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab2

Stefan Stanacar (1):
  CreateAutoConf.py: add support for lib64 multilib

 .../site-packages/autobuilder/buildsteps/CreateAutoConf.py     | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
1.8.1.4


