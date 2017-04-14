Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9C45E00A48; Fri, 14 Apr 2017 13:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39793E00A30
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:22 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d79so207582wmi.2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=m2YtmAfAcPAkIR2m2U9cGjG+2T4bVXQakYa0lERtuOQ=;
	b=tqmPi2sVzoYCLEp+YH3utVU9VLRyitH531MEpHrw9vJiwg/ZtXiyvnNDfp9j30G0+U
	z3Vby/rZ6Z0kb6sOzF0NImW3VtHpf5yraYnpnHJ6W98vHBhIrPf/u+B0EVhfcGuNYQh+
	iREFA/dMY8BLvNSbg92O7gQxFFIn8uZwF/NJQHAiYEIj82LSRSVGKS7GJfkj7DSN+WZc
	5ghCe/Jyv2RXk1L69fWnIvlYiR7H1utkzHJRBClooC0QGI7LHlE53dpOOJgbz03V377O
	uYzw6iRP01V3lZGZCOgl+vh2ihlPhB+ntCH3ui1xr0S9F5qOWA6drrMjmt0D6JEYQqG0
	ayAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=m2YtmAfAcPAkIR2m2U9cGjG+2T4bVXQakYa0lERtuOQ=;
	b=gr2tUm5ZcKoNHFN25V7wxeSHyZSg/mQnyM3EaAPRpmEG8v/JTjkZZamsKoNiEO6R93
	KE88vq/R8EmALrPLFEjZnEPop41z3pflTXUigryVep+dd1F30Y7VhrL7yvIvUGTiu/gG
	NVQps/V5gj4+YtQUpOhRutM2AmufR1XwJf7RY4dLCw6biEjABFIZFu1IQrCOaYhoLxkt
	+mg50zpjs0Ioqg73o7aHF0IMEGipFB4So0yv6i2SwJu5KIRLC9t6hqBovG7VjBeUbWlu
	D9tP5PnmxoGutHNjV9mwgxrtw3+roPPr5G8DjF+vRuOxBrTQDIxOR3Kkj0omFll/MMA7
	gmFA==
X-Gm-Message-State: AN3rC/6paPmNhMqoohNn5THjU29l+ec+PZuuLZC/Wq8lcn6pIbxzFxDR
	3hhB/3jldAd0PQ==
X-Received: by 10.28.26.137 with SMTP id a131mr229959wma.6.1492200801753;
	Fri, 14 Apr 2017 13:13:21 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:21 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:09 +0100
Message-Id: <20170414201313.3138-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/7] firmware.inc: Bump to 20170405
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 53c469e..1c3a911 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20170303"
+RPIFW_DATE ?= "20170405"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "c87bc1bffbb8f254fc739e34baa03b02"
-SRC_URI[sha256sum] = "ee8758d7e63c8fea7c8b7b476ff1c09f9591c74349b7751036a78ae5b88eca36"
+SRC_URI[md5sum] = "ea82d14a7cd8cfae9b78e00d4e56bc71"
+SRC_URI[sha256sum] = "2f4e5bddbac1372590db203002c35cbba3fb9d6172a93c314ee27bf05ae13bff"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.12.1


