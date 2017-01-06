Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7EDAE0049F; Thu,  5 Jan 2017 23:27:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24A05E00443
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 23:27:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v067ROo8006489
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 23:27:25 -0800
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 23:27:23 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 23:27:24 -0800
Message-ID: <1483687644-138186-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] audit: upgrade 2.6.6 -> 2.7
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
X-List-Received-Date: Fri, 06 Jan 2017 07:27:26 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/audit/{audit_2.6.6.bb => audit_2.7.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/audit/{audit_2.6.6.bb => audit_2.7.bb} (96%)

diff --git a/recipes-security/audit/audit_2.6.6.bb b/recipes-security/audit/audit_2.7.bb
similarity index 96%
rename from recipes-security/audit/audit_2.6.6.bb
rename to recipes-security/audit/audit_2.7.bb
index 3823731..6bcbecd 100644
--- a/recipes-security/audit/audit_2.6.6.bb
+++ b/recipes-security/audit/audit_2.7.bb
@@ -15,8 +15,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "871fbc03039a5101b5191c5dcc6e8ac2"
-SRC_URI[sha256sum] = "61d8dc61e882fdbb75153a1316817a8f8c8fca25de588256edd81fbb03e7994b"
+SRC_URI[md5sum] = "d3b1017e259509b9b3054656d0d2b4e9"
+SRC_URI[sha256sum] = "05533f5d88d9520ceebfd8bfb3fd998ca4a2b246757fec7bbd8e33c287544537"
 
 inherit autotools pythonnative update-rc.d systemd
 
-- 
2.7.4


