Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A23FE00B18; Sun, 16 Sep 2018 08:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CD8E00B93
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:45 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id d1-v6so6513953pgo.3
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=KCDSnDRMErbPdT9TG1VdyH/CNRHRfFDUt5m4PUHz9Ro=;
	b=Uy+Gue3SRrtroBhdJ1g4J3tHHp/s7J2rX2CljfNrikyNJyhEquldgkx8REphl0bVzS
	IYI7gYafeairCnES9dzTq4R2FKHLCfU3DmzpX3uHkN/Cx8Ug2UjUQHj2PB4GNeRIZ5RJ
	d5oPdANiw5QCGN1OnJwNF2HhoxCjUOC/6WxQni0F3fV+je4TavhmPqk0mjZG7p1oOpss
	744g1HPi4NsaOsYiUiU6FmAZQst0MCgBOj7XUeJuONkBDu9kz2H+Ar4onIarXTTikauR
	lxjCkhmhGKnPcJXKOJo8m4v1lK2tqjT8H2mCJOH0n5Floxbof5PnbRJVP8gSUF/es0wg
	uoZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=KCDSnDRMErbPdT9TG1VdyH/CNRHRfFDUt5m4PUHz9Ro=;
	b=RFt8U7vGBNlwafzPSpmo1qZrtuaTESTLXHhFfqPahJa36oapqH0Ipo7gCGwYQkP3Xa
	96UgXCjnqcsQdMyODhxB2b2LG2dFwSWVV94GspEW9ri3FHl17RWmZhhb7bLSmjWkUZp3
	Gg/MWN7MwKaji1YMi+RV8sGceaw1+lMe/G+UtrAdwCtvKUBNcbHF4P61375TdDGoQl+G
	xyLJ1kdX/S61i3LbmDH6PoWV0RezzJNnPymjZqRvnHbFGWMGr9CCzexBQJwa1Wtw/zaC
	VtlH0eUysFW5QchXLxcDAswmaLrneyzrmBll+Hd1OKBMTXdKfjg3BglnhDLfEBiCpFmr
	O4LA==
X-Gm-Message-State: APzg51CIcrvQ+ZcfMNvKkS2YKMTzrcxpEt5zB5AcxGCcucOlXlWwviwn
	gXtMQ+6lYvN4jTLm37iL16S8szA3
X-Google-Smtp-Source: ANB0VdY9XnIr8OdbaPHYQZlk9LfP5Pk3O1iAoUT2Ww5QX1S3nOZW8fUW3PhJA+Qat4USh2+y0I05kw==
X-Received: by 2002:a63:df04:: with SMTP id
	u4-v6mr20639261pgg.434.1537113465355; 
	Sun, 16 Sep 2018 08:57:45 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.44
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:12 -0700
Message-Id: <20180916155719.9911-18-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 18/25] tor: remove not used
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-browers/tor/tor_6.5.2.bb | 7 -------
 1 file changed, 7 deletions(-)
 delete mode 100644 recipes-browers/tor/tor_6.5.2.bb

diff --git a/recipes-browers/tor/tor_6.5.2.bb b/recipes-browers/tor/tor_6.5.2.bb
deleted file mode 100644
index 1e3a812..0000000
--- a/recipes-browers/tor/tor_6.5.2.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-SUMMARY = "Tor is free software and an open network that helps you defend against traffic analysis, a form of network surveillance that threatens personal freedom and privacy, confidential business activities and relationships, and state security."
-
-HOMEPAGE = "https://www.torproject.org/"
-
-LICENSE = "GPV-v2"
-
-SRC_URI = "https://github.com/TheTorProject/gettorbrowser/archive/v6.5.2.tar.gz"
-- 
2.17.1


