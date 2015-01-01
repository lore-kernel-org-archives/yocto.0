Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D66E007E7; Thu,  1 Jan 2015 14:56:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E22E006EF
	for <yocto@yoctoproject.org>; Thu,  1 Jan 2015 14:56:16 -0800 (PST)
Received: by mail-pd0-f174.google.com with SMTP id fp1so22813847pdb.33
	for <yocto@yoctoproject.org>; Thu, 01 Jan 2015 14:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=EkaaSTJNXszZURQK6FWEqWpLZHxAV8uFyMZ0STRzzIw=;
	b=uIJJzl66aYrw473rcNq6xDIVpUr10tbQABDmGL+G2PM/6xsF/6XeEE32+4vdzAkBki
	lsae68KrdXIn8pQuvlhHOnoz4vM8+PqlfNRqwkAUNX6CWONoxgXFtzpPI9KCPztdMGl3
	OpQfWYXGENYENFnKKOAQg1rHXY7p3TXMbmeZPlnsUnCjNTcKGfA04RmBvRsfKu54Bad9
	GcXpfhP4OV9+y0JBOk9h7IWjzsy7sbUOXNLkfEIW7Wr58hydjV79ncdQyZsLCZr3HeWk
	xnl0IsSDrp6NVB7Bfz/I0B3FlRHuGgmhkvONfu9kKxdBtYmM22fvvP+BfeYWNvksJj/R
	Hv7w==
X-Received: by 10.67.11.16 with SMTP id ee16mr59437312pad.128.1420152976585;
	Thu, 01 Jan 2015 14:56:16 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id 3sm13261146pdt.93.2015.01.01.14.56.14
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 01 Jan 2015 14:56:15 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Jan 2015 14:55:59 -0800
Message-Id: <1420152959-15336-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1420152959-15336-1-git-send-email-akuster808@gmail.com>
References: <1420152959-15336-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] nikto: fix launching errors
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
X-List-Received-Date: Thu, 01 Jan 2015 22:56:20 -0000

add several missing perl package depends so app can launch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nikto/nikto_2.1.5.bb | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/recipes-security/nikto/nikto_2.1.5.bb b/recipes-security/nikto/nikto_2.1.5.bb
index 4708191..40b5b72 100644
--- a/recipes-security/nikto/nikto_2.1.5.bb
+++ b/recipes-security/nikto/nikto_2.1.5.bb
@@ -3,8 +3,8 @@ DESCRIPTION = "Nikto is an Open Source (GPL) web server scanner which performs c
                files/CGIs, checks for outdated versions of over 1250 servers, and version specific problems on over 270 servers."
 SECTION = "security"
 LICENSE = "GPLv2"
+
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-RDEPENDS_${PN} = "perl libnet-ssleay-perl libwhisker2-perl perl-module-getopt-long perl-module-time-local perl-module-io-socket nikto-doc"
 
 SRC_URI = "http://cirt.net/nikto/${PN}-${PV}.tar.gz \
            file://location.patch"
@@ -99,3 +99,9 @@ do_install() {
 	install -m 0644 docs/nikto.dtd    ${D}${datadir}/doc/nikto
 	install -m 0644 docs/nikto_manual.html    ${D}${datadir}/doc/nikto
 }
+
+RDEPENDS_${PN} = "perl libnet-ssleay-perl libwhisker2-perl \
+                perl-module-getopt-long perl-module-time-local \
+                perl-module-io-socket perl-module-overloading \
+                perl-module-base perl-module-b perl-module-bytes \
+                nikto-doc"
-- 
1.9.1


