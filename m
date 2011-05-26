Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6D7F4C80191
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 10:41:16 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 May 2011 08:41:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,273,1304319600"; 
   d="scan'208";a="2375089"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 26 May 2011 08:41:15 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 26 May 2011 10:40:31 -0500
Message-Id: <cover.1306420608.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel BBFILE_COLLECTIONS fixups
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
X-List-Received-Date: Thu, 26 May 2011 15:41:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes a problem with BBFILE_COLLECTIONS reported by Jeremy Puhlman.

The following changes since commit 1b227f8ed2df529cc13f7169b0c08ff3d0f8c812:
  Tom Zanussi (1):
        meta-sugarbay: remove xserver-xf86-dri-lite bbappend

are available in the git repository at:

  git://git.pokylinux.org/meta-intel.git tzanussi/bbfile-collections-fix
  http://git.pokylinux.org/cgit.cgi//log/?h=tzanussi/bbfile-collections-fix

Tom Zanussi (1):
  meta-intel: fix BBFILE_COLLECTIONS overrides

 meta-crownbay/conf/layer.conf     |    4 ++--
 meta-fishriver/conf/layer.conf    |    2 +-
 meta-jasperforest/conf/layer.conf |    2 +-
 meta-sugarbay/conf/layer.conf     |    2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)


