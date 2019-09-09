Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F05C6E00DE1; Sun,  8 Sep 2019 21:16:33 -0700 (PDT)
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
	*      [209.85.215.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 069B6E00DAA
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:31 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id l21so7034339pgm.3
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=zILTvK87VShndTFpqwqgFTiaoyAeUfc7zyMKudhaHmA=;
	b=G1LAGThgWSxSMy9eeLJ/TaLMofwRdt9rSI25GVLCC0HiCctxn26LJn9/KJZz5y5V+r
	lYNnhztrBZP9VvN7TCvEvAxHE+xuhX6sSwNfrg9L4JF6y/tcplgGrjxfgTZLc/JT3VH9
	Kua4MIxyrdhS3pafakaPV31+zsl7yro7PrMxgPd6lwdLxmIjgjkuMpvPm4C0nkW8/JGe
	Wn03OskXmRqc5Z4T+EYebCv2qPHuey53gXVDWUzTdXHRPpJaF2xzzMHsFvtEnyyeA7xU
	2u4eaSb7vZKqM7hXODD1pUorOmjy5Pf6lACuHRCO33/GaCLMKVUzELyhmtYK8WhhHRNm
	kQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=zILTvK87VShndTFpqwqgFTiaoyAeUfc7zyMKudhaHmA=;
	b=gi9moBoRz1ylLBTQpdt6InyJ65sxDYffOxvhrcWbKfTuSo74yoaXQUeGQPoaaLFkVq
	an+Jc8FecIVRfZPXRNTSRXKGutAOiB6bOd7xSFex+cLsd5DXCTh90S09KwW9R/QrHzBu
	lkrrrsQcZI4hyi+VIxm7U3ou/44vBArcMHseBY/1UfDo9W/xPcK/yNVpvzy3tZm4hiaC
	neKXtSRV50UuVTJNOu2SwnMZcy0RKNkK95BjX4iuebY7jV2wcMva86bmCKjX+cOc/R0b
	NIQ9LPubYyhzn5lSyFuil9iZlXpN0fB70uRz8dZq2EWyQ/eevnZfohGMG/wh8WAWl5cN
	FQUA==
X-Gm-Message-State: APjAAAUn0pSTuB0IRJ2Wl1Exez2ML/gnl30b2zlA02Ew5OiX3a0ByqMI
	rMdfCnRrwaBycS7VYoUDuP2vdJel
X-Google-Smtp-Source: APXvYqxQI7IbN+4g3bAM5SQLjaxhVGR/6eIXYaimxjE5SpPAhcbfE6Nl5+o7NjobQZ94tNsyvxrvcQ==
X-Received: by 2002:a17:90b:f02:: with SMTP id br2mr547390pjb.67.1568002591230;
	Sun, 08 Sep 2019 21:16:31 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.30 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:23 -0700
Message-Id: <20190909041628.7934-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 3/8] tpm2-abrmd: update to 2.2.0
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.1.1.bb => tpm2-abrmd_2.2.0.bb}    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-abrmd/{tpm2-abrmd_2.1.1.bb => tpm2-abrmd_2.2.0.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
index a4c6682..021c969 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
@@ -12,14 +12,13 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 DEPENDS = "autoconf-archive dbus glib-2.0 tpm2-tss glib-2.0-native \
             libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
 
-
 SRC_URI = "\
     git://github.com/tpm2-software/tpm2-abrmd.git \
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
 
-SRCREV = "06d9d433ba27159687255406baa37940db15465b"
+SRCREV = "ac2a5a4b5a4e548177ed7a5b74cea23e00fd30b4"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


