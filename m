Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E148CE00BA1; Sun, 11 Aug 2019 18:54:54 -0700 (PDT)
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
	*      [209.85.214.179 listed in list.dnswl.org]
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BDE2E00B31
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2019 18:54:54 -0700 (PDT)
Received: by mail-pl1-f179.google.com with SMTP id g4so788365plo.3
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2019 18:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=2EdIsszimqv4CD5utsPORdtQ3ijZ/3nx53m2Ec+c4g4=;
	b=SliIx4aFZOYtU/5DUXIOa4y5BHLOaBcN/JsJtdTHtQi711DPttjV1l4spafxt8f2YP
	KsoKtzHIYBd/flZZwIQnfvJW9R3NfFd659+ACGvAKSLRsReMARCSkTv9NQG33I80KZ6u
	Y/aoWD+4/EbZmFtD8H9vfTDI2d9OTUHYgkUwZBVI5kAB6YZaIP737BExX8ad7R4I1xay
	IYz6nWfK3k+CyL4LmQMoxNyjYoiyBf+QG+rsu7zIYjJsYSX+KY3IuzzhaBoOkOyv8ySu
	8kBReWllXbpmv7GlftJF7lEB83YRg7cxaCJJ79czrFtutEwsl1V3l0gidD4nWYZ2F20z
	fvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=2EdIsszimqv4CD5utsPORdtQ3ijZ/3nx53m2Ec+c4g4=;
	b=LXWBi1kUwMH9XLtYwvGqmalo1qP+FEE9V3vKF9xF93NtVz9zzKReVZFag19hS3B0Rk
	iX+Kaee4k/uuTW5T4gwd9XoBvr8kq8CE38mGQcYibYz5ZciCIRM6T2KpH2iEypbBpxyG
	1lrpiIesIynmjVkBaaPEmBJMStmwksYQHDBpapqBTJJIeDoEI4Jl1KD8RB6kuxHzTPYb
	6Xmopb+a5NWfeKiEhDkd6jNZw6tvG4aHA44waGB68e8a3lwrSQQIuk6J62dsJ1xWegLU
	IIUITDPSojTV8sVTvdcXy1z5611Ztj9EJ8HRskGrUm5LyzarmxvJZ9YuTAv8UwAF0zP9
	Btmg==
X-Gm-Message-State: APjAAAXHYpRukiwvScR6vZ7mQX9lK/zBIUhLcYLgkejM9CSuwTEQ9YF1
	h+dFYPu23R1ZFzbU6yhAyN+bolR3
X-Google-Smtp-Source: APXvYqz+HXix5acaJNliiNQMx5geu+dMX63GCZ8BpotUhgBG//OB72Kewbje9WV15ed0fn+KVvLXPg==
X-Received: by 2002:a17:902:a03:: with SMTP id
	3mr30436227plo.302.1565574893784; 
	Sun, 11 Aug 2019 18:54:53 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	s16sm4988242pjp.10.2019.08.11.18.54.52 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 11 Aug 2019 18:54:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 11 Aug 2019 18:54:51 -0700
Message-Id: <20190812015451.14702-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-integrity][PAYTCH] integrity-image: IMA_EVM_KEY_DIR has no affect, remove
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
X-List-Received-Date: Mon, 12 Aug 2019 01:54:55 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/recipes-core/images/integrity-image-minimal.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index e1bc6ff..1a3a30a 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -17,6 +17,5 @@ inherit core-image
 export IMAGE_BASENAME = "integrity-image-minimal"
 
 INHERIT += "ima-evm-rootfs"
-IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
 
 QB_KERNEL_CMDLINE_APPEND_append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
-- 
2.17.1


