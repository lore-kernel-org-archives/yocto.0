Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BAD7E00823; Thu,  1 Jan 2015 14:56:20 -0800 (PST)
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
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B55E00757
	for <yocto@yoctoproject.org>; Thu,  1 Jan 2015 14:56:15 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id et14so23198089pad.17
	for <yocto@yoctoproject.org>; Thu, 01 Jan 2015 14:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=fPTbRR4smC8dF7ZC1l7OWI1PNSdwXsk0eURP6/IOe1k=;
	b=fEOsGn9w6L397XBM0f+87UAzJPsB3jYqJWxViWcXAQxsazcdpnaWWdLFuBZ0/Gw2Lo
	AEOjzi6dkcvhC4kB3ZwlQ/+tmTJQiJ9hgcLr3rYB2Ar9tHqgnfKbpFadf/GOKHDa6QrP
	p8NXdRjiSz24GZ7BZdRNbRzMkJ5ZpfAlcqFR6N/qQZVJS9ITxGWBx96OSy3ufWeEGj15
	EyEeJYG5IEBpa94yeelxsEBXNoX6RsnoY6iv8rmbdnW9MjiL+D+FZuzGBX8/rl15gbVN
	tmP6HF7SntNAk8KlRhUfvMceFSErMx2IkWfcXOGMGhnLrxEwirNras10YuDOCkHZb+4i
	BvEw==
X-Received: by 10.66.226.167 with SMTP id rt7mr116570323pac.12.1420152974647; 
	Thu, 01 Jan 2015 14:56:14 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id 3sm13261146pdt.93.2015.01.01.14.56.12
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 01 Jan 2015 14:56:13 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Jan 2015 14:55:58 -0800
Message-Id: <1420152959-15336-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/2] libwhisker2-perl: fix build issue
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

minor formating clean ups.
add "ssl" depend packageconf option

Change inherit perlnative to BBCLASSEXTEND = "native" to fix build issue

error: Can't install libwhisker2-perl-2.5-r0@i586: no package provides /home/akuster/oss/maint/security/poky/build/tmp/sysroots/x86_64-linux/usr/bin/perl-native/perl.real

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-perl/perl/libwhisker2-perl_2.5.bb | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
index a98bde0..d9af430 100644
--- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
+++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
@@ -5,8 +5,6 @@ LICENSE = "Artistic-1.0 | GPL-1.0+"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=254b8e29606fce6d1c1a4c9e32354573"
 
-DEPENDS = "perl"
-
 SRC_URI = "http://sourceforge.net/projects/whisker/files/libwhisker/${PV}/libwhisker2-${PV}.tar.gz \
            file://libwhisker2.patch"
 
@@ -15,10 +13,15 @@ SRC_URI[sha256sum] = "f45a1cf2ad2637b29dd1b13d7221ea12e3923ea09d107ced446400f190
 
 S = "${WORKDIR}/libwhisker2-2.5"
 
-inherit cpan-base perlnative
+inherit cpan-base
+
+PACKAGEGROUP ??=""
+PACKAGEGROUP[ssl] = ", , libnet-ssleay-perl, libnet-ssleay-perl"
 
 do_install() {
-	install -d 755 ${D}${PERLLIBDIRS}/vendor_perl/${PERLVERSION}
-	install -d 755 ${D}${datadir}/perl/${PERLVERSION}
-	oe_runmake install DESTDIR=${D} INSTALLDIR=${PERLLIBDIRS}/vendor_perl/${PERLVERSION} MANDIR=${datadir}/perl/${PERLVERSION}
+    install -d 755 ${D}${PERLLIBDIRS}/vendor_perl/${PERLVERSION}
+    install -d 755 ${D}${datadir}/perl/${PERLVERSION}
+    oe_runmake install DESTDIR=${D} INSTALLDIR=${PERLLIBDIRS}/vendor_perl/${PERLVERSION} MANDIR=${datadir}/perl/${PERLVERSION}
 }
+
+BBCLASSEXTEND = "native"
-- 
1.9.1


