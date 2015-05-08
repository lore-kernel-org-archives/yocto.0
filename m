Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EE7AE009D2; Fri,  8 May 2015 13:13:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AE46E009ED
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:13:35 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YqoeN-0002tj-GM from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 08 May 2015 13:13:35 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 8 May 2015 21:13:33 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 May 2015 23:13:26 +0300
Message-ID: <1431116010-14977-6-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
References: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 06/10] cluster-glue: add another directory to volatiles and tmpfiles config
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
X-List-Received-Date: Fri, 08 May 2015 20:13:41 -0000
Content-Type: text/plain

Add /var/run/heartbeat directory to volatiles and tmpfiles
configuration.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles  | 1 +
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/volatiles | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles
index 252e13f..b683b28 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles
@@ -4,4 +4,5 @@ d /var/lib/heartbeat/cores 0755 hacluster haclient -
 d /var/lib/heartbeat/cores/hacluster 0700 hacluster haclient -
 d /var/lib/heartbeat/cores/root 0700 root root -
 d /var/lib/heartbeat/cores/nobody 0700 nobody nogroup -
+d /var/run/heartbeat 0755 root root -
 
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/volatiles b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/volatiles
index 892db1b..d6f0c87 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/volatiles
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/volatiles
@@ -3,4 +3,5 @@ d hacluster haclient 0750 /var/lib/heartbeat/pengine none
 d hacluster haclient 0755 /var/lib/heartbeat/cores none
 d hacluster haclient 0700 /var/lib/heartbeat/cores/hacluster none
 d root root 0700 /var/lib/heartbeat/cores/root none
-d nobody nogroup 0700 /var/lib/heartbeat/cores/nobody none
\ No newline at end of file
+d nobody nogroup 0700 /var/lib/heartbeat/cores/nobody none
+d root root 0755  /var/run/heartbeat none
-- 
2.1.4


