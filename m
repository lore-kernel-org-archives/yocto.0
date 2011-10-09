Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B3CE006F9
	for <yocto@yoctoproject.org>; Sat,  8 Oct 2011 18:22:38 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Oct 2011 18:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,510,1312182000"; d="scan'208";a="24509288"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Oct 2011 18:22:37 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat,  8 Oct 2011 20:22:32 -0500
Message-Id: <cover.1318123160.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: emenlow fix
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
X-List-Received-Date: Sun, 09 Oct 2011 01:22:39 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Testing turned up a problem with glxgears etc. in emenlow.
This patch fixes the problem.

The following changes since commit fd7eee18e38ae45efaa299f015aedd4dc3257e6d:
  Tom Zanussi (1):
        meta-sugarbay: update README.sources

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/xpsb-glx-dri-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/xpsb-glx-dri-fix

Tom Zanussi (1):
  meta-emenlow: restore /usr/lib/dri for xpsb-glx

 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)


