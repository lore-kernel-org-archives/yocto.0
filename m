Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EF20E00B94; Sun, 25 Oct 2015 21:23:22 -0700 (PDT)
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
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B71E00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 21:23:18 -0700 (PDT)
Received: by pacfv9 with SMTP id fv9so183292184pac.3
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 21:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=/dd+BF5U5ufYmCV3Tg3hHUia9FRak0NKHSek/cCWT1I=;
	b=k8CPzwNYYgSMQor0Ogvdo6HQOqzH9QecEke09RvZfzQpYokBaUihB9MqKeVWceSmgl
	1yW8l4V13TQgmYoxvytjxtj/cbxlp3vSS3cI/eWv6O3oCov+G6hZNZgwTS+j1h72eXzh
	+T0CoT/j0F54iJW5kHAI2yxLCVRrAal7ZtciBlHJQzptwO9quZSwHrCzOcQkO5/pIkUv
	CD/hEJK4rTuX9of6tYtFq1pjx1QlugcprFvfOgg+Vd/cLog9AiZ2og7JI3KI59gwluDe
	G/m4qJJ67OsB7oSzgiKNxkA6r29SQsESh9o4E+Ero/1UbRsYAEPUpmTMVYnkzXAUyBgE
	s9oQ==
X-Received: by 10.68.136.69 with SMTP id py5mr20243844pbb.94.1445833396966;
	Sun, 25 Oct 2015 21:23:16 -0700 (PDT)
Received: from bigIsland.kama-aina.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	tp6sm31051916pbc.81.2015.10.25.21.23.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 21:23:15 -0700 (PDT)
Received: by bigIsland.kama-aina.net (Postfix, from userid 1000)
	id 7AE6BFC1191; Sun, 25 Oct 2015 21:23:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 25 Oct 2015 21:22:56 -0700
Message-Id: <1445833376-2687-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445833376-2687-1-git-send-email-akuster808@gmail.com>
References: <1445833376-2687-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] ccs-tools: update to 1.8.4
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
X-List-Received-Date: Mon, 26 Oct 2015 04:23:22 -0000

change LIC_CHKSUM to COPYING.css where the license statement resides.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ccs-tools/{ccs-tools_1.8.3.bb => ccs-tools_1.8.4.bb}         | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)
 rename recipes-security/ccs-tools/{ccs-tools_1.8.3.bb => ccs-tools_1.8.4.bb} (76%)

diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb b/recipes-security/ccs-tools/ccs-tools_1.8.4.bb
similarity index 76%
rename from recipes-security/ccs-tools/ccs-tools_1.8.3.bb
rename to recipes-security/ccs-tools/ccs-tools_1.8.4.bb
index a47cafe..189504a 100644
--- a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
+++ b/recipes-security/ccs-tools/ccs-tools_1.8.4.bb
@@ -3,14 +3,15 @@ DESCRIPTION = "TOMOYO Linux is a Mandatory Access Control (MAC) implementation f
 
 SECTION = "security"
 LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://README.ccs;md5=5b80632c6a2a3b7fa92ea46eff15bee9"
+LIC_FILES_CHKSUM = "file://COPYING.ccs;md5=751419260aa954499f7abaabaa882bbe"
 
 DEPENDS = "ncurses"
 
-SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/ccs-tools-1.8.3-20130406.tar.gz"
+DS = "20150505"
+SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
 
-SRC_URI[md5sum] = "ffff535584cdf9ae28b85061c32e5618"
-SRC_URI[sha256sum] = "1e4129b59cd7fdb963962af7f2cccf4a66c77a4b0948f67320b569aaf6585fcf"
+SRC_URI[md5sum] = "eeee8eb96a7680bfa9c8f6de55502c44"
+SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f16746324b4"
 
 S = "${WORKDIR}/${PN}"
 
-- 
1.9.1


