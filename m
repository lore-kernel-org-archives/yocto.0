Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7F9EE009BE; Fri, 24 Apr 2015 13:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DE9BE00961
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:29:36 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YlkEB-0004Fb-SB from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 24 Apr 2015 13:29:36 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 24 Apr 2015 21:29:34 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 23:29:27 +0300
Message-ID: <1429907371-14096-5-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
References: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 5/9] cluster-resource-agents: add bash to RDEPENDS for ocft and ${PN}
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
X-List-Received-Date: Fri, 24 Apr 2015 20:29:44 -0000
Content-Type: text/plain

Add bash to respective RDEPENDS as pointed by QA WARNINGS:

cluster-resource-agents-1.0.3: /usr/sbin/ocft_ocft contained in package ocft requires /bin/bash, but no providers found in its RDEPENDS [file-rdeps]
cluster-resource-agents-1.0.3: /usr/lib/ocf/resource.d/heartbeat/AoEtarget_cluster-resource-agents contained in package cluster-resource-agents requires /bin/bash, but no providers found in its RDEPENDS [file-rdeps]

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 .../cluster-resource-agents/cluster-resource-agents_1.0.3.bb      | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb
index 5372786..ee733f7 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb
@@ -76,9 +76,17 @@ FILES_${PN} += " \
 	${datadir}/resource-agents/ra-api-1.dtd \
 	"
 
+RDEPENDS_ocft += " \
+	bash \
+"
+
 FILES_ocft += " \
 	${datadir}/resource-agents/ocft \
 	${sbindir}/ocft \
 	"
 
+RDEPENDS_${PN} += " \
+	bash \
+"
+
 FILES_${PN}-dbg += "${libdir}/heartbeat/.debug/ ${libdir}/ocf/resource.d/heartbeat/.debug/"
-- 
2.1.4


