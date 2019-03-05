Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E18E6E00D46; Tue,  5 Mar 2019 08:46:13 -0800 (PST)
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
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 675CEE00D26
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:13 -0800 (PST)
Received: by mail-pf1-f171.google.com with SMTP id n74so6122326pfi.9
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=BHnvZ5ptdGtfYApcP+uIGyzP4j1bSH4O/ye6woiVoIk=;
	b=GXDFDYx8pA1FxBHLgNIbGwiHh6IfPb2BwZoC5K1x97ffHzwkBLsPRVUZZconvlKPbo
	wym8n6DLdBlrqZjN8owzI5g3iLvShYm20pA+Ddz5Ne3PhPnujIPmVhM0rvKl5085cdig
	dL0jzsTgsDO6L7qVkoI064T+Y2sjuPgm8xac6GfdDZDd/WUyKt53DNYCZ5Pw9PV2uBVE
	CfsrJeu5HH8FRT6qxG6bAKBJTom1wWZ5G5EhNWnVWw89LX12qYapWH0DXZML+ndekX5y
	PDAYswr+/waSmgH+GKIzYY7+8vqeaMJdLn3pJQKsBy/uOMZaO8kGBYwkBJKXG/tEgnMD
	ulwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=BHnvZ5ptdGtfYApcP+uIGyzP4j1bSH4O/ye6woiVoIk=;
	b=pyQ7eBgcY43+3bf+f1a7DedEAm0eDhrC+W0lzBiJZgrj+3llrrMaF6mtGf/tHt8DUG
	XEardRKRxRwiY4IzlTcP0Q2jKplWanKnJM4QnCnzQ5AqexTj2PcTBlwddW624X6aA3TN
	ClB68N5WcG63kAX/zm17Lwhn2BJorC65E7S0avz+rIPdZ4NXrolEA8xWb4BCDeocAPiG
	aHn4g4HtVSmINwEhmmxrJhXnKAUNrR8Skc9CeXJ0liZDsqB4tESTA8IENe9DM+CpkXco
	WE3AlsN7xYAmNwyQC0fGlvspnwznIehrT0umf3r/HSJzC5nannFBTvO3VLjha1Hg1SLV
	9OBQ==
X-Gm-Message-State: APjAAAU6qyLz2z8IwjdGdzaMMXg9GH29YW3LO7LQyR9UKobjX28u0ryV
	rMIbEakEU3LseLMYSnRvQNrmzfoK
X-Google-Smtp-Source: APXvYqzRZ+CWqNql1eT9y5uQJ2rIlgaVsJGkgd6GggPzmUr68/hd36oT+rHSS5LCdjVeuWXzn6ci+g==
X-Received: by 2002:a62:5543:: with SMTP id j64mr2708152pfb.105.1551804372445; 
	Tue, 05 Mar 2019 08:46:12 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:11 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:05 -0800
Message-Id: <20190305164608.12211-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190305164608.12211-1-akuster808@gmail.com>
References: <20190305164608.12211-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/7] tpm2.o-tss: update to 2.4.1
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:13 -0000

LIC_FILES_CHKSUM changed to do SPDX ref being removed.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2.0-tss_2.0.1.bb => tpm2.0-tss_2.2.1.bb}    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2.0-tss/{tpm2.0-tss_2.0.1.bb => tpm2.0-tss_2.2.1.bb} (86%)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
similarity index 86%
rename from meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
rename to meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
index 9d1ff72..4f9db50 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
@@ -1,19 +1,22 @@
 SUMMARY = "Software stack for TPM2."
 DESCRIPTION = "tpm2.0-tss like woah."
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=0b1d631c4218b72f6b05cb58613606f4"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 SECTION = "tpm"
 
-DEPENDS = "autoconf-archive-native libgcrypt"
+DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
-SRCREV = "dc31e8dca9dbc77d16e419dc514ce8c526cd3351"
+SRCREV = "eb69e13559f20a0b49002a685c6f4a39be9503e2"
 
-SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.0.x"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.2.x"
 
 inherit autotools-brokensep pkgconfig systemd
 
 S = "${WORKDIR}/git"
 
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
+
 do_configure_prepend () {
        ./bootstrap
 }
@@ -72,3 +75,5 @@ FILES_libtss2-dev = " \
 FILES_libtss2-staticdev = "${libdir}/libtss*a"
 
 FILES_${PN} = "${libdir}/udev"
+
+RDEPENDS_libtss2 = "libgcrypt"
-- 
2.17.1


