Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 685FBE013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 15:10:25 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Mar 2012 15:10:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123104356"
Received: from unknown (HELO localhost) ([10.255.12.49])
	by azsmga001.ch.intel.com with ESMTP; 25 Mar 2012 15:10:24 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com, rpjday@crashcourse.ca, yocto@yoctoproject.org
Date: Sun, 25 Mar 2012 17:10:38 -0500
Message-Id: <cover.1332712914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3] yocto-docs/bsp-guide: update BSP layers-related sections
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
X-List-Received-Date: Sun, 25 Mar 2012 22:10:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The BSP Layers section of the BSP Guide contained some example layers
that don't really belong in a generic guide - this patchset removes
them, and updates the related README section.

It also updates the README.sources section, which I noticed shouldn't
really be optional.

The following changes since commit 18c537d96bde8fac7f62071585b71aed05037410:
  Scott Rifenbark (1):
        documentation/poky-ref-manual/development.xml: another env var clarification

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-docs-bsp-layers-updates
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/yocto-docs-bsp-layers-updates

Tom Zanussi (3):
  documentation/bsp-guide/bsp.xml: remove mention of specific BSPs
  documentation/bsp-guide/bsp.xml: update the README section
  documentation/bsp-guide/bsp.xml: make README.sources non-optional

 documentation/bsp-guide/bsp.xml |   49 ++++++++++++--------------------------
 1 files changed, 16 insertions(+), 33 deletions(-)


