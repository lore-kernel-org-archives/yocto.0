Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC129E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 20:03:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2012 20:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123878450"
Received: from unknown (HELO localhost) ([10.255.12.50])
	by orsmga001.jf.intel.com with ESMTP; 30 Mar 2012 20:03:43 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 22:04:30 -0500
Message-Id: <cover.1333162852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] yocto-docs/bsp-guide: add section for Yocto BSP Tools
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
X-List-Received-Date: Sat, 31 Mar 2012 03:03:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds a new section for the Yocto BSP Tools, and removes a note
that this patchset makes obsolete in the process.

The following changes since commit 2ec1368c4bdf5d61e3a7d60d3293ba878939321d:
  Scott Rifenbark (1):
        documentation/dev-manual/dev-manual-common-tasks.xml: Title change

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-docs-bsp-tools
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-docs-bsp-tools

Tom Zanussi (2):
  documentation/bsp-guide/bsp.xml: Add new section for 'BSP Tools'
  documentation/bsp-guide/bsp.xml: Remove 'note'

 documentation/bsp-guide/bsp.xml |  460 ++++++++++++++++++++++++++++++++++++++-
 1 files changed, 450 insertions(+), 10 deletions(-)


