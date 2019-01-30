Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2026E00D12; Wed, 30 Jan 2019 01:57:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C604CE00D08
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 01:57:46 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 43qJh914LVz4x
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 10:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1548842265;
	bh=asYQW6T+9VAjJAIJa+CQ1EG5gH6Lbgw77SNM/JZWP+I=;
	h=From:To:Subject:Date:From;
	b=tFdVtqh+20JpNOc0FGYKuktXPjhptYWe7SD3/8XCzxR8/++1EDZcVdHpA2SnDv9Op
	TfeR2s8wuLHPjPxxsTM2cBBo5wjf9G3HFtW2yy30BfS2GO7bOh86yfDURfxq/xd7bq
	s2gcGyc+ThQt8QA8neaL87G2cc61H+pSIV1Elrsw9kGMZrpY2CGNJLZ7uEhupvBfA0
	AkykJuBvz7XdRA6A9BYEwm8EGlLujD+NZ+Ea8Gu9AaAdEGAdl5fhb6lHOImhWkj0Wm
	F3t/lyhewNLYvU/sXKKmd4Dq89AmQeKc4xiX0Gn0mVSPN/nkLxycyOSGr8dtFJpzJL
	884xBLKEkCVVXF0sDpadt4eD4w9HDZjkmXDvTILPD+8L47JMBK4iwOLWuZw8sBdcHI
	zVFZcjoMMPtsOuYcxSSJRysZhf7dCxSM7oLqfiTmUCrqxcVYe7cgiRCChrWlCIaLMk
	umLVzkZrRBLSd8P6I8aeDw8u+di9F7wXVwjTKzzfk87oxmcnJTrJtIbOzTcKGlBbv2
	pWQ5drS+CyAuumXenALDvXjngSEwA5PsbzspArINJEZe+fgvubd65ijp0Q5vIZYyHI
	s/ROP9tAb0Pxnt1ubrpgKClhYrE0Mp7XBOSuOiMZwj2fZMQJiifBxxen8RtASwKkBR
	XPqypUIBjbOtqRmPenC179q8=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2019 11:57:42 +0200
Message-Id: <20190130095743.12467-2-bunk@stusta.de>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH] xmlsec1: Make the crypto libraries a PACKAGECONFIG
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
X-List-Received-Date: Wed, 30 Jan 2019 09:57:49 -0000

Usually one doesn't need variants for all 4 different
crypto libraries installed at the same time.

Also remove a libgpg-error DEPENDS that is not used
directly by xmlsec1.

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 recipes-security/xmlsec1/xmlsec1_1.2.26.bb | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
index aca9634..4bdf498 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
@@ -5,7 +5,7 @@ DESCRIPTION = "\
     XML security standards "XML Digital Signature" and "XML Encryption". \
     "
 HOMEPAGE = "http://www.aleksey.com/xmlsec/"
-DEPENDS = "libtool libxml2 libxslt openssl zlib libgcrypt gnutls nss nspr libgpg-error"
+DEPENDS = "libtool libxml2 libxslt zlib"
 
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=352791d62092ea8104f085042de7f4d0"
@@ -28,9 +28,11 @@ inherit autotools-brokensep ptest pkgconfig
 CFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
 CPPFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
 
-EXTRA_OECONF = "\
-    --with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../.. \
-    "
+PACKAGECONFIG ??= "gnutls libgcrypt nss openssl"
+PACKAGECONFIG[gnutls] = ",,gnutls"
+PACKAGECONFIG[libgcrypt] = ",,libgcrypt"
+PACKAGECONFIG[nss] = "--with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../..,,nss nspr"
+PACKAGECONFIG[openssl] = ",,openssl"
 
 # these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
 FILES_SOLIBSDEV = "${libdir}/libxmlsec1.so"
-- 
2.11.0


