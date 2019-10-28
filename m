Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2A4DE006D2; Mon, 28 Oct 2019 15:09:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [83.102.40.154 listed in list.dnswl.org]
Received: from sypressi2.dnainternet.net (sypressi2.dnainternet.net
	[83.102.40.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1BFAE00EAB
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 15:09:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by sypressi2.dnainternet.net (Postfix) with ESMTP id 84CB91511C;
	Tue, 29 Oct 2019 00:00:07 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sypressi2.dnainternet.net ([83.102.40.154])
	by localhost (sypressi2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id nbdQEiSOvQT6; Tue, 29 Oct 2019 00:00:07 +0200 (EET)
Received: from omenapuu2.dnainternet.net (omenapuu2.dnainternet.net
	[83.102.40.54])
	by sypressi2.dnainternet.net (Postfix) with ESMTP id 330A4150E9;
	Tue, 29 Oct 2019 00:00:07 +0200 (EET)
Received: from localhost.localdomain (178-75-137-78.bb.dnainternet.fi
	[178.75.137.78])
	by omenapuu2.dnainternet.net (Postfix) with ESMTP id 3B0032E9;
	Tue, 29 Oct 2019 00:00:01 +0200 (EET)
From: Anders Montonen <Anders.Montonen@iki.fi>
To: yocto@yoctoproject.org
Date: Mon, 28 Oct 2019 23:59:25 +0200
Message-Id: <20191028215927.25625-2-Anders.Montonen@iki.fi>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028215927.25625-1-Anders.Montonen@iki.fi>
References: <20191028215927.25625-1-Anders.Montonen@iki.fi>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][thud][PATCH 1/3] apparmor: ptest fail to build on arm
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
X-List-Received-Date: Mon, 28 Oct 2019 22:09:55 -0000

From: Armin Kuster <akuster808@gmail.com>

exclude arm and aarch64 ptest tasks

[v2&3]

Sent before committing.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 27ddb455543b670097e252ba0d0ad5b7e4101748)
Signed-off-by: Anders Montonen <Anders.Montonen@iki.fi>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index e3f8dc9..377d918 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -111,6 +111,15 @@ do_install () {
 	fi
 }
 
+#Building ptest on arm fails.
+do_compile_ptest_aarch64 () {
+  :
+}
+
+do_compile_ptest_arm () {
+  :
+}
+
 do_compile_ptest () {
         oe_runmake -C ${B}/tests/regression/apparmor
         oe_runmake -C ${B}/parser/tst
@@ -138,6 +147,15 @@ do_install_ptest () {
 	cp -rf ${B}/binutils ${t}
 }
 
+#Building ptest on arm fails.
+do_install_ptest_aarch64 () {
+  :
+}
+
+do_install_ptest_arm() {
+  :
+}
+
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "apparmor"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
-- 
2.17.1


