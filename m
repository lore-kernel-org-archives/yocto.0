Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E31E01206
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2012 19:56:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2012 19:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="142115872"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by fmsmga001.fm.intel.com with ESMTP; 15 Apr 2012 19:56:22 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 15 Apr 2012 21:56:28 -0500
Message-Id: <cover.1334544668.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] yocto-bsp doc update
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
X-List-Received-Date: Mon, 16 Apr 2012 02:56:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch updates the documentation to match changes made for [YOCTO #2222].

The following changes since commit 2ddf7d3e8326e8cb07101ddb2d6e5dc6866371e2:
  Richard Purdie (1):
        gcc-configure-common.inc: Stop gcc looking at build system paths

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/2222-doc-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/2222-doc-fix

Tom Zanussi (1):
  yocto-bsp: update help to match property list changes

 scripts/lib/bsp/help.py |   48 +++++++++++++++++++++++++++-------------------
 1 files changed, 28 insertions(+), 20 deletions(-)


