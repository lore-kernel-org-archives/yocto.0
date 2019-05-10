Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE9DFE00D4F; Thu,  9 May 2019 20:10:00 -0700 (PDT)
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
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF72E00D46
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 20:10:00 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id y11so2373922pfm.13
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 20:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Faeeop9fgsjg3TleAqLGsrlpXX636xZaxxhSEoj7eQU=;
	b=oA2UZ8apQFX9bAXzYyhJ54d+D+fRRHRq6uup/74ykfMjfHiM8nRpYNVIlQqP+Ir6OZ
	QkYdpXm6E1GfBwlWwtHvpqlE0TY3BO8+mRmEzZLaW/t4L/LaO9MT86VVrMwCgObY7H98
	m8TPso8in/kHWQX4Jtd+kYRQkLcLwnQoYEM6eCvqO23P3EgMkkQQKK6qW4BAPVpisQ68
	cdxiDoBYYNURocwZBPzg41BJ+SuPhnJ5AlVET0ejnWseSd6rEV9vu+YT2ZZAtoMRTEYV
	mIGV/3CcK4PrzaPQ44p+AoF1XCC6cfMYta7ujcKB4L5LSeqOP1v42VRHTWKENqHnDkkB
	eNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Faeeop9fgsjg3TleAqLGsrlpXX636xZaxxhSEoj7eQU=;
	b=mWvasLWyh6TxYh0C6MAghl9wnt0mH3InJ4BH7lz4qeD4gYS4GpBTyPeRbxUolPlQcG
	6c95+DJShq/MI1vLJsU9L8nNVqtVQTGnH6SZ2c7dVfuwc4NdjaDPbTTUTTNVzfxTBvAS
	yRaM2kWXFDZDuhitNpYl8eyaPkyVg1LGGrz1SO6h8nBT01Gw/IB1OnLIz5hmKaPWT/vR
	InwStldmuCR40MK84F/b3X7FoeqJA8byWa2N5890WzwZpljyoCtiWOPMuAyjHOySfaZd
	9OCwpNfHddn/1T81gGI557UM2onNEeCQmpF/fy8azrVq1MHyrAYJmDStDWrknPxnm2CV
	5DZw==
X-Gm-Message-State: APjAAAUxqJtNozA4xyPr865VAm13LZModG2E56pwuWY02+sAeXDbzndi
	eYTvoLcJbktJZ5C16dGcWFCrfLrP
X-Google-Smtp-Source: APXvYqxuduUNRtbV2PMUOb3pVDYYfHa6SHwTpavN5z6A/PhJ+oCwo1DLA8wggtI6PaUb56O6kmxHxg==
X-Received: by 2002:aa7:820c:: with SMTP id k12mr10565923pfi.177.1557457799706;
	Thu, 09 May 2019 20:09:59 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	z66sm5180456pfz.83.2019.05.09.20.09.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 May 2019 20:09:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2019 20:09:57 -0700
Message-Id: <20190510030957.26040-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510030957.26040-1-akuster808@gmail.com>
References: <20190510030957.26040-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] smack: kernel fragment update
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
X-List-Received-Date: Fri, 10 May 2019 03:10:00 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-5.0/smack.cfg | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto-5.0/smack.cfg b/recipes-kernel/linux/linux-yocto-5.0/smack.cfg
index 62f465a..0d5fc64 100644
--- a/recipes-kernel/linux/linux-yocto-5.0/smack.cfg
+++ b/recipes-kernel/linux/linux-yocto-5.0/smack.cfg
@@ -1,8 +1,7 @@
-CONFIG_IP_NF_SECURITY=m
-CONFIG_IP6_NF_SECURITY=m
-CONFIG_EXT2_FS_SECURITY=y
-CONFIG_EXT3_FS_SECURITY=y
-CONFIG_EXT4_FS_SECURITY=y
-CONFIG_SECURITY=y
+CONFIG_NETLABEL=y
+CONFIG_SECURITY_NETWORK=y
+# CONFIG_SECURITY_NETWORK_XFRM is not set
 CONFIG_SECURITY_SMACK=y
+CONFIG_SECURITY_SMACK_BRINGUP=y
+CONFIG_SECURITY_SMACK_APPEND_SIGNALS=y
 CONFIG_TMPFS_XATTR=y
-- 
2.17.1


