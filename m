Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DB62E005B1
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:01:21 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Nov 2011 18:01:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="42734377"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Nov 2011 18:01:20 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:01:21 -0600
Message-Id: <cover.1322704583.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] meta-intel fixes for kernel updates
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
X-List-Received-Date: Thu, 01 Dec 2011 02:01:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds some changes to match Bruce Ashfield's
'linux-yocto: consolidated pull request' of a couple hours ago:

http://lists.linuxtogo.org/pipermail/openembedded-core/2011-December/013574.html

Changes were compile- and boot-tested with the crownbay, sugarbay, and
emenlow BSPs.

The following changes since commit 68c6b19d623b34a504090ad2c706859ecc946256:
  Tom Zanussi (1):
        meta-intel: update READMEs with layer dependency list

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/zedd-kernel-sync
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/zedd-kernel-sync

Tom Zanussi (6):
  meta-crownbay: remove 2.6.34 .bbappend
  meta-intel: update kernel SRCREVs
  meta-emenlow: remove 2.6.34 .bbappend
  meta-fishriver: remove 2.6.34 .bbappend
  meta-jasperforest: remove 2.6.34 .bbappend
  meta-n450: remove 2.6.34 .bbappend

 .../linux/linux-yocto_2.6.34.bbappend              |   15 ---------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 .../linux/linux-yocto_2.6.34.bbappend              |    6 ------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../linux/linux-yocto_2.6.34.bbappend              |    7 -------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 .../linux/linux-yocto_2.6.34.bbappend              |    4 ----
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../linux/linux-yocto_2.6.34.bbappend              |   10 ----------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 12 files changed, 18 insertions(+), 60 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend


