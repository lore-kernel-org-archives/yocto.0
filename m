Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACE0EE00E05; Tue,  6 Feb 2018 07:43:59 -0800 (PST)
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
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAFC3E00E7D
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:58 -0800 (PST)
Received: by mail-pl0-f65.google.com with SMTP id f4so1459167plr.10
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=PGVVPcAg9JNj16baX6ZoUS7ttGRx9uenkPBA4Km6lQg=;
	b=BjDuSaYBuBHTxC3aGPc11MhmFKgm8ztqR4SxcyjkIZTJ34VYunF3X9/u5Z6KwPOKWM
	1RmkoP+Zjd61VExXWnFjrQKWM2C9o5hlQHyQyfwtX0aZFAiheC9x7LOrN3iRIkjQelEP
	5fsBVbLjrce96hVJysFn6hwWXWjUnQ47U5Lv//Mjlgf8kqIF9fompiaktvH6ob8v4etC
	+8UCr2X4vgwXxovVn1swFdVoJEINoVfUBopDNViiAYqRppEJM4RzGmAVxKqcOQZ1wWoB
	XHuDSG0R0UxAmwkY4T+iwhkvmTiBfBjIvGA5dDb/vPF/zyRVpRiKnLGnzebmi/3XG/zk
	UpTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=PGVVPcAg9JNj16baX6ZoUS7ttGRx9uenkPBA4Km6lQg=;
	b=bM2N6UE2sYCiDvN4akKwJOQxbkpiBMXM9RDwaOWiZ52DJywuLkLpQGO97jbISeYW6T
	O/wJ/F5+Ca/QnbWkW9Fi/3IgsxA9ytUVDmztBF85RodcEz6SuW7lwT+qRjBDnlyeWAZv
	B64zLKyfg1JT3k1/hdWrmv/nDg6H8T0bqOn4xPHMEo1G0XrbDcgTYtNg6D0PR7Qkg+RA
	T5tsPBDm9JyIeTUC4XpJRrUrfHLtqJXcWSK/C3e9BjwSva7Ia1HinuktxvKBNrefBKSI
	84AowjketM3Nu8VQOBVMJM0XbUQb1vTUEjq/KJxTmxUE9DLMasOrXIXsbnXUnylJu2lp
	W9UA==
X-Gm-Message-State: APf1xPDTHdt7lex+RCvrNYEPx6ZglyXWwq+gZEMiulC3wm8Yr1HfWrnk
	PItCu4ITxModaehJLYgd48PSMQ==
X-Google-Smtp-Source: AH8x227iO6iLdz484TYSA+IppseI6nBAapKMAgc2DM7Jb1wDXQckQrwkyUItgEOlfCOe5NH8TVZKFw==
X-Received: by 2002:a17:902:7848:: with SMTP id
	e8-v6mr2855534pln.386.1517931838312; 
	Tue, 06 Feb 2018 07:43:58 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:30 +0530
Message-Id: <1517931813-13010-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/12] clamav: update to 0.99.3
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:59 -0000

removed unused hash checksums

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/{clamav_0.99.2.bb => clamav_0.99.3.bb} | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)
 rename recipes-security/clamav/{clamav_0.99.2.bb => clamav_0.99.3.bb} (95%)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.3.bb
similarity index 95%
rename from recipes-security/clamav/clamav_0.99.2.bb
rename to recipes-security/clamav/clamav_0.99.3.bb
index 5dfda8f..2b07d69 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.3.bb
@@ -8,17 +8,14 @@ DEPENDS = "libtool db libmspack chrpath-replacement-native"
 
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
-SRCREV = "5ceae552829ee65c9ecff8ff303b1f2ddfd11576"
+SRCREV = "224f73461a44e278e9fa50ba59f51ee5e64373e0"
 
-SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=${PV} \
+SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
     "
 
-SRC_URI[md5sum] = "61b51a04619aeafd965892a53f86d192"
-SRC_URI[sha256sum] = "167bd6a13e05ece326b968fdb539b05c2ffcfef6018a274a10aeda85c2c0027a"
-
 S = "${WORKDIR}/git"
 
 LEAD_SONAME = "libclamav.so"
-- 
2.7.4


