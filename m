Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 556EEE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 16:29:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 16:29:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102198724"
Received: from unknown (HELO localhost) ([10.255.14.106])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 16:29:06 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Feb 2012 18:28:56 -0600
Message-Id: <cover.1328142259.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] Add LICENSE_FLAGS_WHITELIST example
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
X-List-Received-Date: Thu, 02 Feb 2012 00:29:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update meta-yocto/local.conf.sample.extended with an example using
LICENSE_FLAGS_WHITELIST with the current set of commercial licenses.

v2: same as before, but rebased to current

The following changes since commit 8d4d9a15c4947e55ed217c6035e76fcff724e544:
  Koen Kooi (1):
        package bbclass: allow per package PRIVATE_LIBS

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/license-flags-whitelist-sample.v2
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/license-flags-whitelist-sample.v2

Tom Zanussi (1):
  meta-yocto/local.conf.sample.extended: add LICENSE_FLAGS_WHITELIST
    section

 meta-yocto/conf/local.conf.sample.extended |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)


