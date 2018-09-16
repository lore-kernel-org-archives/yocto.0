Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3930AE00B9F; Sun, 16 Sep 2018 08:57:45 -0700 (PDT)
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
	*      [209.85.210.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE8B6E00A86
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:44 -0700 (PDT)
Received: by mail-pf1-f182.google.com with SMTP id l9-v6so6397413pff.9
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=CBMvR6e8A01/P5QtsD0KrivIuothsFW8fnni53xWb2Y=;
	b=WfnFRNrmDjjhrE94H2wmLtyvBeiR5gjCqbjHAgdCrd4h8BdUgzwusv4Uwu4Z+XsejH
	Wh+EuQkr39eTccf4yJk3jFniNzQixrAENlaySB35l5CyQmTnC2zS34P7bKJf482Azpa+
	S9VAHkHYVwmWDnJoyOWM9/T41sXBrT7lhgliQBcHMsNfu/wHcUoQ1BEi5N5zD9Jd+pID
	R1U9ybAU8KMbil+xgctCJ3VaP1W6oOuZbcckaFCVnr3PvhdaOUerNowv6T2DblPSdCcF
	p5hDEPKOnvw0F/GxFJaAq6vhDcn7l64EfjQ51a/XBzEOaWl8YfawbhdF3+d2N2UUuUWn
	soKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=CBMvR6e8A01/P5QtsD0KrivIuothsFW8fnni53xWb2Y=;
	b=tcuXR5vp84PjACoOoWX7uDfE4R5blJLZAzxnsWJCFSxiGB8Qv+2kl9V9WTyPUx9Rew
	b3iBxjTZVMvuYJA2cO0B7AH87x+fg7CpItdZo7chUSEk+PthH33OP2vfboDGJHWb4sJ2
	Ay93pcU1XbITBiR5A5X0rKFSYwabLJyHclRrmmCyC8xG+oTVvVWsH84ib92BVSwwT0Ws
	eZX6ITwKhX3z4AsysdNyn2LsP0lPxtYTSiOGOe03E2Viy3xH5Akxxm+Fcmlzp1cR+y9u
	mLXfzjqpzw643zUGOwGomnQUW5OtwTGKJsv0IA/BaNr9Vjm6NFxAoJCmkLwpn0V+98Sn
	lEAg==
X-Gm-Message-State: APzg51DQjtnRQFb9rV4dCJWXOuvV8OvObrRI3XDzuBmGyLn1ygN5lY7B
	aYv8hPYNKZcxarPTrcguju19dYhW
X-Google-Smtp-Source: ANB0VdZjLZw4zRZyL/URJAaddQ/8FLvoq+/7QWfyH1RneWMzaqOXcOeZiqUrUGD+pUdY9bFvq9Q6qA==
X-Received: by 2002:a65:49cc:: with SMTP id
	t12-v6mr20083849pgs.27.1537113464235; 
	Sun, 16 Sep 2018 08:57:44 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.43
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:11 -0700
Message-Id: <20180916155719.9911-17-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 17/25] packagegroup-core-security: change scapy to python name
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:45 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 6682d29..5317aee 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -27,7 +27,7 @@ RDEPENDS_packagegroup-security-utils = "\
     checksec \
     nmap \
     pinentry \
-    scapy \
+    python3-scapy \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
     "
 
-- 
2.17.1


