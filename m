Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ACAFE00BAD; Sun, 23 Jun 2019 17:09:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D1EE00798
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 17:09:29 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id m4so5502921pgk.0
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 17:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=6X/Tx33k8KioRtrJKZVXCKWtfvgEG3bPxEUjMYKRlCk=;
	b=I4zDBGbggMWaLi0X5u4lgPQzfZ8QHAIBQfLGGUvdjH3ZqFEZ26FkXn7WCTEPrGyDbY
	g3yBGxipJLFVVzp7PBQ45TnLlSmnvyFCA2k+BeeVXuucS/bBFXQ3hapauFyPKsngdx16
	SmI260wJxZFGbOSlDQwGDoahduZZQx3uXhGAdKTADtY6Pfn3vZAkUwz7giAxxaqizNF7
	8zRIjQ7VHlkrPmajWcHWwVd4wbergVajcFtrVaF55LvhihMeMd3kOguvrZf6lUFhM6bx
	X2cL53Sqm8bYjCFu8iZquVPJI2sAq0x/nS2GEXWeg2vnNE3DxPRs9UC+sGEOJIourG7m
	W0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6X/Tx33k8KioRtrJKZVXCKWtfvgEG3bPxEUjMYKRlCk=;
	b=ECpd3Zeoz6XxISbM7m9ft6nj8/2QfHiyHaTgcVkLekWoxYTZtGPwNkwhDWULFWlu2U
	w5mg196Q2ynauMQd24/VBBbiuXvnvaF1f5u3owe9vNIocoG9LHlD5VC771PTFeKPFEUq
	Y2KAFwSdc3UQrp3RZVDqvAg3u1jOzTXw3eLaD7qsSJeLUI3zMPznMuga912TnA5c4aaY
	XJxf4xxYmN5HJwHTL+OJHLGd4np2spSC04tA2MQTJTDNacSXm+Q4Bn88l9Tvcfa+WL/7
	iomIZ5hMdzrIoieqds5dSTm9kuYBRgOVvqOPbYGnzumA36cf9TsHuiy16sNpgCYIjZ7q
	AC8A==
X-Gm-Message-State: APjAAAVdHP1u0+p91QjpSxPzF3ymwoKwue1U797idbA9tyY/sMRUGlKU
	lUAdn4dfgwR/8V6CWG+dJYsJzrklVmc=
X-Google-Smtp-Source: APXvYqzBDgrdfRnXquT6o1+wx+G79B48Fe1ORQQ5Zen5py+2SnnrpIBUrR/sINEuWvcUy8pGgSul+Q==
X-Received: by 2002:a63:5656:: with SMTP id g22mr30902571pgm.280.1561334968713;
	Sun, 23 Jun 2019 17:09:28 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j1sm9823717pfe.101.2019.06.23.17.09.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 17:09:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 17:09:26 -0700
Message-Id: <20190624000927.20172-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] libmspack: update SRC_URI and package
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
X-List-Received-Date: Mon, 24 Jun 2019 00:09:30 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{libmspack_0.10.1.bb => libmspack_1.9.1.bb}        | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)
 rename recipes-security/libmspack/{libmspack_0.10.1.bb => libmspack_1.9.1.bb} (53%)

diff --git a/recipes-security/libmspack/libmspack_0.10.1.bb b/recipes-security/libmspack/libmspack_1.9.1.bb
similarity index 53%
rename from recipes-security/libmspack/libmspack_0.10.1.bb
rename to recipes-security/libmspack/libmspack_1.9.1.bb
index b46159f..8c288be 100644
--- a/recipes-security/libmspack/libmspack_0.10.1.bb
+++ b/recipes-security/libmspack/libmspack_1.9.1.bb
@@ -6,11 +6,11 @@ DEPENDS = ""
 
 LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b3c8a5bb00a72a28dd"
 
-SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.xz"
-
-SRC_URI[md5sum] = "d894d91eba4d2c6f76695fc9566d5387"
-SRC_URI[sha256sum] = "850c57442b850bf1bc0fc4ea8880903ebf2bed063c3c80782ee4626fbcb0e67d"
+SRCREV = "63d3faf90423a4a6c174539a7d32111a840adadc"
+SRC_URI = "git://github.com/kyz/libmspack.git"
 
 inherit autotools
 
-S = "${WORKDIR}/${BP}alpha"
+S = "${WORKDIR}/git/${BPN}"
+
+inherit autotools
-- 
2.17.1


