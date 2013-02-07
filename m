Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1B19EE00740
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 06:03:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r17E3n7Q023036
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 7 Feb 2013 06:03:49 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Thu, 7 Feb 2013 06:03:48 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Thu, 7 Feb 2013 16:03:37 +0200
Message-ID: <1360245817-1537-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH] packagegroup-core-p1: Remove wpa-supplicant-systemd as systemd services are now in ${PN}
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Feb 2013 14:03:50 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../packagegroups/packagegroup-core-p1.bb          |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb b/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
index ea2dfe0..e2989dd 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
@@ -40,7 +40,6 @@ RDEPENDS_packagegroup-core-p1 = "\
     sqlite3 \
     udev \
     wpa-supplicant \
-    wpa-supplicant-systemd \
     "
 
 RRECOMMENDS_${PN} = "\
-- 
1.7.5.4


