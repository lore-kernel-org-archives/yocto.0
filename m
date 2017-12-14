Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB6BE00D72; Thu, 14 Dec 2017 08:35:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9439EE00D41
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726552"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:24 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:41 +0200
Message-Id: <e063643456d1950723cb050a69f651f5a8029d8e.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 01/20] upgradehelper.py: do not error out if testimage or buildhistory are enabled in bitbake conf, but not in AUH conf
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:26 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 8e5466e..1356aef 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -240,12 +240,6 @@ class Updater(object):
                   " but isn't INHERIT in conf/local.conf, if you want"\
                   " to enable please set.")
                 exit(1)
-        else:
-            if 'buildhistory' in self.base_env['INHERIT']:
-                E(" Buildhistory was INHERIT in conf/local.conf"\
-                  " but buildhistory=yes isn't in upgrade-helper.conf,"\
-                  " if you want to enable please set.")
-                exit(1)
 
         return enabled
 
@@ -280,12 +274,6 @@ class Updater(object):
                   " but isn't INHERIT in conf/local.conf, if you want"\
                   " to enable please set.")
                 exit(1)
-        else:
-            if 'testimage' in self.base_env['INHERIT']:
-                E(" testimage was INHERIT in conf/local.conf"\
-                  " but testimage=yes isn't in upgrade-helper.conf,"\
-                  " if you want to enable please set.")
-                exit(1)
 
         return enabled
 
-- 
2.15.0


