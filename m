Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAC1BE009CD; Fri, 24 Apr 2015 13:29:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F402AE009F2
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:29:34 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YlkEA-0004Fb-5c from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 24 Apr 2015 13:29:34 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 24 Apr 2015 21:29:32 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 23:29:24 +0300
Message-ID: <1429907371-14096-2-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
References: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/9] packagegroup-cgl-swdevtools: don't depend on numactl on arm
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
X-List-Received-Date: Fri, 24 Apr 2015 20:29:43 -0000
Content-Type: text/plain

Package numactl is disabled on ARM platform. Do no depend on it if we
are building for this platform.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
index 84e747f..9f9ae03 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
@@ -9,6 +9,9 @@ inherit packagegroup
 
 PACKAGES = "packagegroup-cgl-swdevtools"
 
+NUMACTL = "numactl"
+NUMACTL_arm = ""
+
 RDEPENDS_packagegroup-cgl-swdevtools = " \
     libuio \
     libcap-ng \
@@ -17,7 +20,7 @@ RDEPENDS_packagegroup-cgl-swdevtools = " \
     libsocket6-perl \
     libmailtools-perl \
     libhtml-tagset-perl \
-    numactl \
+    ${NUMACTL} \
     "
 
 RRECOMMENDS_packagegroup-cgl-swdevtools = ""
-- 
2.1.4


