Return-Path: <huangqy.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 362D5E00B47; Tue, 20 Jun 2017 19:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Jun 2017 19:46:22 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A575E00B2F
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 19:46:22 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="20291770"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 21 Jun 2017 10:45:12 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 196BF47C6D37
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 10:45:12 +0800 (CST)
Received: from localhost.localdomain (10.167.226.81) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.319.2; Wed, 21 Jun 2017 10:45:11 +0800
From: Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Wed, 21 Jun 2017 10:45:13 +0800
Message-ID: <1498013113-8370-1-git-send-email-huangqy.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.167.226.81]
X-yoursite-MailScanner-ID: 196BF47C6D37.A3B74
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: huangqy.fnst@cn.fujitsu.com
X-Mailman-Approved-At: Mon, 26 Jun 2017 06:38:35 -0700
Cc: susanbian <bianyq@cn.fujitsu.com>
Subject: [meta-selinux] [PATCH] audit 2.7.1 -> 2.7.6
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
X-List-Received-Date: Wed, 21 Jun 2017 02:46:24 -0000
Content-Type: text/plain

From: susanbian <bianyq@cn.fujitsu.com>

Upgrade audit from 2.7.1 to 2.7.6

Signed-off-by: susanbian <bianyq@cn.fujitsu.com>
---
 recipes-security/audit/{audit_2.7.1.bb => audit_2.7.6.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/audit/{audit_2.7.1.bb => audit_2.7.6.bb} (96%)

diff --git a/recipes-security/audit/audit_2.7.1.bb b/recipes-security/audit/audit_2.7.6.bb
similarity index 96%
rename from recipes-security/audit/audit_2.7.1.bb
rename to recipes-security/audit/audit_2.7.6.bb
index 975e6e9..75d4d23 100644
--- a/recipes-security/audit/audit_2.7.1.bb
+++ b/recipes-security/audit/audit_2.7.6.bb
@@ -15,8 +15,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "b224ea6f000c8281e5deee86903ac5ba"
-SRC_URI[sha256sum] = "0441790794fd9375dbca598fa0ffb46c57ff37b3a24b94ffec0bbee3215cca09"
+SRC_URI[md5sum] = "55a81bbed973b58a90590c949e71dc3e"
+SRC_URI[sha256sum] = "fa65289cffdc95a25bfbdba541f43ee1b12c707090a38fd027dcf9354b9014e7"
 
 inherit autotools pythonnative update-rc.d systemd
 
-- 
2.7.4




