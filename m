Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23B86C7EE29
	for <webhook@archiver.kernel.org>; Mon, 29 May 2023 08:59:43 +0000 (UTC)
Received: from esa9.hc1455-7.c3s2.iphmx.com (esa9.hc1455-7.c3s2.iphmx.com [139.138.36.223])
 by mx.groups.io with SMTP id smtpd.web11.45737.1685350776304064182
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 May 2023 01:59:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: fujitsu.com, ip: 139.138.36.223, mailfrom: wangmy@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="106885483"
X-IronPort-AV: E=Sophos;i="6.00,200,1681138800"; 
   d="scan'208";a="106885483"
Received: from unknown (HELO yto-r4.gw.nic.fujitsu.com) ([218.44.52.220])
  by esa9.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 May 2023 17:59:33 +0900
Received: from yto-m4.gw.nic.fujitsu.com (yto-nat-yto-m4.gw.nic.fujitsu.com [192.168.83.67])
	by yto-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 554A7CD6C4
	for <yocto@lists.yoctoproject.org>; Mon, 29 May 2023 17:59:31 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id 8C69ED3F0F
	for <yocto@lists.yoctoproject.org>; Mon, 29 May 2023 17:59:30 +0900 (JST)
Received: from localhost.localdomain (unknown [10.167.225.33])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id DF33D6BD6F;
	Mon, 29 May 2023 17:59:29 +0900 (JST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [meta-java] [PATCH] xerces-j: update 2.11.0 -> 2.12.0
Date: Mon, 29 May 2023 16:59:24 +0800
Message-Id: <1685350764-3589-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-27658.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-27658.006
X-TMASE-Result: 10--2.121800-10.000000
X-TMASE-MatchedRID: Ll6vM9Ck4lDRhEyb9f1sjj9B1SHosSXQRzUPAqhCjtjAuQ0xDMaXkEQY
	OtZEiuA4gZBEjCNOXeK0cdw+moQg3hFyIYZe6FcSsZaZ5UBQsoen7C0ZgG5FLhHfiujuTbedOGp
	kA1WuQMLAOWIaLM3BBi5rYfHE0OO9rWL/xQJnm46eAiCmPx4NwGmRqNBHmBvejvEeq6gAkYbfaY
	87m2dqxydET58jp62Slz8brEi6dZumJnTgXmW5tFSDk3tgU2qdnZaUrvH/5vJQj+Y3MT3yCEqBB
	3hdA6TJr3BsmWmf5Fg1xCE2pX52+frM/lV5fHOmS7+RMq/2CK6rA4c7UV2fQpvi2PQO/FFQiz2u
	jrPVx9yEIU1NtMkm0Q==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 May 2023 08:59:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60136

From: Wang Mingyu <wangmy@fujitsu.com>

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../xerces-j/{xerces-j_2.11.0.bb => xerces-j_2.12.0.bb}    | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)
 rename recipes-core/xerces-j/{xerces-j_2.11.0.bb => xerces-j_2.12.0.bb} (88%)

diff --git a/recipes-core/xerces-j/xerces-j_2.11.0.bb b/recipes-core/xerces-j/xerces-j_2.12.0.bb
similarity index 88%
rename from recipes-core/xerces-j/xerces-j_2.11.0.bb
rename to recipes-core/xerces-j/xerces-j_2.12.0.bb
index 159fc9c..fe1fa7c 100644
--- a/recipes-core/xerces-j/xerces-j_2.11.0.bb
+++ b/recipes-core/xerces-j/xerces-j_2.12.0.bb
@@ -6,7 +6,7 @@ PR = "r1"
 
 LIC_FILES_CHKSUM = " \
                     file://LICENSE;md5=d273d63619c9aeaf15cdaf76422c4f87 \
-                    file://LICENSE.DOM-documentation.html;md5=77c27084ca92e9a8efe9314f284acc05 \
+                    file://LICENSE.DOM-documentation.html;md5=f47d9caee3345b75b2d3117125dfa66b \
                     file://LICENSE.DOM-software.html;md5=1f920675d8473fd5cbabf133a7e39e0d \
                     file://LICENSE.resolver.txt;md5=d229da563da18fe5d58cd95a6467d584 \
                     file://LICENSE.serializer.txt;md5=d229da563da18fe5d58cd95a6467d584 \
@@ -20,7 +20,7 @@ SRC_URI = "http://archive.apache.org/dist/xerces/j/Xerces-J-src.${PV}.tar.gz"
 # https://bugzilla.redhat.com/show_bug.cgi?id=1567542
 CVE_CHECK_IGNORE += "CVE-2018-2799"
 
-S = "${WORKDIR}/xerces-2_11_0"
+S = "${WORKDIR}/xerces-2_12_0"
 
 inherit java-library
 
@@ -63,7 +63,6 @@ do_compile() {
 
 }
 
-SRC_URI[md5sum] = "d01fc11eacbe43b45681cb85ac112ebf"
-SRC_URI[sha256sum] = "f59a5ef7b51bd883f2e9bda37a9360692e6c5e439b98d9b6ac1953e1f98b0680"
+SRC_URI[sha256sum] = "c27b81e139ecfc219202bcad79e77529b082e9ed9797bc1a4c13e1bd8f8e31c9"
 
 BBCLASSEXTEND = "native"
-- 
2.34.1


