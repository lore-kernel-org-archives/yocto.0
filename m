Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B27FFE00723
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 12:29:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jun 2012 12:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="149025832"
Received: from unknown (HELO localhost) ([10.255.12.119])
	by orsmga001.jf.intel.com with ESMTP; 06 Jun 2012 12:29:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Wed,  6 Jun 2012 14:29:41 -0500
Message-Id: <cover.1339010751.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] add video acceleration to fri2
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
X-List-Received-Date: Wed, 06 Jun 2012 19:29:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch adds video acceleration to fri2, and fixes the rootf
generation problem seen on the yocto autobuilder.

Of course, it shouldn't be necessary to enable video acceleration
to get a good build (see Yocto bug 2551 which addresses this) but
in this case it's probably desired anyway.

The following changes since commit 86d914528f7bd70fc844a906166f9967451d21b5:
  Tom Zanussi (1):
        ffmpeg: fix checksums

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/fri2-add-va.v1
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/fri2-add-va.v1

Tom Zanussi (1):
  meta-fri2: add video acceleration

 meta-fri2/conf/machine/fri2.conf |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)


