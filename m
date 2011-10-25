Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 822D0E005BB
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 13:15:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2011 13:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,405,1315206000"; d="scan'208";a="77594599"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2011 13:15:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 15:15:13 -0500
Message-Id: <cover.1319573089.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: a couple README fixes
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
X-List-Received-Date: Tue, 25 Oct 2011 20:15:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a missed step to the READMEs for the manual version of the EMGD
setup for fri2 and crownbay.

The BSP tarballs for these, which would normally be what users would download
and use, don't need these instructions - this is only for users who would
manually extract the binaries from the EGMD tarball/rpm.

These README changes should be pulled into both edison and master.

The following changes since commit d531816b6d986e8a7ff3f827e86e53aba30c6cfb:
  Tom Zanussi (1):
        meta-jasperforest: add xserver-xorg bbappend

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-docfix-v0
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-docfix-v0

Tom Zanussi (2):
  meta-crownbay: README correction
  meta-fri2: README correction

 meta-crownbay/README |    5 +++++
 meta-fri2/README     |    9 +++++++++
 2 files changed, 14 insertions(+), 0 deletions(-)


