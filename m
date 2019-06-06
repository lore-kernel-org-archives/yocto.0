Return-Path: <zangrc.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9E48E00D79; Thu,  6 Jun 2019 00:40:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04EC5E00D4E
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 00:40:40 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.63,558,1557158400"; d="scan'208";a="66198283"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 06 Jun 2019 15:40:38 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id EAA134CDCCAC
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 15:40:34 +0800 (CST)
Received: from localhost.localdomain (10.167.226.46) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Thu, 6 Jun 2019 15:40:34 +0800
From: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 6 Jun 2019 15:41:47 +0800
Message-ID: <20190606074147.7632-1-zangrc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.46]
X-yoursite-MailScanner-ID: EAA134CDCCAC.ACDF4
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zangrc.fnst@cn.fujitsu.com
Subject: [meta-security][master][warrior][PATCH] bastille: solved the conflict with perl-module-text-wrap and base-files
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
X-List-Received-Date: Thu, 06 Jun 2019 07:40:43 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

-Remove the link to perl5 to resolve the conflict with perl-module-text-wrap.

-Remove the operation on /var/lock to resolve the conflict with base-files.

Signed-off-by: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
---
 recipes-security/bastille/bastille_3.2.1.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 152c03a..e9accb5 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -41,8 +41,7 @@ S = "${WORKDIR}/Bastille"
 
 do_install () {
 	install -d ${D}${sbindir}
-	install -d ${D}${libdir}/perl/site_perl/Curses
-	ln -sf perl ${D}/${libdir}/perl5
+	install -d ${D}${libdir}/perl5/site_perl/Curses
 
 	install -d ${D}${libdir}/Bastille
 	install -d ${D}${libdir}/Bastille/API
@@ -51,7 +50,6 @@ do_install () {
 	install -d ${D}${datadir}/Bastille/OSMap/Modules
 	install -d ${D}${datadir}/Bastille/Questions
 	install -d ${D}${datadir}/Bastille/FKL/configs/
-	install -d ${D}${localstatedir}/lock/subsys/bastille
 	install -d ${D}${localstatedir}/log/Bastille
 	install -d ${D}${sysconfdir}/Bastille
 	install -m 0755 AutomatedBastille  ${D}${sbindir}
-- 
2.20.1




