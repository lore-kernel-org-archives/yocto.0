Received: from esa7.hc1455-7.c3s2.iphmx.com (esa7.hc1455-7.c3s2.iphmx.com [139.138.61.252])
 by mx.groups.io with SMTP id smtpd.web12.7051.1624018674010974816
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 05:17:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: fujitsu.com, ip: 139.138.61.252, mailfrom: sekine.shigeki@fujitsu.com)
IronPort-SDR: iCxXzlGa34RcqLRG+6viG8YRBH/Te4R/gWqHsGzkPMHJk0gyInCSPaEIxELuojjvCUY7/ZQw5K
 W8T2OIAtPGiHneLpLYprRTQCXEzh0Mk55kLumPAcIo6AMitO6oxINzYngNFjb2fVcyvh2z+qCv
 bq5yeU/s1t8/AmKNSAy6eW7NtC+gjORKmwm1cAQtMeITAkpPV48p21VCXZ/e1CM/QTOb5QdG02
 RYyNPCd5htHErsZ7j1nusG8LVjhVfcgWL5u4JM6izlprFPUmtPpzWfDgqjsfvzdTxPxch/lzSr
 hAI=
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="12428375"
X-IronPort-AV: E=Sophos;i="5.83,283,1616425200"; 
   d="scan'208";a="12428375"
Received: from unknown (HELO oym-r4.gw.nic.fujitsu.com) ([210.162.30.92])
  by esa7.hc1455-7.c3s2.iphmx.com with ESMTP; 18 Jun 2021 21:17:51 +0900
Received: from oym-m4.gw.nic.fujitsu.com (oym-nat-oym-m4.gw.nic.fujitsu.com [192.168.87.61])
	by oym-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 558C232F7C1
	for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 21:17:50 +0900 (JST)
Received: from yto-om2.fujitsu.com (yto-om2.o.css.fujitsu.com [10.128.89.163])
	by oym-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id 8D0314498F5
	for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 21:17:49 +0900 (JST)
Received: from 7d162709cefb.openstacklocal (bakeccha.fct.css.fujitsu.com [10.126.195.136])
	by yto-om2.fujitsu.com (Postfix) with ESMTP id 67604401337AC
	for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 21:17:49 +0900 (JST)
From: "Sekine Shigeki" <sekine.shigeki@fujitsu.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] smack: add 3 cves to allowlist
Date: Fri, 18 Jun 2021 21:16:50 +0900
Message-Id: <20210618121650.4798-1-sekine.shigeki@fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Content-Transfer-Encoding: 8bit

CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 are not for smack of smack-team(https://github.com/smack-team/smack) but other project.

Signed-off-by: Sekine Shigeki <sekine.shigeki@fujitsu.com>
---
 recipes-mac/smack/smack_1.3.1.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index b1ea4e9..6ae715e 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -13,6 +13,11 @@ SRC_URI = " \
 
 PV = "1.3.1"
 
+# CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other product.
+CVE_CHECK_WHITELIST += "CVE-2014-0363"
+CVE_CHECK_WHITELIST += "CVE-2014-0364"
+CVE_CHECK_WHITELIST += "CVE-2016-10027"
+
 inherit autotools update-rc.d pkgconfig ptest
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 inherit features_check
-- 
2.25.1

