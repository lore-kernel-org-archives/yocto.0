Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D47E011A6
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2011 08:27:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Aug 2011 08:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,258,1312182000"; d="scan'208";a="40784628"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 21 Aug 2011 08:27:16 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sun, 21 Aug 2011 10:27:50 -0500
Message-Id: <cover.1313940067.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: kernel 3.0 PREFERRED_VERSION and SRCREV updates
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
X-List-Received-Date: Sun, 21 Aug 2011 15:27:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates the PREFERRED_VERSION to use a broader wildcard,
and updates the SRCREVs while we're at it.

The following changes since commit 5c41b9b6a245664543e6ddd440d10a0696caaf7b:
  Darren Hart (1):
        n450: decouple from meta-yocto atom-pc machine config

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/3.0-preferred-upate
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/3.0-preferred-upate

Tom Zanussi (2):
  meta-intel: change PREFERRED_VERSIONs
  meta-intel: update SRCREVs

 meta-fishriver/conf/machine/fishriver.conf         |    3 ++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 meta-fri2/conf/machine/fri2.conf                   |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 meta-jasperforest/conf/machine/jasperforest.conf   |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 meta-sugarbay/conf/machine/sugarbay.conf           |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 8 files changed, 15 insertions(+), 14 deletions(-)


