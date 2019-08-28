Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9D03E00DD9; Tue, 27 Aug 2019 18:49:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C443FE00DCE
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 18:49:17 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7S1muJF009644
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 18:49:07 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Tue, 27 Aug 2019 18:48:46 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 28 Aug 2019 09:48:43 +0800
Message-ID: <20190828014844.40580-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [meta-security][PATCH 1/2] ecryptfs-utils: remove openssl PACKAGECONFIG
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
X-List-Received-Date: Wed, 28 Aug 2019 01:49:19 -0000
Content-Type: text/plain

ecryptfs-utils does not build with openssl1.1.

Previously this openssl PACKAGECONFIG is disabled by default, so
we are not getting build failures by default. But if we enable it,
we get do_compile failure.

This package is from ubuntu source, and the one ubuntu ships does not
depend on openssl. The development of this package has stopped for about
3 years. I don't see it will fix the build offically.

So remove this PACKAGECONFIG and use '--disable-openssl' directly.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 1f780f9..8e498c9 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -30,13 +30,13 @@ EXTRA_OECONF = "\
     --disable-pywrap \
     --disable-nls \
     --with-pamdir=${base_libdir}/security \
+    --disable-openssl \
     "
 
 PACKAGECONFIG ??= "nss \
     ${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)} \
     "
 PACKAGECONFIG[nss] = "--enable-nss,--disable-nss,nss,"
-PACKAGECONFIG[openssl] = "--enable-openssl,--disable-openssl,openssl,"
 PACKAGECONFIG[pam] = "--enable-pam,--disable-pam,libpam,"
 
 do_configure_prepend() {
-- 
2.17.1


