Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E07DCE00CBB; Tue,  9 Feb 2016 14:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D8E5E00CB9
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:15 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243954"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:14 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:11 -0600
Message-Id: <1455057798-3213-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>,
	benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 02/16] utils/run/toaster.sh: Get rid of toaster shell script.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <limon.anibal@gmail.com>

A module in python will be created for have toaster helpers
with clone, setup, start, stop.

Signed-off-by: Aníbal Limón <limon.anibal@gmail.com>
---
 utils/run/toaster.sh | 20 --------------------
 1 file changed, 20 deletions(-)
 delete mode 100755 utils/run/toaster.sh

diff --git a/utils/run/toaster.sh b/utils/run/toaster.sh
deleted file mode 100755
index ba6d537..0000000
--- a/utils/run/toaster.sh
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/bash
-
-base_work_dir=/tmp
-work_dir=$base_work_dir/toaster
-poky_dir=$work_dir/poky
-poky_url=git://git.yoctoproject.org/poky.git
-
-if [ -d $work_dir ]; then
-	rm -rf $work_dir
-fi
-
-mkdir -p $work_dir
-git clone git://git.yoctoproject.org/poky.git $poky_dir
-
-cd $poky_dir
-virtualenv $poky_dir/venv
-. $poky_dir/venv/bin/activate
-. $poky_dir/oe-init-build-env
-pip install -r $poky_dir/bitbake/toaster-requirements.txt
-TOASTER_CONF=$poky_dir/meta-yocto/conf/toasterconf.json . $poky_dir/bitbake/bin/toaster start
-- 
2.1.4


