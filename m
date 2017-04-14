Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45DCAE00B43; Fri, 14 Apr 2017 09:21:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00653E00B2E
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:03 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 34so14220434pgx.3
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Rs6P3jJ4lgEXOLK4B6NwS0MX3swHtWQPbLKRLIlaPMQ=;
	b=oGeWp1xbd+dRH0zu/gn2Ot+l+gjVZqVUqut384BpTX0SdaOJJQKNrRIJWxLvsV5ste
	H6T964wwFIJLBGOtQHH+pb3y5eLYqAjKWBNi6T2f4uQGbh3MOCVDtjZEAG+DvErgzUrE
	U63T0VOdc4n4mzEA3K5HSmQxUF8y9B+NXP/kSvMqfFy4evM/LNZSWfYX0etazOZtDAg3
	7FO3JqKvYS9UtDeiERum/zGZAo/HTqpbi1K4YSNgayLdb/noiiSp8MeyMEKRRFxXuhHa
	ZO0cmE7ztybiv7c9jH/2abnfBDNL+3fCco3kZ5Qerq++ECfa3S5uLHXNaymvaN8CqVy6
	57qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Rs6P3jJ4lgEXOLK4B6NwS0MX3swHtWQPbLKRLIlaPMQ=;
	b=hDl8vzPmIZ/KZm9NM9vBSBcF3xQvtJ6rqO1kbE9HgjeR9PCf9SRfDmnEDqRVh9squz
	lxt3k2IsheRPT85hajzPszb6lHJugj8pwduWZ1+unNs1rl48c8sd3unXkK0tj3B6sq63
	0gI2FLn7RVMjUYRzRAhr2BnRWtMvQi61vONFeUYfdMZGrApvumW9xxIz5adv6AaZHHCh
	jGXrvRDqwVZUSzn9spr2M0jt3250NiBnf2O7UxCH5YgxkXBRjVA4mTvcNqD4AK6sy9Ba
	yvRWSYQ9fGQaB7eIDl+W+uLRU0bQ8vU3G1D0F9hjxgA/RHKlB0XQLQFATOBUItkJ/rzA
	ZtQQ==
X-Gm-Message-State: AN3rC/4QGxC/qbq/NXQomilFwaR+E25hwmcAPBeZ+dSrhu9qJ04e+I5G
	v4b5rBiE3leylA==
X-Received: by 10.84.218.14 with SMTP id q14mr9663409pli.80.1492186863800;
	Fri, 14 Apr 2017 09:21:03 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z21sm4157245pgc.53.2017.04.14.09.21.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 09:21:02 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 09:20:35 -0700
Message-Id: <20170414162035.23522-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170414162035.23522-1-raj.khem@gmail.com>
References: <20170414162035.23522-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 5/5] firmware: Update to 1.20170405 release
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
X-List-Received-Date: Fri, 14 Apr 2017 16:21:04 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
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
2.12.2


