Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B1EE005B4
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 21:24:11 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2012 21:24:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="95459363"
Received: from unknown (HELO localhost) ([10.255.13.210])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2012 21:24:10 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jan 2012 23:23:43 -0600
Message-Id: <cover.1325913610.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-yocto: add local.conf.sample.extended LICENSE_FLAGS_WHITELIST section
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 07 Jan 2012 05:24:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch adds a section to local.conf.sample.extended to accompany the
corresponding LICENSE_FLAGS mechanism.

The following changes since commit 468998cddbe1a803096c9b357e1b5daa3b7e8c2e:
  Dongxiao Xu (1):
        command.py: add parseConfigurationFiles API

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/license-flags-whitelist-sample.v1
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=tzanussi/license-flags-whitelist-sample.v1

Tom Zanussi (1):
  local.conf.sample.extended: add LICENSE_FLAGS_WHITELIST section

 meta-yocto/conf/local.conf.sample.extended |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)


