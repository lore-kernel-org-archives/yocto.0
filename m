Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2B1FE00502
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 15:52:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Sep 2011 15:52:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,464,1312182000"; d="scan'208";a="68817935"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2011 15:52:33 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 17:52:32 -0500
Message-Id: <cover.1317336374.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4] meta-intel: fix splash screens for several BSPs
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
X-List-Received-Date: Thu, 29 Sep 2011 22:52:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes the original emenlow bug, and adds missing splash screens
for several other BSPs.

Fixes [YOCTO #464].

The following changes since commit ac16720e8a1f3b69de822a147f96a8196246b736:
  Tom Zanussi (1):
        meta-crownbay: remove emgd-1.6

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/use-vesafb
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/use-vesafb

Tom Zanussi (4):
  crownbay-noemgd: set boot vga mode
  crownbay: set boot vga mode
  emenlow: set boot vga mode
  jasperforest: set boot vga mode

 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 ++
 meta-crownbay/conf/machine/crownbay.conf         |    2 ++
 meta-emenlow/conf/machine/emenlow.conf           |    2 ++
 meta-jasperforest/conf/machine/jasperforest.conf |    2 ++
 4 files changed, 8 insertions(+), 0 deletions(-)


