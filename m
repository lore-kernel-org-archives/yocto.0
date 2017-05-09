Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E48F2E00BF8; Tue,  9 May 2017 07:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533E5E00ACE
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:53:08 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id u187so217794pgb.1
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Lw3cVbpVXpPw5XASDbD8tv96pDVXLFYNAf//iFycN9Q=;
	b=WApVZ1QbaOobAtpZSwYLduT3akuMz+WtE7a264h4EfSY0Zvh1AQmC/BI6+UV1PF54O
	mubKKoZmfClRvCZ4NtEOJzvxYyIeOLadq+kWbBUQSQxcz4pqRUi9k7qp1sUOpdw9ovgR
	CqKUDGKUk0zZa8U4SpIpxACNWxgSJexq7/B0HMdUtMgm4XSFboWa03r7TJ9RcI8YTS/t
	UWh/71rOT5/FNaLAfEz3lhC2aF0uAWy1aPqdZ3JceOVLHc7fOrwi6rkZ69ns/aBvSu02
	f/tyzEhWem1GSpHMzRytgnzPPNJHkcnRGjIY9+Cr6rBuFDjPVDVTuC9EN/k+OeXJ7Kjc
	3ybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Lw3cVbpVXpPw5XASDbD8tv96pDVXLFYNAf//iFycN9Q=;
	b=RV9CIrns5ttS2MQc/GddoQbDRxflF2HtpzxaaHl8EssJOlpwJUgbSVuUE6NIAdqSHQ
	MvGizy5YOEmVYpFqHzIbQqQjoxblF4k5XTeV8YhYYPfXySYmfq1dlEIiTA1CM+DvnxMc
	lNsoxSUlDEisLO6xA/rLS3q/XvjchCaIv31B8WXWCvwNCeWlKKP+APUkckmnlGTjHFSO
	OFq5at9FcVMqECli3TsXPoYAi7+BVA8RP1b2hCV/kXXd6QbEQ36HSPuyDSlFax5r6sf/
	YvHCBfbY7DgkG+n+4McwvTFvx6kB+KYclETMbrk0lb2ekbbmSWwhv4EreZNCkgRgU9BN
	fRCg==
X-Gm-Message-State: AODbwcBhGR3k+bskeRsH74/KvM3PbkC9Y0Apylbng4FRVLPW3Qn4Wfap
	lucc0BxsfxN6mLC8
X-Received: by 10.99.119.7 with SMTP id s7mr537707pgc.143.1494341587798;
	Tue, 09 May 2017 07:53:07 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id j17sm487897pfk.23.2017.05.09.07.53.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:53:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:53:06 -0700
Message-Id: <1494341586-17959-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] security-core package group: add few more apps
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
X-List-Received-Date: Tue, 09 May 2017 14:53:16 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 681874c..cfd7918 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -27,6 +27,7 @@ RDEPENDS_packagegroup-security-utils = "\
     checksec \
     nmap \
     pinentry \
+    scapy \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
     "
 
@@ -34,7 +35,8 @@ SUMMARY_packagegroup-security-scanners = "Security scanners"
 RDEPENDS_packagegroup-security-scanners = "\
     nikto \
     checksecurity \
-	"
+    clamav \
+    "
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
 RDEPENDS_packagegroup-security-audit = " \
@@ -51,9 +53,12 @@ SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS_packagegroup-security-ids = " \
     tripwire \
     samhain-client \
+    suricata \
     "
 
 SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
 RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
-- 
2.7.4


