Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B710EE00559
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2011 21:08:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Sep 2011 21:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,441,1312182000"; d="scan'208";a="67401423"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2011 21:08:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 25 Sep 2011 23:07:27 -0500
Message-Id: <cover.1317009703.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH][KERNEL] update eg20t options
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
X-List-Received-Date: Mon, 26 Sep 2011 04:08:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some fixes for config_check warnings.

Please pull into linux-yocto-3.0/meta.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/eg20-cfg-cleanup
  Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/eg20-cfg-cleanup

Tom Zanussi (1):
  eg20t: update config options

 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |    9 +--------
 1 files changed, 1 insertions(+), 8 deletions(-)


