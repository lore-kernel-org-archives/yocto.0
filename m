Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFD30E0044A
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 08:41:21 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Mar 2012 08:41:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115397161"
Received: from unknown (HELO localhost) ([10.255.15.96])
	by azsmga001.ch.intel.com with ESMTP; 06 Mar 2012 08:41:20 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  6 Mar 2012 10:41:17 -0600
Message-Id: <cover.1331051850.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1] meta-intel: use distro setting for libc headers
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
X-List-Received-Date: Tue, 06 Mar 2012 16:41:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch removes the PREFERRED_PROVIDER setting libc headers in
ia32-base in preference to the disro setting, which it should be using instead.

The following changes since commit 87f409827684e39484900a20531c8a14c0cb91e6:

  meta-emenlow: add SRC_URI checksums to libva (2012-03-05 13:15:10 -0600)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel.git tzanussi/libc-distro-change
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/libc-distro-change

Tom Zanussi (1):
  ia32-base: remove libc-headers PREFERRED_PROVIDER

 conf/machine/include/ia32-base.inc |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)


