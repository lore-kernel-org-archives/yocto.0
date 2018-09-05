Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E9DE00AC8; Tue,  4 Sep 2018 17:19:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4507E00AAA
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w850IvgD026646
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:57 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:55 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:19 +0800
Message-ID: <1536106707-30781-9-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 08/16] mcstrans: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:19:07 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/mcstrans.inc    | 1 -
 recipes-security/selinux/mcstrans_2.7.bb | 7 -------
 recipes-security/selinux/mcstrans_2.8.bb | 7 +++++++
 3 files changed, 7 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/mcstrans_2.7.bb
 create mode 100644 recipes-security/selinux/mcstrans_2.8.bb

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
index 996e8d0..2568c8d 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -14,7 +14,6 @@ inherit systemd update-rc.d
 
 DEPENDS += "libsepol libselinux libcap"
 
-EXTRA_OEMAKE += "SYSTEMDDIR=${D}${systemd_unitdir} SBINDIR=${D}/${base_sbindir}"
 do_install_append() {
     install -d ${D}${sbindir}
     install -m 755 utils/untranscon ${D}${sbindir}/
diff --git a/recipes-security/selinux/mcstrans_2.7.bb b/recipes-security/selinux/mcstrans_2.7.bb
deleted file mode 100644
index 2d5bbfd..0000000
--- a/recipes-security/selinux/mcstrans_2.7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-
-SRC_URI[md5sum] = "edba0f72fdf7fdd1ad0a2c6d102e8cfa"
-SRC_URI[sha256sum] = "cdca003282d160b50ad695ab5b013c05ca21387a419b2f89288534184d16e1e2"
diff --git a/recipes-security/selinux/mcstrans_2.8.bb b/recipes-security/selinux/mcstrans_2.8.bb
new file mode 100644
index 0000000..8923c3c
--- /dev/null
+++ b/recipes-security/selinux/mcstrans_2.8.bb
@@ -0,0 +1,7 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+SRC_URI[md5sum] = "3a0edb2a8b6a255199824abd58c0906c"
+SRC_URI[sha256sum] = "ec6ea65660550ed6bbd2a834725ba7526ac53599753d7b95072e4afd4afc14e4"
-- 
2.7.4


