Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1AE8F4C803BA
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 12:43:06 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 May 2011 10:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,275,1304319600"; 
   d="scan'208";a="2450704"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 26 May 2011 10:43:05 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com, david.c.stewart@intel.com,
	yocto@yoctoproject.org
Date: Thu, 26 May 2011 12:42:26 -0500
Message-Id: <cover.1306431293.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-sugarbay: Change README build instructions to prefer tarballs
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
X-List-Received-Date: Thu, 26 May 2011 17:43:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This changes the build instructions in the README for the Sugar Bay BSP
to use tarballs instead of git clones.

This fixes the issue reported for YOCTO 1103 at least as far as the README
in the BSP for the Sugar Bay goes.  The release notes on the Yocto website
would still need to be updated to reflect this as well.

The other meta-intel BSPs have the same README text - they'll be updated as
well with the same text, once it's clear no further changes are needed.

The following changes since commit f113449eb132df7c8a4c45ad8719ecc3ec84a6b5:
  Tom Zanussi (1):
        meta-intel: fix BBFILE_COLLECTIONS overrides

are available in the git repository at:

  git://git.pokylinux.org/meta-intel.git tzanussi/yocto-1103
  http://git.pokylinux.org/cgit.cgi//log/?h=tzanussi/yocto-1103

Tom Zanussi (1):
  meta-sugarbay: Change build instructions in README to use BSP tarball

 meta-sugarbay/README |   21 ++++++++++++---------
 1 files changed, 12 insertions(+), 9 deletions(-)


