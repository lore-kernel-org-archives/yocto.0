Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7A26E00B77; Thu, 11 Oct 2018 23:34:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B39E00B6C
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 23:34:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9C6YKY0021032
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 23:34:30 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Thu, 11 Oct 2018 23:34:09 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Oct 2018 14:44:21 +0800
Message-ID: <1539326661-19074-2-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1539326661-19074-1-git-send-email-hongxu.jia@windriver.com>
References: <1539326661-19074-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/2] resource-agents: support multiple dbg packages
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
X-List-Received-Date: Fri, 12 Oct 2018 06:34:42 -0000
Content-Type: text/plain

Since `da5ec06 package: Add auto package splitting of .debug file'
applied in oe-core, only one dbg package is split by default,
set NOAUTOPACKAGEDEBUG = '1' to support multiple dbg packages

Correct dirs for FILES_${PN}-extra/FILES_${PN}-extra-dbg/
FILES_${PN}-dbg, previously dirs are obsolete.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb  | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
index 2a9643b..8b2b8e1 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
@@ -55,11 +55,12 @@ do_install_append() {
 # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
 # and it's required by portblock, so move portblock into ${PN}-extra together.
 PACKAGES_prepend  = "${PN}-extra ${PN}-extra-dbg ldirectord "
-FILES_${PN}-extra = "${libdir}/resource-agents/heartbeat/tickle_tcp \
+NOAUTOPACKAGEDEBUG = "1"
+FILES_${PN}-extra = "${libexecdir}/heartbeat/tickle_tcp \
                      ${libdir}/ocf/resource.d/heartbeat/portblock \
                      ${datadir}/resource-agents/ocft/configs/portblock \
                     "
-FILES_${PN}-extra-dbg += "${libdir}/resource-agents/heartbeat/.debug/tickle_tcp"
+FILES_${PN}-extra-dbg = "${libexecdir}/heartbeat/.debug/tickle_tcp"
 
 FILES_ldirectord = " \
         ${sbindir}/ldirectord \
@@ -101,4 +102,5 @@ FILES_${PN} += "${datadir}/cluster/* \
                 "
 
 FILES_${PN}-dbg += "${libdir}/ocf/resource.d/heartbeat/.debug \
-                    ${libdir}/resource-agents/heartbeat/.debug "
+                    ${sbindir}/.debug \
+                    ${libexecdir}/heartbeat/.debug "
-- 
2.7.4


