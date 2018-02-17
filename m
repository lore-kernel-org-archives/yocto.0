Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32AE2E01075; Sat, 17 Feb 2018 09:46:02 -0800 (PST)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30FFE00F3E
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:46:00 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id c143so570167pfb.6
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=TFVsG+XM3KzoAysurRhgp17Sfyis5jSFPEh5D0aYeNU=;
	b=L1aTP0xp9S0HdGxwT06tQJKTzq2rkUOACT66nJsoQlW4H63nhxLPfmX2fCuERXkIum
	MymFtLGP7/5N97mh9ztA8CM0JqEa2f8qPl5+EQ7djy9IDcyhMi4NjIP3JCj+KFHo62NY
	7+n+B1e2WgEeZRQllc7CpJGS1r8wWM6jNUoIYeZesCje/sd3AVvl/xYRJkzQGlvA2u3T
	NM9T+k7XL6cw0lxD++oH+qYRJTkbFli+8M+7tRgZ1R13aa+vSME9Q0py8j8xXpvKMNvG
	jAvV4XP6JJ79lkQapLvTZY8/ikht1p8BzADVTKYQ8/4WNSmozWtr2bOZeNjzQT2cYWaM
	r6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=TFVsG+XM3KzoAysurRhgp17Sfyis5jSFPEh5D0aYeNU=;
	b=tg+P2LHuzPx+ktSzVff+kAvCViGiYV0BttNJ32y1xyin2dC6KSL9a/f5Jf2adUMM8s
	9WggHrEtoUb+9MdIMXzFz4fe49pfEkEfXBUiP395ilmmrbCYQwh4rtef9O1MwL3d3YsJ
	HQkvzQaeB2H6klhJV+et304sgo9FXhTDqHTFXC8u7Ik4H9ziCvU1K8HIuf68UjQVpaL5
	SjKgIupAEkivC5gY7ERHuTZemAiyWZ4xZu1WTBcunCSjhnAqhBZbUawWADGaAqXLSEBm
	Em7rCDBXMIrCkmrcJHujTKE39KIMutWgD+nzvKYfhfS9nQUPV3deVLr3yJHuLzHcqvR5
	WYmg==
X-Gm-Message-State: APf1xPABuqoLTzdPxRFRdLbq6IXEKPF6PcfbzB61ht8K4ANOn4ZgmLM4
	YhHcsuooEqDcRX7k9ZfA6g/rVg==
X-Google-Smtp-Source: AH8x227cVy4enf80epRPpdSc3GAo3L6fXfwyn9D5YlFG/g81l43VpxF/gZHe1aCw+pYhMgdo5EjKpQ==
X-Received: by 10.101.100.147 with SMTP id e19mr8254507pgv.88.1518889560714;
	Sat, 17 Feb 2018 09:46:00 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:1886:ab70:59d6:9e86])
	by smtp.gmail.com with ESMTPSA id
	z90sm60105451pfd.78.2018.02.17.09.45.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 17 Feb 2018 09:46:00 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat, 17 Feb 2018 09:45:54 -0800
Message-Id: <1518889554-32605-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
References: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/5] linux-yocto: move to wildcard on bbappend
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
X-List-Received-Date: Sat, 17 Feb 2018 17:46:02 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/{linux-yocto-4.12 => linux-yocto}/apparmor.cfg       | 0
 .../linux/{linux-yocto-4.12 => linux-yocto}/smack-default-lsm.cfg         | 0
 recipes-kernel/linux/{linux-yocto-4.12 => linux-yocto}/smack.cfg          | 0
 .../linux/{linux-yocto_4.12.bbappend => linux-yocto_4.%.bbappend}         | 0
 4 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/linux/{linux-yocto-4.12 => linux-yocto}/apparmor.cfg (100%)
 rename recipes-kernel/linux/{linux-yocto-4.12 => linux-yocto}/smack-default-lsm.cfg (100%)
 rename recipes-kernel/linux/{linux-yocto-4.12 => linux-yocto}/smack.cfg (100%)
 rename recipes-kernel/linux/{linux-yocto_4.12.bbappend => linux-yocto_4.%.bbappend} (100%)

diff --git a/recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg b/recipes-kernel/linux/linux-yocto/apparmor.cfg
similarity index 100%
rename from recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg
rename to recipes-kernel/linux/linux-yocto/apparmor.cfg
diff --git a/recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto/smack-default-lsm.cfg
similarity index 100%
rename from recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg
rename to recipes-kernel/linux/linux-yocto/smack-default-lsm.cfg
diff --git a/recipes-kernel/linux/linux-yocto-4.12/smack.cfg b/recipes-kernel/linux/linux-yocto/smack.cfg
similarity index 100%
rename from recipes-kernel/linux/linux-yocto-4.12/smack.cfg
rename to recipes-kernel/linux/linux-yocto/smack.cfg
diff --git a/recipes-kernel/linux/linux-yocto_4.12.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto_4.12.bbappend
rename to recipes-kernel/linux/linux-yocto_4.%.bbappend
-- 
2.7.4


