Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2538E00747
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:36:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2013 00:36:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,889,1371106800"; d="scan'208";a="394580010"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2013 00:36:23 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id 1238F6A4093;
	Thu, 12 Sep 2013 00:36:20 -0700 (PDT)
From: alexandrux.palalau@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Sep 2013 10:37:37 +0300
Message-Id: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Alexandru Palalau <alexandrux.palalau@intel.com>
Subject: [PATCH 0/4] New yocto-autobuilder scenarios
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
X-List-Received-Date: Thu, 12 Sep 2013 07:36:27 -0000

From: Alexandru Palalau <alexandrux.palalau@intel.com>

This patchset adds three yocto-autobuilder scenarios in order to cover logrotate, skeletoninit and pam runtime tests.
Also, a change to CreateBBLayersConf.py file was needed in order to be able to add non-default poky layers(eg. meta-skeleton).

Alexandru Palalau (4):
  autobuilder/buildsets: added functionality to CreateBBLayersConf.py
    in order to add poky extra layers (non BSP-specific)
  buildsets-config: added new scenario in order to test skeletoninit qa
    runtime test
  builset-config: added new scenario in order to test pam qa runtime
    test
  buildset-config: added new scenario in order to test logrotate qa
    runtime test

 buildset-config/nightly-qa-logrotate.conf                | 16 ++++++++++++++++
 buildset-config/nightly-qa-pam.conf                      | 15 +++++++++++++++
 buildset-config/nightly-qa-skeleton.conf                 | 15 +++++++++++++++
 .../autobuilder/buildsteps/CreateBBLayersConf.py         |  3 +++
 4 files changed, 49 insertions(+)
 create mode 100644 buildset-config/nightly-qa-logrotate.conf
 create mode 100644 buildset-config/nightly-qa-pam.conf
 create mode 100644 buildset-config/nightly-qa-skeleton.conf

-- 
1.7.11.7


