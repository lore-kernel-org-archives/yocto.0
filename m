Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36CBCE00CD5; Sat,  9 Sep 2017 23:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA58BE00C77
	for <yocto@yoctoproject.org>; Sat,  9 Sep 2017 23:32:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id D8215A0D4E;
	Sun, 10 Sep 2017 06:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ns36jipes-cq; Sun, 10 Sep 2017 06:33:22 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id D4EE2A0B2A;
	Sun, 10 Sep 2017 06:33:18 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Sun, 10 Sep 2017 08:32:45 +0200
Message-Id: <1505025165-28701-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH v2] iotivity_1.2.1: Hotfix: Add ORIGIN rpath for binutils-2.29
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
X-List-Received-Date: Sun, 10 Sep 2017 06:32:58 -0000

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
Origin: https://github.com/tizenteam/meta-oic/tree/sandbox/pcoval/on/master/review
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


