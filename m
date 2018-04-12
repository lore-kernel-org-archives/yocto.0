Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D302AE00B65; Thu, 12 Apr 2018 07:07:58 -0700 (PDT)
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
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C5BE00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:07:57 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id i142so2390293qke.12
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=BMhk9lvisK+r6oOHNgubSdN+m/3RVNpkYznlRrczBos=;
	b=j4h2cnApulKaK7qrfwVFXe6u/FysseRrsnbcP0QiTDH7+WgiSUoNLQ+YZAM44yAIeb
	wpypHHBYGZcRqeDMVaMB2/h/n6dI18fU5Z8+nO1xJ30ixkCl3l0mQdlQ50sdq4O/jdgu
	At0scBUOSmA7qHz9PKKvxDUdSDcus1K4ZGs3EBWBhtVk5AKvQN4qMjrRb9bXCUF+D1wW
	QIRK8KDB/G8/4kTvaIjxMn19VzvPFuHrBq1LqbDgQTLYXAJxJxVoaFAEjMavHK9JGlq7
	p+5DvL3kNEDluxsMJpluzMntp4b81lREG+R4rebgKhtlZnoger4f2Fy/RL8FPH2OppZJ
	TnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=BMhk9lvisK+r6oOHNgubSdN+m/3RVNpkYznlRrczBos=;
	b=TBC18xAk2zp7e/kNkkHmq/+EOv6cHLuFfsG2FqYWpZJ1eHoHyq7YhZaCIUfolwQEZP
	ZYfDlE6wfmxhCBUYsgwUR09RhP6jbZzJqCnoCa04BQZNwePtkgbghb+XdL2GC3T95bV5
	yFLuDFr+mqDMOldx4dlbtB7HYFQFD0713lkJ5Eh11+/9aCupPWuojjDpy/lpQkzFgrAy
	U3RbF/opBmAlecTMQV9+8+63p5hT+ZvZbM7A+o79LMiM5IKaIddJ+GViVjCvKh9MKPXH
	jp5GwLrNNuRG5Cj9yGvAIqcEyNq5nVqnE2YoUOrRCTqVSBvSk3FH7yM/dANM9TpFVW5m
	3g0Q==
X-Gm-Message-State: ALQs6tAQWPuuxyrPfIIP8eIj1rprjyyFs/R+UtVIY8soFhYve3R8M3oq
	f3YK0X+TZMFG1rrdQ87/KxAYxg==
X-Google-Smtp-Source: AIpwx4+HilPVzKO1pkxaKjq2iwOs1lubHFi25AxtA92RS6Teux8eizNMu7geXKAKRN1tO0K9I6ky2A==
X-Received: by 10.55.138.194 with SMTP id m185mr1398862qkd.103.1523542076665; 
	Thu, 12 Apr 2018 07:07:56 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:a021:aca9:5eab:bc4b])
	by smtp.gmail.com with ESMTPSA id
	b12sm3145006qtb.62.2018.04.12.07.07.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 Apr 2018 07:07:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu, 12 Apr 2018 07:07:42 -0700
Message-Id: <1523542063-20994-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523542063-20994-1-git-send-email-akuster808@gmail.com>
References: <1523542063-20994-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] clamav: update LLVM version to match core
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
X-List-Received-Date: Thu, 12 Apr 2018 14:07:58 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.3.bb b/recipes-security/clamav/clamav_0.99.3.bb
index dc26277..043fa21 100644
--- a/recipes-security/clamav/clamav_0.99.3.bb
+++ b/recipes-security/clamav/clamav_0.99.3.bb
@@ -35,7 +35,7 @@ GID = "clamav"
 # as defined below
 
 CLAMAV_LLVM ?= "oellvm"
-CLAMAV_LLVM_RELEASE ?= "5.0"
+CLAMAV_LLVM_RELEASE ?= "6.0"
 
 PACKAGECONFIG ?= "ncurses openssl bz2 zlib ${CLAMAV_LLVM}"
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-- 
2.7.4


