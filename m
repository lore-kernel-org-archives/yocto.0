Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 784BBE00D73; Thu,  2 May 2019 18:36:08 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 068A6E00D33
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 18:35:15 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id ck18so1897351plb.1
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 18:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=gFoqKzE8U5SbwEi15fxoS/DXKNtyKsZDeVGUONuh/lY=;
	b=Hj2SkLIRFDT8E9/4KfoS9O0NjFrOapOCUSzF4R4VZY52TwEKwKvdlmjFJe2FEUXC9m
	YJNAn4WEd1UuCUFuJOdVJ5dTTj4tT61dAct0D+oYt7Pq9aezEympsdDtDisS7RzIVnKb
	bJi6ERCczzjh0trR83RhR8EW82libPhyj4MwOUxdJdwxMdnfRtCt4F4p1qyL23HPzQQe
	g4BaXkLRniYppsJ9Rqm43vYruhjO+mdEYc29U3mBbN74eywMf9gVf4hudBVnWC6mn7Ae
	eFRza5/n3VSm/ahLLlvcxDSgXVUKhWtfhhFgeZxhTKwNxuSPA4ecHKu/2RozrMN1E9Oa
	POtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=gFoqKzE8U5SbwEi15fxoS/DXKNtyKsZDeVGUONuh/lY=;
	b=Lm5LixFtwvP8TdecW1ui+WslIcNvFyxrIMvylUefDgp0skaU3Y5Ueuc6gLHnaL/xfy
	k1xdBv5t2HpnLcMRhcJE/wZyWH+PXb6QKsX27y8aNboNZPxQUNs5W9NaQLADkhFWXh1L
	M5LBxCL+o66HjGU7IxWlo/upyhmWsf5JblznBQGiFjagJFbrVsHSkanGz/s3itgampcG
	4URdVQnUaHlpWpNMAFLoVuqXher+aeb2qsISPZWtmk9MFEVhCX3kzlWOqUM97s9goWNC
	7s304xE0dZpYqcMQLpD/TwSpQoac5jcZjlPWnFefAOevZp/NTCF1jU9rAAokym5IHb52
	rW3g==
X-Gm-Message-State: APjAAAVFrCCTEg64lzwhtDoLscWtB3mi5H3siT97J6TA3pQ08gcHg12z
	tV7aZDNOGuRJMXO0TK47KxEDhB0H
X-Google-Smtp-Source: APXvYqwmUWGMRaLeRDu6WKwp7A5d6cwB7u7RtNjSW/KBwOMwdmKne0U2lGQSvPtPt6uBE0G5IsEb5A==
X-Received: by 2002:a17:902:b48a:: with SMTP id
	y10mr7186010plr.86.1556847315454; 
	Thu, 02 May 2019 18:35:15 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id b22sm564639pgg.88.2019.05.02.18.35.14
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 May 2019 18:35:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  2 May 2019 18:35:12 -0700
Message-Id: <20190503013512.20413-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503013512.20413-1-akuster808@gmail.com>
References: <20190503013512.20413-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] apparmor: fix fragment for 5.0 kernel
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
X-List-Received-Date: Fri, 03 May 2019 01:36:08 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg b/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg
index b5f9bb2..ae6cdcd 100644
--- a/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg
+++ b/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg
@@ -1,15 +1,9 @@
 CONFIG_AUDIT=y
-# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
-CONFIG_SECURITY_NETWORK=y
-# CONFIG_SECURITY_NETWORK_XFRM is not set
 CONFIG_SECURITY_PATH=y
-# CONFIG_SECURITY_SELINUX is not set
 CONFIG_SECURITY_APPARMOR=y
 CONFIG_SECURITY_APPARMOR_HASH=y
 CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
-# CONFIG_SECURITY_APPARMOR_DEBUG is not set
 CONFIG_INTEGRITY_AUDIT=y
 CONFIG_DEFAULT_SECURITY_APPARMOR=y
-# CONFIG_DEFAULT_SECURITY_DAC is not set
 CONFIG_DEFAULT_SECURITY="apparmor"
 CONFIG_AUDIT_GENERIC=y
-- 
2.17.1


