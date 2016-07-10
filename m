Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60373E00CAF; Sun, 10 Jul 2016 12:29:32 -0700 (PDT)
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
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0704BE00CA1
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 12:29:31 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id q2so763871pap.0
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 12:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=tO2JHN1wkg9u06dJENvBnLkmMoa79ZpDop2dURSJtHc=;
	b=cmHA/E3inf6sOkJ5N/MVW7BXXmd4fYuPiOOiUPvSVtJjICh5djH3Nx9vLGyVu7O8nC
	fexfyYR0O0wk48exLjnLOG6XL2xGqcc+uuMxZljMM5xMxKBV1sm8wzMjYpFPSAHODche
	Cmkunbtv0M/bXvkkwPMu4SHp5w2wftvVFx7mfGUtOFzw7lJFetHI6UpKe2t9XF0DT36f
	y7X3zhcYSt/g52EJPsufwEcbfowEwRBp3Si2A4mrL+ZPyUAqnM9bMrX8LIKmdbPZ/9o+
	VEixMCaE5AEuDNZ0XV0mqSLP3uLthyPDx5Fhc38ps8LyPNcmm2l6DaLVIjuUzDoUGuMZ
	r3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=tO2JHN1wkg9u06dJENvBnLkmMoa79ZpDop2dURSJtHc=;
	b=aQciJVrUrIU5+rziCILWewuAW02HpmY6BnG7+ftGnt0TE61IolVFDQ9vRsQ5GB8ZX2
	KFfX/ePBzubrtHDaqLGCp3VaHuWkZH5atH+dfTxrKO/bZ2P6PDvibCsJTHb45YygO+ki
	ica2Y6IV1YPXC2uNRqJNDDoDwMrpFggeXHtN6P6cJVzeFrECNVfuc5JKUh3IiiaGt+Mi
	KMhTtBTVCKuxK9kJ2KC4+99XFhxZDWAFGQmrye6h4cxhRObxRNs9BEGs7AIDyJapiqd4
	iSnifhoNu5j/ZES85hKofTx5oxa36f0k6qeQKVpjFEc2r47zgUn3WV6IuiztVemafy13
	RQ5w==
X-Gm-Message-State: ALyK8tLBQ3aEKJomAj28J/khrLyxVDfFZUTBQmoWqUpWncAKT/ObhjEfyql8l+D7KEkSqA==
X-Received: by 10.66.43.234 with SMTP id z10mr18666900pal.137.1468178970389;
	Sun, 10 Jul 2016 12:29:30 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	(c-76-20-92-207.hsd1.ca.comcast.net. [76.20.92.207])
	by smtp.gmail.com with ESMTPSA id
	k76sm2357466pfg.53.2016.07.10.12.29.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jul 2016 12:29:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 10 Jul 2016 12:29:25 -0700
Message-Id: <1468178965-26449-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] python-pycrypto: fix build error
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
X-List-Received-Date: Sun, 10 Jul 2016 19:29:32 -0000

| DEBUG: Executing shell function do_compile
| make: *** No targets specified and no makefile found.  Stop.

add null do_compile

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-devtools/python/python-pycrypto_2.6.1.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/python/python-pycrypto_2.6.1.bb b/recipes-devtools/python/python-pycrypto_2.6.1.bb
index a2ad4d1..8036158 100644
--- a/recipes-devtools/python/python-pycrypto_2.6.1.bb
+++ b/recipes-devtools/python/python-pycrypto_2.6.1.bb
@@ -14,7 +14,7 @@ SRC_URI[sha256sum] = "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528
 
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
-inherit distutils
+inherit setuptools
 
 export STAGING_INCDIR
 export STAGING_LIBDIR
@@ -25,6 +25,8 @@ inherit autotools autotools-brokensep distutils
 
 DEPENDS += " gmp"
 
+do_compile[noexec] = "1"
+
 # We explicitly call distutils_do_install, since we want it to run, but
 # *don't* want the autotools install to run, since this package doesn't
 # provide a "make install" target.
-- 
1.9.1


