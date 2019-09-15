Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A609E009D4; Sun, 15 Sep 2019 07:18:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com
	[209.85.161.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4637E0098A
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 07:18:06 -0700 (PDT)
Received: by mail-yw1-f47.google.com with SMTP id r134so6396989ywg.2
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 07:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=1AB2GGpqpESFQ4Ah9KaYPOf3JmRmSe4Na1mu4yUSW8Q=;
	b=CU93DTEY1q9TUftdMU/8twmmb2qrDCZJAODxC+I50HjpVQk4mcIu1nF0fZKoouh2kX
	0Tw8uUFLARjNRuqfLf6E0LX4EHTeg8quVwFnaqWdiwlVUb/hWSw/01GncOH9UE+mOh6a
	8w1Iq52VHEy2HCldnRbMvDluXA2uKvwnt6r6DRdHyhqLbVtHyD8/om8ej4NV2BWK3kdb
	Z3s9j/e7wL1c1+hjsyGJzQHJiH5yRRtScIybGC5bYaa3wi6AtDcCgvlxJygKBvTEcW/D
	U8F53l6MvwVUtGjMEyxY7eMpt7WNqpdKjP0vuk4Ssvp+WK69t7vMwVIJHGZJ/5PVDBG+
	s2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1AB2GGpqpESFQ4Ah9KaYPOf3JmRmSe4Na1mu4yUSW8Q=;
	b=lMKfwbGjK/kyb0Y3megL5Ak+jUsD3n6yFSWjXceQOMTTT+T2HOch3jLbsr3W+lcE9i
	RCvbOhoJjujHBzezE34zG6jRwc0FanhavsCT5RurZMRkW5autqiIJOMXBZTpm3yVnRMO
	eEiQG+cPh4vS3AMWnrezNdCnLYBSX6m2BkI13euNdL+1aDI7t3Xagj6VNyAgiL8ncjjK
	ityKjpwpEzxn3arSBwQMDPH9iN4AMKQKt1GT75NFSQdSPRZ2gv8YOXNTFxSS+KXI68Vb
	1rFCjGhMEt35fsYKdQfc9leHkuSGBWsulHC7r5kCfdYnzIFXokRFM61nkZJElCvX+bSr
	IGhg==
X-Gm-Message-State: APjAAAX58btKLkqfAb/btyF5beiJTHYhTUB4zntAM4ItdVzAU737WZ/P
	KlOpmovKCxCTSfAFK1Sa2EQ6BkoE
X-Google-Smtp-Source: APXvYqwbInTrHWN2KGqQ3reR8F+2gaH4ygp+Y9y2nUePtZoXsVghZtSVceHMwHB9mn9P2gvw6IjD8A==
X-Received: by 2002:a81:81c6:: with SMTP id
	r189mr42697407ywf.147.1568557085857; 
	Sun, 15 Sep 2019 07:18:05 -0700 (PDT)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	m62sm3850204ywf.70.2019.09.15.07.18.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 15 Sep 2019 07:18:05 -0700 (PDT)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Sun, 15 Sep 2019 10:18:01 -0400
Message-Id: <1568557081-21869-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [meta-security][PATCH] ncrack: update to tip
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
X-List-Received-Date: Sun, 15 Sep 2019 14:18:07 -0000

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/ncrack/ncrack_0.7.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncrack/ncrack_0.7.bb
index 06ba2b6..ba26965 100644
--- a/recipes-security/ncrack/ncrack_0.7.bb
+++ b/recipes-security/ncrack/ncrack_0.7.bb
@@ -4,9 +4,9 @@ HOMEPAGE = "https://nmap.org/ncrack"
 SECTION = "security"
 
 LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://COPYING;md5=198fa93d4e80225839e595336f3b5ff0"
+LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=66938a7e5b4c118eda78271de14874c2"
 
-SRCREV = "3a793a21820708466081825beda9fce857f36cb6"
+SRCREV = "dc570e7e3cec1fb176c0168eaedc723084bd0426"
 SRC_URI = "git://github.com/nmap/ncrack.git"
 
 DEPENDS = "openssl zlib"
-- 
2.7.4


