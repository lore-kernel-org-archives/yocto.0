Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 751F1E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 14:38:36 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Apr 2012 14:38:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151628326"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2012 14:38:35 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, kishore.k.bodke@intel.com
Date: Mon,  9 Apr 2012 07:27:48 -0700
Message-Id: <cover.1334005587.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][meta-intel] Cover letter for fixing meta-cedartrail README for Glxgears build
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
X-List-Received-Date: Mon, 09 Apr 2012 21:38:36 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter for fixing the Cedar Trail BSP README file.

Existing README incorrectly states that "debug-tweaks" is needed to be added
to EXTRA_IMAGE_FEATURES to include Glxgears in build. This patch fixes the README to indicate
that correct feature to be included is "tools-testapps".

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
--

The following changes since commit 072c6e99616c25c31521e05560433c67fb2a0292:

  meta-cedartrail: change libva license to MIT (2012-03-26 17:42:56 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-cedartrail-edison
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-cedartrail-edison

Rahul Saxena (1):
  meta-cedartrail: fix README to state tools-testapps needed for
    Glxgears

 meta-cedartrail/README |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.4.1


