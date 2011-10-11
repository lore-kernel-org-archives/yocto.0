Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F7E8E005BB
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 14:30:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Oct 2011 14:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,525,1312182000"; d="scan'208";a="61239793"
Received: from unknown (HELO localhost) ([10.255.15.13])
	by azsmga001.ch.intel.com with ESMTP; 11 Oct 2011 14:30:39 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 11 Oct 2011 16:30:29 -0500
Message-Id: <cover.1318368128.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-emenlow: switch kernel to 2.6.37
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
X-List-Received-Date: Tue, 11 Oct 2011 21:30:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Following a problem found with glxgears on emenlow with the 3.0 kernel,
it makes more sense to move emenlow back to 2.6.37 until more testing
can take place with 3.0.

Also, since emenlow testing of glxgears under 2.6.37 has been going
on since M2, there doesn't seem to be much risk in moving it back.

The following changes since commit 9ec23b476b1b4c1ba29911399bcf84c53693aff7:
  Tom Zanussi (1):
        meta-emenlow: restore /usr/lib/dri for xpsb-glx

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/switch-edison-emenlow-to-2.6.37
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/switch-edison-emenlow-to-2.6.37

Tom Zanussi (1):
  meta-emenlow: switch edison back to linux-yocto-2.6.37 kernel

 meta-emenlow/conf/machine/emenlow.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


