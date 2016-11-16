Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3056AE00AC5; Tue, 15 Nov 2016 19:18:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E57BBE00A30
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 19:18:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 15 Nov 2016 19:18:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,497,1473145200"; d="scan'208";a="1059985983"
Received: from nnasirin-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.185.211])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2016 19:18:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Nov 2016 16:18:32 +1300
Message-Id: <1479266314-8574-2-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/4] utils: fix error in runcmd() if printerr=False
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
X-List-Received-Date: Wed, 16 Nov 2016 03:18:56 -0000

If you specified printerr=False we were referring to the output variable
that hadn't been set. Looks like I broke this back in 2013 in
93ce26f21cdbbd8a645792359cde87acf05144d7.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/utils.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index e3be631..9248077 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -190,9 +190,9 @@ def runcmd(cmd, destdir=None, printerr=True, logger=None):
         subprocess.check_call(cmd, stdout=out, stderr=out, cwd=destdir, shell=True)
     except subprocess.CalledProcessError as e:
         out.seek(0)
+        output = out.read()
+        output = output.decode('ascii').strip()
         if printerr:
-            output = out.read()
-            output = output.decode('ascii').strip()
             if logger:
                 logger.error("%s" % output)
             else:
-- 
2.5.5


