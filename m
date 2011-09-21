Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F419E004E9
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:35:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Sep 2011 13:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="58421780"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2011 13:34:57 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:34:50 -0500
Message-Id: <cover.1316616207.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] Update emenlow to 3.0 kernel
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
X-List-Received-Date: Wed, 21 Sep 2011 20:35:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch moves emenlow to 3.0.

The following changes since commit 2fb66d7abece6ce9561794d23f6c3cab3d465d99:
  Tom Zanussi (1):
        meta-intel: update SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emenlow-3.0
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emenlow-3.0

Tom Zanussi (1):
  meta-emenlow: switch to linux-yocto 3.0 kernel

 meta-emenlow/conf/machine/emenlow.conf             |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++++++
 2 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend


