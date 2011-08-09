Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71861E011F0
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 07:38:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Aug 2011 07:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,343,1309762800"; d="scan'208";a="37320243"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2011 07:38:10 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2011 09:37:19 -0500
Message-Id: <cover.1312900412.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] meta-intel: fishriver update
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
X-List-Received-Date: Tue, 09 Aug 2011 14:38:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A few updates for meta-fishriver dealing with the new tune file
and live image changes.  This also moves the kernel to 3.0.

Boot tested successfully with the fishriver live sato image (on
emenlow since my fishriver is currently broken).

The following changes since commit b1dab2886f607a181afc843925ce76c9ef1c340c:
  Tom Zanussi (1):
        meta-emenlow: add live fstype

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/fishriver-tunelive-updates
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/fishriver-tunelive-updates

Tom Zanussi (3):
  meta-fishriver: remove tune-related assignments from machine conf
  meta-fishriver: add live fstype
  meta-fishriver: switch to linux-yocto 3.0 kernel

 meta-fishriver/conf/machine/fishriver.conf         |    6 +++---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++++++
 2 files changed, 9 insertions(+), 3 deletions(-)
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend


