Return-Path: <Daniel.Dragomir@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30586E00A1A; Wed, 12 Dec 2018 07:23:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89C5CE0090E
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 07:23:03 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wBCFN21E008770
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 07:23:02 -0800 (PST)
Received: from otp-ddragomi-d1.wrs.com (128.224.125.89) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Wed, 12 Dec 2018 07:23:02 -0800
From: Daniel Dragomir <daniel.dragomir@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Dec 2018 17:27:33 +0200
Message-ID: <1544628453-2324-1-git-send-email-daniel.dragomir@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][thud][PATCH] tpm2-abrmd: Fix QA error
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
X-List-Received-Date: Wed, 12 Dec 2018 15:23:04 -0000
Content-Type: text/plain

QA Issue: tpm2-abrmd: Files/directories were installed but not
          shipped in any package:
/usr/share/dbus-1
/usr/share/dbus-1/system-services
/usr/share/dbus-1/system-services/com.intel.tss2.Tabrmd.service

Signed-off-by: Daniel Dragomir <daniel.dragomir@windriver.com>
---
 meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
index 951556d..6347379 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
@@ -46,7 +46,8 @@ do_install_append() {
     install -m 0644 "${WORKDIR}/tpm2-abrmd.default" "${D}${sysconfdir}/default/tpm2-abrmd"
 }
 
-FILES_${PN} += "${libdir}/systemd/system-preset"
+FILES_${PN} += "${libdir}/systemd/system-preset \
+		${datadir}/dbus-1"
 
 RDEPENDS_${PN} += "tpm2.0-tss"
 
-- 
2.7.4


