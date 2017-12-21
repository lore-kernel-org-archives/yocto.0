Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22642E008FB; Thu, 21 Dec 2017 04:08:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 338 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Dec 2017 04:08:16 PST
Received: from osg.samsung.com (osg.samsung.com [64.30.133.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7168E008FB
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 04:08:16 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 9A987187D9;
	Thu, 21 Dec 2017 04:02:37 -0800 (PST)
X-Virus-Scanned: Debian amavisd-new at dev.s-opensource.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cz4ddcmiPpqv; Thu, 21 Dec 2017 04:02:29 -0800 (PST)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id C132E187B1;
	Thu, 21 Dec 2017 04:02:23 -0800 (PST)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Thu, 21 Dec 2017 13:02:14 +0100
Message-Id: <1513857738-29097-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 1/5] iotivity_1.2.1: Hotfix: Add ORIGIN rpath for binutils-2.29
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
X-List-Received-Date: Thu, 21 Dec 2017 12:08:18 -0000

Set RPATH to ORIGIN as supported by gcc/ld (-rpath=\$ORIGIN)

Observed issue on poky master was:

  ld: warning: libconnectivity_abstraction.so, \
  needed by out/yocto/x86_64/release/liboctbstack.so,
  not found (try using -rpath or -rpath-link)
  out/yocto/x86_64/release/liboctbstack.so: \
  undefined reference to `coap_write_block_opt'

Note that problem is also about
to be fixed upstream directly in scons files.

Bug: https://jira.iotivity.org/browse/IOT-2651
Relate-to: https://gerrit.iotivity.org/gerrit/#/c/22355/
Thanks-to: Mikko Ylinen <mikko.ylinen@intel.com>
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 recipes-core/iotivity/iotivity_1.2.1.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/iotivity/iotivity_1.2.1.bb b/recipes-core/iotivity/iotivity_1.2.1.bb
index c8fb8fd..33adb9a 100644
--- a/recipes-core/iotivity/iotivity_1.2.1.bb
+++ b/recipes-core/iotivity/iotivity_1.2.1.bb
@@ -53,6 +53,7 @@ python () {
 
 IOTIVITY_BIN_DIR = "/opt/${PN}"
 IOTIVITY_BIN_DIR_D = "${D}${IOTIVITY_BIN_DIR}"
+LDFLAGS_append = " -Wl,-rpath-link=\\$$ORIGIN"
 
 do_compile_prepend() {
     export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}"
-- 
1.9.1


