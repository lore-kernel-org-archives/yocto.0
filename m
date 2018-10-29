Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C1E8E00A1A; Sun, 28 Oct 2018 20:39:54 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50FF6E009AA
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 20:39:54 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id n4-v6so2546308plp.2
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 20:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=v0xHxnnNxBMHKVNl1TNP+ioXZYqPtNYKv96koXPYU44=;
	b=AZzYAn9F2RCmz5gHmINc3oOlLmRbEmu7jvcED3chzLKnnDzvvMCWCDWsuFvA+q2zbr
	r/DY8MqMbRBuGkjzo5fdn/xadDqwX3Z9QIBXOl25XGAz6JtwBVM6PULWUjpDXxfLkKuY
	drncHYm/SnKqZoAs+m9WfJm5FOx1DEr769ZlbgXSDJNLULlPnW6bqrAeElaF6wn5T5y2
	TmwnOfb2P43kup4c+eQItZ+6NX0lf8XPBAFoh60TxzGBidUgeg/ZBzmE+kS9DxEg8qFj
	OuXbDN+W8LlwJRXDHl8b2+ogemXoFEzw3gMQd5OwM71xPInojou1n3ZJnDWRV//kbQeT
	TfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=v0xHxnnNxBMHKVNl1TNP+ioXZYqPtNYKv96koXPYU44=;
	b=mt21mkXR1Si7/UisTHEscfhJD2tE6hAvfdTBapYfroc7btJpEDs65Ohh02hD65K4Jf
	V6CjfMH5UpICp4gznvQfKwac1t6OLcHKh0CpaieblL0hbCWQbsOQc6PmxmXQXc5Bce54
	07jNsFmL8oXNIVORUn6JYYEnNBeJBH8t5nD8VivlvuJfK+dWGR4SdT1HsySNlj7ArKfo
	iB+HbIaUY/NpSTIl9Euj2pTTe3qV7tJOzmuD/mvNZIq2N0zDWzwHITGS62FvEhRqmaKG
	S92ol8mkymILxJFVbQFNLoHyhRDIXui7tgtp905LVGS9QzB+jdtpKBwI1/XLTVXmSxOd
	hvtg==
X-Gm-Message-State: AGRZ1gK6L1b1KZCripBBk2uDiOuAbFvUEo/ImG4HipnuOsBCgGyrZlvh
	6Ys7ybkB86ParsljrRBZodij/Adz
X-Google-Smtp-Source: AJdET5dz35Kgq8ww5ueozmSZCbsF18pEwd6DL6AhqdQ4BJA4vR92BjfSyvngsYcBL6SF/YpZoaoYJg==
X-Received: by 2002:a17:902:7e41:: with SMTP id
	a1-v6mr12525206pln.149.1540784393606; 
	Sun, 28 Oct 2018 20:39:53 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:3405:5320:ca09:da28])
	by smtp.gmail.com with ESMTPSA id
	n17-v6sm21553440pfj.84.2018.10.28.20.39.52
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 20:39:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 03:39:50 +0000
Message-Id: <1540784391-29313-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] clamav: update to 0.99.4
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
X-List-Received-Date: Mon, 29 Oct 2018 03:39:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/{clamav_0.99.3.bb => clamav_0.99.4.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/clamav/{clamav_0.99.3.bb => clamav_0.99.4.bb} (99%)

diff --git a/recipes-security/clamav/clamav_0.99.3.bb b/recipes-security/clamav/clamav_0.99.4.bb
similarity index 99%
rename from recipes-security/clamav/clamav_0.99.3.bb
rename to recipes-security/clamav/clamav_0.99.4.bb
index 688250d..8c2c2fa 100644
--- a/recipes-security/clamav/clamav_0.99.3.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -8,7 +8,7 @@ DEPENDS = "libtool db libmspack chrpath-replacement-native"
 
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
-SRCREV = "224f73461a44e278e9fa50ba59f51ee5e64373e0"
+SRCREV = "b66e5e27b48c0a07494f9df9b809ed933cede047"
 
 SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
     file://clamd.conf \
-- 
2.7.4


