Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47152E00DF1; Thu, 29 Aug 2019 01:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0F41E00DF0
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 01:55:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7T8s7Mp023726
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Aug 2019 01:54:33 -0700
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 29 Aug 2019 01:54:31 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Thu, 29 Aug 2019 16:53:53 +0800
Message-ID: <1567068833-9698-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567068833-9698-1-git-send-email-yi.zhao@windriver.com>
References: <1567068833-9698-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-selinux][PATCH 2/2] mcstrans: specify INITDIR
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
X-List-Received-Date: Thu, 29 Aug 2019 08:55:06 -0000
Content-Type: text/plain

By default the mcstrans init script will be installed to
/etc/rc.d/init.d directory. Specify INITDIR to install it to /etc/init.d
directory.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/mcstrans.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
index e66633d..0eb8720 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -15,7 +15,7 @@ inherit systemd update-rc.d
 DEPENDS += "libsepol libselinux libcap"
 
 # We do not need "${D}/" as a prefix anymore.
-EXTRA_OEMAKE += "SBINDIR=${base_sbindir}"
+EXTRA_OEMAKE += "SBINDIR=${base_sbindir} INITDIR=${sysconfdir}/init.d"
 
 do_install_append() {
     install -d ${D}${sbindir}
-- 
2.7.4


