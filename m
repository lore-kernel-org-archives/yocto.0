Received: from esa3.mentor.iphmx.com (esa3.mentor.iphmx.com [68.232.137.180])
 by mx.groups.io with SMTP id smtpd.web10.10597.1602836293033094706
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Oct 2020 01:18:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mentor.com, ip: 68.232.137.180, mailfrom: sajjad_ahmed@mentor.com)
IronPort-SDR: eRmaQZaNFIUvT6qbm/MHRKUOLf4dDRhN9X/w5c1Suzff2D3YZP2J9AkF6cUQM/9q89c08aM16P
 c6SqevnS5Y8LikF9A4Dvcy8EeBvby6KM2CZPnEhpBMPVIkdzTw5D8s7I8lmYPIyaVVUvcPjXl7
 Qquw/F2FgFtolPKfsBsuMKr1HIDRu1nJ9jNOD+HzUT5ujtIkFvGLcnMTdkE6q1L4cY8gw7uJ0B
 fASD2h2oBS3z96wIDRu2+daWp3EzbEMdwqf4Bl1K5iPQ5PJxqLGqwaE+1WCJVZJSzb6gvhsAMI
 bXQ=
X-IronPort-AV: E=Sophos;i="5.77,382,1596528000"; 
   d="scan'208";a="54024153"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa3.mentor.iphmx.com with ESMTP; 16 Oct 2020 00:18:12 -0800
IronPort-SDR: saGjnUx1sMkNGF3j2zXJ/pNlhGitXKoArujF29iFS5tRxEV9WJw1AqzMICdY6kvawfh2uGMdUb
 rT2KD6OLS/mvEyxwxXg4BUT7W4u0wg22bPN5+T1LYa5X8kZ+0fHXrKRqxHP4W/fZcsH2DmDpr8
 eysM/++RUan6nhPO8ZsLY/e0SDqXKuBX1U5uFcz2OCs5pbVSyp7ShyMRMGSvgdvFEl4siXacWm
 wq+ZahspEWTMdAvme2ENWB/X3lC7Mu7J9B8T6YXixrqUCUOWhMPw8+lgUYLfM9HaAhdipfNsdg
 A6E=
From: sajjad_ahmed@mentor.com
To: <yocto@lists.yoctoproject.org>
CC: <akuster808@gmail.com>, Sajjad Ahmed <sajjad_ahmed@mentor.com>
Subject: [meta-integrity][PATCH] layer.conf: use += instead of := to update BBFILES
Date: Fri, 16 Oct 2020 13:17:42 +0500
Message-ID: <20201016081742.171736-1-sajjad_ahmed@mentor.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Return-Path: sajjad_ahmed@mentor.com
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Updating BBFILES with := isn't the standard way and can break
parsing under certain conditions, instead use += which is widely used.

Signed-off-by: Sajjad Ahmed <sajjad_ahmed@mentor.com>
---
 meta-integrity/conf/layer.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index f905b0b..6075df9 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -2,8 +2,7 @@
 BBPATH =. "${LAYERDIR}:"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} \
-            ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "integrity"
-- 
2.25.1

