Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CA6E004B2
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 09:19:16 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Aug 2011 09:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,317,1309762800"; 
   d="scan'208";a="4164589"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Aug 2011 09:15:16 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  4 Aug 2011 11:14:59 -0500
Message-Id: <cover.1312474236.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: sugarbay, jasperforest updates
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
X-List-Received-Date: Thu, 04 Aug 2011 16:19:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A couple updates for meta-sugarbay and meta-jasperforest dealing with
the new live image changes.

Boot tested successfully with the jasperforest live minimal image.

The following changes since commit c5f2339533ec9daf14e00db67fa75ed89bbdda13:
  Paul Eggleton (1):
        meta-jasperforest: update machine configuration for recent tune file changes

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/sugarbay-jasperforest-live-changes
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/sugarbay-jasperforest-live-changes

Tom Zanussi (2):
  meta-sugarbay: add live fstype
  meta-jasperforest: add live fstype

 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 meta-sugarbay/conf/machine/sugarbay.conf         |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


