Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B73BAE00D12; Fri,  8 Mar 2019 14:49:32 -0800 (PST)
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
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E3AE00D04
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 14:49:32 -0800 (PST)
Received: by mail-pf1-f196.google.com with SMTP id g6so15155977pfh.13
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2019 14:49:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Y11Hwng1QYPLQnhztX/n+DL5ZSGUiKbjMDbK1Qh2Qf0=;
	b=AP/Vc2RXTMcKkTnfyaOI3JoUdmt49bpGwzOuJOKwT4wQcJFBJbBN1smM2VQnkJ4JeN
	hjR+LX1uWj+hVuYsMGfMemwZm49vN4bMKsvTfaZXZjKjn6nBHBFEsn/ZUmyDes9efVZn
	FyPw8xPnygSSe0WJgdwHwYpFGDv/mXsmZQeAmdgrHQFD3VW/M9M7QH+PHTxtIxlsWiUI
	L2/7wRGq4pa8OGQAlNbW0Dk8XS7maqsfdaM9jpYEMpGZCouUdkVmgNVOIKC8l5aaLRrn
	5S8/iW0GkUbmzCFKcP7TFwlKIj7ZWOBYxDcxOciUZx7t+701ngBvqger3UfrRfs2RaUL
	aSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Y11Hwng1QYPLQnhztX/n+DL5ZSGUiKbjMDbK1Qh2Qf0=;
	b=JkA9FhSac7Ub4j6yZVW8h7wjaqgoSSKv4zCYQdwooadFSIrgYEW8HkmrC+2pbhJMll
	kraPmRALnCRl0jTSHnvLqoB90bZmTqvmjZBhCMn0r8yTvLpmz+drjsb0q/zRF2eSBlll
	WXP0U/aGBHtasJjF4UVMSlED4mk861CUPfrKFpU5VlocnV4V47kQ+6pkSmO3Rjm3O/B+
	4/RqZdaN7Z/QdBwh1n4fGtF6ucfyiTs2NKZ8ZcacZd/0Fobko0iCmYv+fP7eCXIv80ww
	lMaeLTtbLdHrC+6pqKIuYOXQA3rNi8YipFZuW1Kk6qUewZTlsSd2dGe7kPGuaFoRHSG4
	gFJA==
X-Gm-Message-State: APjAAAVDTvLZ3aLMpLKU/PBNFP0aT9WT0VLVQWDRNMggKEAr5wDcQxyy
	IlRiijmxRPCAbvjcaiVBAqEHJGGZ
X-Google-Smtp-Source: APXvYqxWd0amkvrYcN7nbQvdcb5irc00T7T1s4vi7z5QLl9VxW/njS+fsxuZ6qsmfnXqzwt3Pxo99g==
X-Received: by 2002:a62:5c87:: with SMTP id
	q129mr20558100pfb.180.1552085371261; 
	Fri, 08 Mar 2019 14:49:31 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	d188sm15017206pfg.98.2019.03.08.14.49.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Mar 2019 14:49:30 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Mar 2019 14:49:29 -0800
Message-Id: <20190308224929.18076-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] packagegroup-core-security: change fail2ban ptest to reg python pkg
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
X-List-Received-Date: Fri, 08 Mar 2019 22:49:32 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index e847847..b8ab27d 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -78,7 +78,7 @@ RDEPENDS_packagegroup-security-ptest = " \
     python-scapy-ptest \
     suricata-ptest \
     tripwire-ptest \
-    python3-fail2ban-ptest \
+    python-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     ptest-runner \
-- 
2.17.1


