Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E7D9E00DAE; Mon,  9 Jul 2018 20:24:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9780E00D23
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 20:24:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jul 2018 20:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,332,1526367600"; d="scan'208";a="53845078"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.53])
	by fmsmga008.fm.intel.com with ESMTP; 09 Jul 2018 20:24:40 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Tue, 10 Jul 2018 11:24:37 +0800
Message-Id: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder] init: Fix the import module yoctoabb & yocto_console_view
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jul 2018 03:24:43 -0000

This patch is to fix the inconsistency in loading custom module
yoctoabb & yocto_console_view during Buildbot Master startup.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 __init__.py                    | 0
 yocto_console_view/__init__.py | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 __init__.py
 create mode 100644 yocto_console_view/__init__.py

diff --git a/__init__.py b/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/yocto_console_view/__init__.py b/yocto_console_view/__init__.py
new file mode 100644
index 0000000..e69de29
-- 
2.7.4


