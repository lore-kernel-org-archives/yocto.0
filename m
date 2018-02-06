Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3AF6E00E8C; Tue,  6 Feb 2018 07:44:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FF1AE00E05
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:44:00 -0800 (PST)
Received: by mail-pl0-f66.google.com with SMTP id j19so1478459pll.2
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=GioTgMv6QtCscyEjpLvEZe+QurIH/3vmzOzJFeFYBs4=;
	b=Rp0Qel8f/4YWrTBtW0HwpsaDkf0nwOyxxy//C8bAHKJv9+ayJft8B5uiDvTedGs3jK
	1YIkY1aMSoA/obAXSJTLGVTfqHXpv+31zi9ELklXCCO/T/bSSQ15M6TzFp/TxkIajXw+
	IZ70wq7B0KwHoPLNfnBHREC7JG7Swo6d/BjMHPjwLbBLllsavhrGqQrRpwEcxg0BMW6F
	iU/6GNvWodSS4lJ3wtvs+r2MmDu6wnG7nZ5s5WRUgXUhm+kZPiobcpRZGAussANraw3O
	nqwMej6WcLXw4KMC85pdUUKFrUZjvc0KDTxfL1n8qwiGomFoCZbX+oho1UwS26dr6HWg
	+9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=GioTgMv6QtCscyEjpLvEZe+QurIH/3vmzOzJFeFYBs4=;
	b=AykXSN23is36TwrdK7SwsnTnAdT2ZD167aY1Aoy9msg2Op3OozSHCeOrSPYCZXp6Ps
	ngsIJy4emjCDydS7DBUzkToSoDYMydvvNOZIIfndNRnpBuIkzTf9HZWw9Hr8ipE/8nsq
	ADgUoyYMTGiWcPbwHvz7dAlcZmoOxfBJMtDySpbqP5yVOIQP5ApXqhyZrln9I17pUNe+
	XrDi5hWNjHBafmrNNbFZfaxxodF8ggPwFQeLlk5v0l5pQca3EpxVBqbq6Brja9zVxkeH
	/YzXRv8DhE1sv5RnAqHlEv7vVHctNF4XMmPfXUdJmQ40CJ65FL224vY1Zg12sxp+kSY2
	5Y2w==
X-Gm-Message-State: APf1xPDChw3fbNqMCLHoy728SAfh5EExZvXCSs86aVP4hs5ZtzA8bIvj
	eTb7HRvvEQCDKoTdBo9l6Q4ACg==
X-Google-Smtp-Source: AH8x224AWltCnPIErfZDPgOw6UhW0zIT8dn6vnGrexSO/WBY/LAeGV3zmZcE8ZJDDoN6dqYLglJIlQ==
X-Received: by 2002:a17:902:9893:: with SMTP id
	s19-v6mr2771155plp.101.1517931840073; 
	Tue, 06 Feb 2018 07:44:00 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:59 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:31 +0530
Message-Id: <1517931813-13010-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/12] tpm2simulator: update to 138
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
X-List-Received-Date: Tue, 06 Feb 2018 15:44:01 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2simulator-native_116.bb => tpm2simulator-native_138.bb}  | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2simulator/{tpm2simulator-native_116.bb => tpm2simulator-native_138.bb} (78%)

diff --git a/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb b/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb
similarity index 78%
rename from meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
rename to meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb
index a53d4c3..866791c 100644
--- a/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
+++ b/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb
@@ -2,21 +2,19 @@ SUMMARY = "TPM 2.0 Simulator Extraction Script"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b"
 
-DEPENDS += "python"
+DEPENDS = "python"
 
-SRCREV = "93dc4412432013ed7bcabd42007754c68f6e362e"
+SRCREV = "e45324eba268723d39856111e7933c5c76238481"
 SRC_URI = "git://github.com/stwagnr/tpm2simulator.git"
 
 S = "${WORKDIR}/git"
 OECMAKE_SOURCEPATH = "${S}/cmake"
 
-PV = "116+git${SRCPV}"
-
 inherit native lib_package cmake
 
 EXTRA_OECMAKE = " \
 	-DCMAKE_BUILD_TYPE=Debug \
-	-DSPEC_VERSION=116 \
+	-DSPEC_VERSION=138 \
 "
 
 do_configure_prepend () {
-- 
2.7.4


