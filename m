Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81C20E0085D; Fri,  2 Jun 2017 10:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2013DE0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 10:13:05 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 02 Jun 2017 10:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,286,1493708400"; d="scan'208";a="110223790"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.117])
	by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2017 10:13:03 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  2 Jun 2017 12:13:02 -0500
Message-Id: <1496423585-26534-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1496423585-26534-1-git-send-email-anibal.limon@linux.intel.com>
References: <1496423585-26534-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: monserratx.sedeno.bustos@intel.com
Subject: [yocto-autobuilder][PATCH 2/5] buildsteps/RunSanityTests: Add support for simpleremote target
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
X-List-Received-Date: Fri, 02 Jun 2017 17:13:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The testimage class supports a simpleremote target specifying the
server and target ip to run tests over SSH.

The main usage of this will in conjunction with the DAFT to make
tests on real HW.

[YOCTO #10604]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/RunSanityTests.py        | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index 6fa03bc..0022cb9 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -60,6 +60,14 @@ class RunSanityTests(BitbakeShellCommand):
         elif layerversion > 1:
             self.command = self.command + "echo 'INHERIT += \"testimage\"' >> ./conf/auto.conf;"
             self.command = self.command + "echo 'TEST_QEMUBOOT_TIMEOUT = \"1500\"' >> ./conf/auto.conf;"
+
+            target_ip = self.getProperty('target_ip')
+            server_ip = self.getProperty('server_ip')
+            if target_ip and server_ip:
+                self.command = self.command +  "echo 'TEST_TARGET=\"simpleremote\"' >> ./conf/auto.conf;"
+                self.command = self.command +  "echo 'TEST_TARGET_IP=\"%s\"' >> ./conf/auto.conf;" % target_ip
+                self.command = self.command +  "echo 'TEST_SERVER_IP=\"%s\"' >> ./conf/auto.conf;" % server_ip
+
             if self.suites:
                 if layerversion > 3:
                     self.command = self.command + "echo 'TEST_SUITES = \"" + self.suites + "\"'" + " >> ./conf/auto.conf;"
-- 
2.1.4


