Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7371E00B43; Fri, 14 Apr 2017 09:21:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83ED4E00B2E
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:02 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id g2so17073102pge.2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CNyKhDguw/fx5sMB0z0Jh5bpZpaPFNLsHgAKbeHWhFg=;
	b=aHUWWZK/x0YXymwtF+n3q2Frtr4UFWVRhxiOcZY1IRCmqSyBfmEWR+HVmhsCUY0XOz
	8QFkTGvbH/4CkG8wytuCXWpRuGXtsVJ4YVj+Mp7T6y4p5vhvqunPeDcqQgxtfFVapb3I
	nmm/bRji7fhLmQyVn+028PkdCF9MwFhATwzIN+n+HEo7QSaTfoAfwxAGDndW7ws5H3g7
	UH26OTlPYZk3ZRuxt5u5TUvVTx/jmhMLkMJDtsw/3aDAHOwM0+Q2Kt1lZZkpOna3wVWd
	Rgn7Vnx/VT02lfRpAdq5e31jd2TkI8OIlG605/LFIITIYWC5Z0ySPkDeXAmKLkaSSWTO
	ZYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CNyKhDguw/fx5sMB0z0Jh5bpZpaPFNLsHgAKbeHWhFg=;
	b=WeAhwhMTmqbEuibaXr0t3QSMRRh5kEYwcoeJGloFz4iRitbI8DMIQSLCK9043D7ybJ
	7WeuS+21G68WTYequdWu8ymhNTpHvhQLH693see1tGHZlRSsee2w+Iqau6Dkv++4oFwk
	yT7YqiA9LlHSVMNlpPdAuZT6QInD3sTztzfChJhzAm/DJulk43U6w5pgwsf50Uq8JJdn
	VZ/00PVt7cK34SnzCNDajApEk5ikcKZ3/BXvuBFbqNFD3Dlh1GJ6a6FoDwO4+fUAsgzI
	FMyX0iJT6cfcKkibKxTJodnTa23UwtnECZod/FDz73WwoUFLQtgEXFmVimjNyPXCOwvt
	vdWg==
X-Gm-Message-State: AN3rC/6Hx89Mpv2cAwOW/GFTsaK6/RrDhAkre/gj/LApGr4KzY3KOSMc
	17cKW1RwaarmNQ==
X-Received: by 10.84.141.164 with SMTP id 33mr9742084plv.166.1492186862249;
	Fri, 14 Apr 2017 09:21:02 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z21sm4157245pgc.53.2017.04.14.09.21.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 09:21:01 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 09:20:34 -0700
Message-Id: <20170414162035.23522-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170414162035.23522-1-raj.khem@gmail.com>
References: <20170414162035.23522-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/5] eglinfo-fb: Mark is userland specific
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
X-List-Received-Date: Fri, 14 Apr 2017 16:21:02 -0000

It does not yet compile/work with vc4 open graphics driver

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
index 7f8b600..7692133 100644
--- a/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
+++ b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
@@ -1 +1,2 @@
 EGLINFO_DEVICE_rpi  = "raspberrypi"
+COMPATIBLE_HOST_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'null', '"(.*)"', d)}"
-- 
2.12.2


