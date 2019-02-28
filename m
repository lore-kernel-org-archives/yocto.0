Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CA94E00D08; Wed, 27 Feb 2019 21:46:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA1BAE00CEE
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 21:46:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1S5kQwM013381
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 21:46:26 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.435.0; Wed, 27 Feb 2019 21:46:26 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 28 Feb 2019 13:46:25 +0800
Message-ID: <1551332785-158951-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20190227170328.GU12046@bill-the-cat>
References: <20190227170328.GU12046@bill-the-cat>
MIME-Version: 1.0
Subject: [meta-security][PATCH V2] xmlsec1: add PACKAGECONFIG disable-des
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
X-List-Received-Date: Thu, 28 Feb 2019 05:46:31 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-security/xmlsec1/xmlsec1_1.2.27.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
index 0cd06c5..eac8d6b 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
@@ -28,11 +28,12 @@ inherit autotools-brokensep ptest pkgconfig
 CFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
 CPPFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
 
-PACKAGECONFIG ??= "gnutls libgcrypt nss openssl"
+PACKAGECONFIG ??= "gnutls libgcrypt nss openssl des"
 PACKAGECONFIG[gnutls] = ",,gnutls"
 PACKAGECONFIG[libgcrypt] = ",,libgcrypt"
 PACKAGECONFIG[nss] = "--with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../..,,nss nspr"
 PACKAGECONFIG[openssl] = ",,openssl"
+PACKAGECONFIG[des] = ",--disable-des,,"
 
 # these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
 FILES_SOLIBSDEV = "${libdir}/libxmlsec1.so"
-- 
2.7.4


