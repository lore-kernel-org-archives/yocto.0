Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96329E00D01; Wed, 27 Feb 2019 00:38:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D6A8E007B3
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 00:38:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1R8cMjt012671
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 00:38:32 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.435.0; Wed, 27 Feb 2019 00:38:11 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 27 Feb 2019 16:38:10 +0800
Message-ID: <1551256690-116868-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][PATCH] xmlsec1: add PACKAGECONFIG disable-des
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
X-List-Received-Date: Wed, 27 Feb 2019 08:38:44 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-security/xmlsec1/xmlsec1_1.2.27.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
index 0cd06c5..76e3976 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
@@ -33,6 +33,7 @@ PACKAGECONFIG[gnutls] = ",,gnutls"
 PACKAGECONFIG[libgcrypt] = ",,libgcrypt"
 PACKAGECONFIG[nss] = "--with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../..,,nss nspr"
 PACKAGECONFIG[openssl] = ",,openssl"
+PACKAGECONFIG[disable-des] = "--disable-des,,,"
 
 # these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
 FILES_SOLIBSDEV = "${libdir}/libxmlsec1.so"
-- 
2.7.4


