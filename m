Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81635E00C58; Sat, 12 Jan 2019 13:45:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEBEE009B1
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 13:45:23 -0800 (PST)
Received: by mail-qk1-f175.google.com with SMTP id g125so8586959qke.4
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 13:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=uM2yQ+v4V/uYBZvfzGXAG8s1OrOamRBpUpyeDSekyR0=;
	b=L3VI7Dmes8vbVhRHmLmMW3ySkROkWJVR5VMrCuE1PKWtbw5jdy4sokdPf5cqB0obd/
	Hw4SZ1reE1Ec1U65h8TgHdHs6fyXEGqwFS3TpPNEyYmqcEGeqk6khO0ZohSv+L1r++rF
	DPnJtffKicbKCU76y1iCPkR9eEFykenlRsPRxiQnrKnroDs1hX6TTALSjykMd5IcToY3
	eTe6dFkXO0w04xMsl6vY5A+icFeB639kMVCOZyKtyL04mKr7FedZttHU4bnE1pw8QnCr
	xDmrh9dw1ZidjbPKsRRRoF4vwdgSQxUNgMnHQO8U8us96Ngumtfv46pfTqNnnXKC3zd1
	3poA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=uM2yQ+v4V/uYBZvfzGXAG8s1OrOamRBpUpyeDSekyR0=;
	b=l3C0Fb+aVeLbP10iBM3tgDT5wsyUDkusYNUsbOP8JehETPor/h7ABat2bvhJP8xoRQ
	mqUSRILwLEH4owyzB8In2p5GP2i1OE7PG2UmBwNK+PD+cqyebIIfWetERJJXvtrWp7iT
	Wo4mqqUKXGDAvdD5Evf8ITA41R76txSQoFZN0yGZZ/+bVSXBAmip7huqcmfmLvh8zThq
	s/DTmujDv29+ZDLUJrseqGBaD6e6dVPS6ErC9lBYX4H8ULbhenNm9W7cmlE7Pd57P+sp
	Mo7yUUYA6/fPYSbqayMxPXlZYFvrvS8T6wrS4p9A9y143i6Vg0pQsnfqmC61xWXGJhrE
	nQuA==
X-Gm-Message-State: AJcUukcfu1ENz528xYt78BGZgmqXnFI2c8n5Wx0hj6XERmuREux4E1pe
	I/En/Pa7AdCAWznResOTEs1aU7g5
X-Google-Smtp-Source: ALg8bN5+KDUw85p/uDC9YKI00fEn0f6ellpf3qYsD9vemMjN7gt/Hzy2JiIRcpkg8oBGEtLb7x1fIg==
X-Received: by 2002:a37:aa0c:: with SMTP id t12mr17366645qke.358.1547329522510;
	Sat, 12 Jan 2019 13:45:22 -0800 (PST)
Received: from localhost.localdomain (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	o65sm41803460qkl.11.2019.01.12.13.45.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Jan 2019 13:45:22 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Sat, 12 Jan 2019 16:45:18 -0500
Message-Id: <20190112214518.29181-1-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.17.1
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [meta-security][PATCH] Upgrade scapy to 2.4.2
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
X-List-Received-Date: Sat, 12 Jan 2019 21:45:24 -0000

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/scapy/python-scapy.inc                       | 4 ++--
 .../scapy/{python-scapy_2.4.0.bb => python-scapy_2.4.2.bb}    | 0
 .../scapy/{python3-scapy_2.4.0.bb => python3-scapy_2.4.2.bb}  | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/scapy/{python-scapy_2.4.0.bb => python-scapy_2.4.2.bb} (100%)
 rename recipes-security/scapy/{python3-scapy_2.4.0.bb => python3-scapy_2.4.2.bb} (100%)

diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index 5abe7db..d5a70fe 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -5,8 +5,8 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
 
-SRC_URI[md5sum] = "d7d3c4294f5a718e234775d38dbeb7ec"
-SRC_URI[sha256sum] = "452f714f5c2eac6fd0a6146b1dbddfc24dd5f4103f3ed76227995a488cfb2b73"
+SRC_URI[md5sum] = "e6a03d8c924a6bbde1e86fc58bd2b9d6"
+SRC_URI[sha256sum] = "1baa048936207ceb1a4281a0e1e3b4317667c754872a0bb4734c5213c468e86a"
 
 inherit pypi ptest
 
diff --git a/recipes-security/scapy/python-scapy_2.4.0.bb b/recipes-security/scapy/python-scapy_2.4.2.bb
similarity index 100%
rename from recipes-security/scapy/python-scapy_2.4.0.bb
rename to recipes-security/scapy/python-scapy_2.4.2.bb
diff --git a/recipes-security/scapy/python3-scapy_2.4.0.bb b/recipes-security/scapy/python3-scapy_2.4.2.bb
similarity index 100%
rename from recipes-security/scapy/python3-scapy_2.4.0.bb
rename to recipes-security/scapy/python3-scapy_2.4.2.bb
-- 
2.17.1


