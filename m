Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D067FE00902; Mon, 12 Jan 2015 20:29:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73025E00571
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 20:29:08 -0800 (PST)
Received: by mail-yh0-f54.google.com with SMTP id c41so422729yho.13
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 20:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=6Eza/Sq1Zx2pZ7ROYqeVMEQ05PZmBQIy2snrdnuMb4c=;
	b=glLsoi1+azr1r1Yve18+aNStpisNzmYyN61y8ZGEN3x/XxdrWlV2GRA8tz/XG/H8up
	vELSoFUZ85rah1g98bxkaFqEBCoZUfNcuWMg7LllX9NMzMnIfl6zp/X8NGPT26ZRo0O7
	bfV4fuKjtNPrBbuMXOnB5LlA0akg5g/l84KNc+H1Dq5Kyxb0urlWE9FoUFp8t5sV6mTO
	tStyx7FreNq4uRrwLlo/SiVbDqhl2lN+7YNX+mZiuyE5YvETj7tZtuEnttsXEjdeLQQa
	lZ2p1GgNkgYgb9Nf+X+CJcXFJBqXRH0s94J2A8AMHxLnzgJoriF4JFLdHvmG5zy7MGax
	kpqg==
X-Received: by 10.236.223.198 with SMTP id v66mr25866171yhp.38.1421123347758; 
	Mon, 12 Jan 2015 20:29:07 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	f67sm12034712yhc.38.2015.01.12.20.29.05 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 12 Jan 2015 20:29:06 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Jan 2015 20:28:55 -0800
Message-Id: <1421123335-6500-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH v2] libcap-ng: fix checksums
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
X-List-Received-Date: Tue, 13 Jan 2015 04:29:18 -0000

the checksums did not get updated when upgrading package.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libcap-ng/libcap-ng_0.7.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
index 3f225ba..8823dad 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
@@ -12,8 +12,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
 
 inherit lib_package autotools pythonnative
 
-SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
-SRC_URI[sha256sum] = "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
+SRC_URI[md5sum] = "55c57c0673b944ea1a755bcb2636dabd"
+SRC_URI[sha256sum] = "48a2083276f9820cb92dcb05d001b30733bcbf48c14c230303cac3cd08b45b6b"
 
 DEPENDS += "swig-native python"
 
-- 
1.9.1


