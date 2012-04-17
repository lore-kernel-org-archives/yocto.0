Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463F7E01206
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:33:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Apr 2012 20:33:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154486153"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2012 20:33:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 22:33:49 -0500
Message-Id: <cover.1334633481.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel kernel26 cleanup
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
X-List-Received-Date: Tue, 17 Apr 2012 03:33:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset removes the last vestiges of kernel26 from meta-intel.

The following changes since commit f75f9b6f68473eb0efac802409608f8389be0030:
  Kishore Bodke (1):
        Romley: Update SRCREV

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/kernel26-removal
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/kernel26-removal

Tom Zanussi (1):
  ia32-base: don't use obsolete kernel26

 conf/machine/include/ia32-base.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


