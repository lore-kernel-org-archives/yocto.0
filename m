Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.2445.1596790300720544715
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Aug 2020 01:51:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 0778pdOK028177
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 7 Aug 2020 01:51:39 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Fri, 7 Aug 2020 01:51:39 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-cgl][PATCH] ucarp: don't hardcode the path for ifconfig
Date: Fri, 7 Aug 2020 16:47:15 +0800
Message-ID: <20200807084715.3024520-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Don't hardcode the path for the ifconfig command in case the path
for ifconfig on the system may be different from the hardcoded.

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh | 2 +-
 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
index a431c32..27e0d2b 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
@@ -4,4 +4,4 @@ exec 2> /dev/null
 #/sbin/ip addr del "$2"/24 dev "$1"
 
 # or alternatively:
-/sbin/ifconfig "$1":254 down
+ifconfig "$1":254 down
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
index c1b8a4f..f81d578 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
@@ -4,4 +4,4 @@ exec 2> /dev/null
 #/sbin/ip addr add "$2"/24 dev "$1"
 
 # or alternatively:
-/sbin/ifconfig "$1":254 "$2" netmask 255.255.255.0 
+ifconfig "$1":254 "$2" netmask 255.255.255.0
-- 
2.26.2

