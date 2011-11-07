Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0390E01356
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:53:59 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Nov 2011 07:53:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,470,1315206000"; d="scan'208";a="34084705"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Nov 2011 07:53:58 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:54:30 -0600
Message-Id: <cover.1320680881.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: tune updates
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
X-List-Received-Date: Mon, 07 Nov 2011 15:54:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset makes sugarbay and jasperforest use the corei7 tune files.

The following changes since commit 63253211b4ca30c3a5fa2b4dd9a393247217816e:
  Tom Zanussi (1):
        meta-romley: change references to sugarbay in linux-yocto-rt_3.0.bbappend

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/newtune-v0
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/newtune-v0

Tom Zanussi (2):
  meta-sugarbay: use corei7 tune file
  meta-jasperforest: use corei7 tune file

 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 meta-sugarbay/conf/machine/sugarbay.conf         |    3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)


