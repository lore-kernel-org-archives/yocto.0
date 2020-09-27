Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9681.1601198821993886085
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 02:27:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2FEB338C0882
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 02:27:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 08R9R0kR013306
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 02:27:00 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Sun, 27 Sep 2020 02:26:59 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][ 3/3] ucarp: add initscripts-functions as runtime dependency when using systemd
Date: Sun, 27 Sep 2020 17:26:20 +0800
Message-ID: <20200927092620.27754-3-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200927092620.27754-1-kai.kang@windriver.com>
References: <20200927092620.27754-1-kai.kang@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain

From: Yi Zhao <yi.zhao@windriver.com>

The ucarp.service invokes script /usr/libexec/ucarp to start/stop the
ucarp service. But the /etc/init.d/functions file which is required by
the script is not installed by default when using systemd. Explicitly
set the initscripts-functions package as the runtime dependency when
using systemd.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
index d17baa0..5ba236d 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
@@ -31,6 +31,7 @@ SRC_URI[sha256sum] = "f3cc77e28481fd04f62bb3d4bc03104a97dd316c80c0ed04ad7be24b54
 inherit autotools gettext systemd
 
 DEPENDS = "libpcap"
+RDEPENDS_${PN} = "${@bb.utils.contains('DISTRO_FEATURES','systemd','initscripts-functions','',d)}"
 
 SYSTEMD_SERVICE_${PN} = "ucarp.service"
 SYSTEMD_AUTO_ENABLE = "disable"
-- 
2.17.1

