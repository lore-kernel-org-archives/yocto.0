Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4027E00E11; Tue,  6 Feb 2018 07:43:45 -0800 (PST)
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
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9374DE005A2
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:45 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id s73so1249004pgc.1
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=0dmubBsqVSqmEDtNFqNkA5NkFc4hN304nXi6/OBQjSc=;
	b=aPdjffmIPphn93y5UqNjlX4qPpyjk6EqNTP5/ZUHUf3u35zRiAyWbSkqNVD6YTgKMi
	8qF3qKXSiN46T8xbQ6K2GuIvocMFJnQd2mZs9A+mIKXJ/pvxGeOYdEIHzL3DCai53SWl
	WBrKyTNd5t7V9dPaGgpKnKGExCtX6oo0dYsQxyM+H7LccBYEXziFPoYAg2XBCwidWqpG
	jH/yPrHqGyTrXnUhYWwKToZpDpkC7mOffjqHUQIVYvTydo9E7IQAsEU2b6uhrreXGafu
	SJ9ZQGRxaXxvyqXVtPOJyIFVMWs5dhXYVb4EOIiBqcjxbRiTSBBVvVPqHdgvomlrHMQ+
	uR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=0dmubBsqVSqmEDtNFqNkA5NkFc4hN304nXi6/OBQjSc=;
	b=tOFycQBclXIIOfLJ7VW0fg6cFi5VZzjjvCY6X/cjdlhP071CJslFP7gOcTNGDOLXOk
	QJjHSRDHznNuaZmLkwZm8u3bBN79Q4fxCxMbZuqPlN7vHjDx7CbKdaR5wWRvpo3abktT
	Hxq+wqsaZsP1rir/jFg5LwH00/bqcxieWmiBpl6NDlteZ67hUbBu9YufHHOygUW2Kk3x
	xqf+UL2Js54zX5aOuiYRH/01IW9gackaAZKuB1mOdD7sUDObSaW1bRTSZShF2/dGgy9S
	ao4BKpdMQFu9t1+3E2IPxMDh7D6hLEUjTt/YkEmRaZVBUNNx7Ic1ErlhdQjuBV+kLZIp
	l72w==
X-Gm-Message-State: APf1xPCkkvuQoYJ2vYqDeih3YwclTwHqpETPvQL1Nf91BukGI7Co1o4K
	jbs9jWAxD+cYqqOeR4cw6DhOBQ==
X-Google-Smtp-Source: AH8x2277Yx4xN31g0+CLqgiIg5px535ZIF3EUm+6POxzyVP5P9foSC4nW22U8Mjl4byobRLeMCao/A==
X-Received: by 10.101.78.1 with SMTP id r1mr2347566pgt.322.1517931825018;
	Tue, 06 Feb 2018 07:43:45 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:44 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:23 +0530
Message-Id: <1517931813-13010-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/12] tripwire: Update to 2.4.3.6
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/tripwire/{tripwire_2.4.3.5.bb => tripwire_2.4.3.6.bb} | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename recipes-security/tripwire/{tripwire_2.4.3.5.bb => tripwire_2.4.3.6.bb} (96%)

diff --git a/recipes-security/tripwire/tripwire_2.4.3.5.bb b/recipes-security/tripwire/tripwire_2.4.3.6.bb
similarity index 96%
rename from recipes-security/tripwire/tripwire_2.4.3.5.bb
rename to recipes-security/tripwire/tripwire_2.4.3.6.bb
index 0d775c2..465960f 100644
--- a/recipes-security/tripwire/tripwire_2.4.3.5.bb
+++ b/recipes-security/tripwire/tripwire_2.4.3.6.bb
@@ -6,7 +6,7 @@ SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1c069be8dbbe48e89b580ab4ed86c127"
 
-SRCREV = "7af2781a19af31a41a259f3cce158003a3a0a72f"
+SRCREV = "80db91b4c1ca4be9efafd2286e3b2ad32ba4c34c"
 
 SRC_URI = "\
 	git://github.com/Tripwire/tripwire-open-source.git \
@@ -17,7 +17,6 @@ SRC_URI = "\
 	file://twinstall.sh \
 	file://twpol-yocto.txt \
        "
-#PV = "2.4.3.5+git${SRCPV}"
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


