Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F6B3E00723
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 21:53:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Jun 2012 21:53:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156633418"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by azsmga001.ch.intel.com with ESMTP; 14 Jun 2012 21:53:36 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jun 2012 23:53:29 -0500
Message-Id: <cover.1339735796.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-emenlow: fix for bug 2507
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
X-List-Received-Date: Fri, 15 Jun 2012 04:53:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The recent upgrade of cairo to 1.12.2 broke meta-emenlow; keeping
the old 1.10.2 recipe around in the meta-emenlow layer gets it
working again.

The following changes since commit bd00e28dd54b06a1f01f186be168d3af872f96d4:
  Richard Purdie (1):
        meta-emenlow: Update qt4 bbappend to 4.8.1

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/2507-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/2507-fix

Tom Zanussi (2):
  meta-emenlow: add 1.10.2 cairo recipe
  meta-emenlow: prefer 1.10.2 cairo

 meta-emenlow/conf/machine/emenlow.conf             |    1 +
 .../recipes-graphics/cairo/cairo_1.10.2.bb         |   39 ++++++++++++++++++++
 2 files changed, 40 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-graphics/cairo/cairo_1.10.2.bb


