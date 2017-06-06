Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EF1FE00B3D; Tue,  6 Jun 2017 08:46:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB360E00ACE
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 08:46:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jun 2017 08:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,306,1493708400"; d="scan'208";a="96200661"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.117])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2017 08:46:49 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Jun 2017 10:46:48 -0500
Message-Id: <1496764011-3595-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: monserratx.sedeno.bustos@intel.com
Subject: [yocto-autobuilder][PATCHv2 2/5] buildsteps/RunSanityTests: Add support for simpleremote target
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
X-List-Received-Date: Tue, 06 Jun 2017 15:46:56 -0000
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


