Return-Path: <Ovidiu.Panait@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CEBDE00D75; Thu, 14 Dec 2017 00:39:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0D7EE00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:39:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBE8ddDh013124
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:39:40 -0800 (PST)
Received: from otp-linux01.wrs.com (128.224.126.17) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 14 Dec 2017 00:39:39 -0800
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Dec 2017 10:39:38 +0200
Message-ID: <20171214083938.257782-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [meta-security][PATCH] xmlsec1: fix invalid paths in target xmlsec1Conf.sh
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
X-List-Received-Date: Thu, 14 Dec 2017 08:39:41 -0000
Content-Type: text/plain

Remove build host paths from target xmlsec1Conf.sh script.

Signed-off-by: Catalin Enache <catalin.enache@windriver.com>
Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 recipes-security/xmlsec1/xmlsec1_1.2.24.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb b/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
index 9798ce2..1f7fbd3 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
@@ -46,6 +46,7 @@ do_compile_ptest () {
 
 do_install_append() {
     sed -i -e "s@${STAGING_DIR_HOST}@@g" ${D}${bindir}/xmlsec1-config
+    sed -e "s@${STAGING_DIR_HOST}@@g" -i ${D}${libdir}/xmlsec1Conf.sh
 }
 
 do_install_ptest () {
-- 
2.10.2


