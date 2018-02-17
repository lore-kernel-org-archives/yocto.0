Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88262E01070; Sat, 17 Feb 2018 09:46:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87097E00F3E
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:59 -0800 (PST)
Received: by mail-pl0-f65.google.com with SMTP id f4so3405435plr.10
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=8zx9H4qfehs0UPWDw4qwYI5lo9/tGB0u1eV/umaOycI=;
	b=CravjRcBPf5tAyZoHYzqUF3mfv5ON1OW0uXnq7vWKMb896BjXSzZeprpLTRKNSs/fR
	6caA/OoPEaIQgPtuc6A0FaG4iRWPRzCJxlNje8jugxXqMNLWbgBK8Pfu9eAx12xSprp0
	I5nLREQkoPk5tO72mfILVkhI9WTP+NlY6xu9LpYByBq+QycN+dGzNEg+za1tzJ202r72
	QmTmIqSrYyfVvC8ruYZCnMKrYulUCOaBjfssTojyE/GQHXN87WbKcVVMpumN1hPuUqMd
	EAUZQDcf0snnjM6TLDZ6RXhUG51C9qb5x/bobyJ6fOUSkBG7E7HfrsiauYfVoO8uu6sK
	HAow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=8zx9H4qfehs0UPWDw4qwYI5lo9/tGB0u1eV/umaOycI=;
	b=puZS0ifpjVkY3jtWmJQemAuNxEHgT7yZOmH3A0HT9ckY5sbIPt+UkszRUmpM74eJKN
	w6VHIDcJp8Z5VjT49Y6JW2WCxjZsWv5CNh5ZM8xvxdCmmJJERnous5ocvKYC93bUs/8f
	ymPKzCO2Jp8ePYTwdRjPBQOX2sc3r2qknWD7krc9qs1i9lxRV6p2ArUa9RJ2sgL6NxI1
	NHb5cO2iBBs1TndrAmSBxLXFo3k2C+gAVdNfHbkGhy1+zhsq+HSItK8k/hLKZpyaTCM5
	5EEfbkkQTS/iosfdwuxRv3tqqxkc40ougHA3vPJ9D5eMSyT6oDSGuew3baCvMrFwQs1B
	BLjw==
X-Gm-Message-State: APf1xPCSi5JtrFy0ufpn6f/qGCDWV+TH71cmyK1kSvH/dt3iXB6Vw7fF
	n4P6NIx4/gw0H8u4oHYCalM=
X-Google-Smtp-Source: AH8x226itk295xJEiLC3OxzLecV+b88bdZSNldxK9Ykqhpjsw9O8a44EsGaW4kNb6ex1bXhY9/Ri6Q==
X-Received: by 2002:a17:902:47:: with SMTP id
	65-v6mr9173037pla.194.1518889559643; 
	Sat, 17 Feb 2018 09:45:59 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:1886:ab70:59d6:9e86])
	by smtp.gmail.com with ESMTPSA id
	z90sm60105451pfd.78.2018.02.17.09.45.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 17 Feb 2018 09:45:59 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat, 17 Feb 2018 09:45:53 -0800
Message-Id: <1518889554-32605-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
References: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/5] linux-yocto: drop dangling dir
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
X-List-Received-Date: Sat, 17 Feb 2018 17:46:01 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto/tomoyo.cfg | 7 -------
 recipes-kernel/linux/linux-yocto/tomoyo.scc | 4 ----
 2 files changed, 11 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto/tomoyo.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/tomoyo.scc

diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.cfg b/recipes-kernel/linux/linux-yocto/tomoyo.cfg
deleted file mode 100644
index 0caccf7..0000000
--- a/recipes-kernel/linux/linux-yocto/tomoyo.cfg
+++ /dev/null
@@ -1,7 +0,0 @@
-CONFIG_SECURITY_TOMOYO=y
-CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY=2048
-CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG=1024
-CONFIG_SECURITY_TOMOYO_POLICY_LOADER="/sbin/ccs-init"
-CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER="/sbin/init"
-CONFIG_DEFAULT_SECURITY_TOMOYO=y
-CONFIG_DEFAULT_SECURITY="tomoyo"
diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.scc b/recipes-kernel/linux/linux-yocto/tomoyo.scc
deleted file mode 100644
index 588864c..0000000
--- a/recipes-kernel/linux/linux-yocto/tomoyo.scc
+++ /dev/null
@@ -1,4 +0,0 @@
-define KFEATURE_DESCRIPTION "Tomoyo Kernel Support"
-define KFEATURE_COMPATIBILITY arch
-
-kconf non-hardware tomoyo.cfg
-- 
2.7.4


