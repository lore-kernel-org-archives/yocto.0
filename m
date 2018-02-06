Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADDC7E00E55; Tue,  6 Feb 2018 07:43:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF07E00E55
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:52 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id l9so762957pfi.6
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ZZ3MusFN4Rt1duWYzBGczepjVeWv7uuZzCzAHxQR164=;
	b=u+b9ZTa9fW7KgYED1yWNz6NK73P6Sw0P8ymJFM0u2i4CMZWGRNIXewJAwQgczKoNXq
	c/u0SSFVfSanR+Uinle2xoyAI88ITS+2myw66KnaWc3OLPRn8gVxnBXcD/GpasD++mGS
	1VqBjPQAbAXer8XPdTXaBDgr6dWoPBDV9gvnnNakVyQlkbqz2PuiRl30jPSBYzti1Aql
	HoO3v4M8XzgdSbTm2ktyMpi3X5mTyffQh9Dli2VTq0b9C9HJk/rjwu9wBR/Ok7o6NNf6
	UQlgfBuDEu+21UWrQrtfIDRDVSC02WR+hIX8F5U0GjXYi8j24/l/aZLubbf31IkqFVZd
	Uwag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ZZ3MusFN4Rt1duWYzBGczepjVeWv7uuZzCzAHxQR164=;
	b=ayE6hmBdy2Hf+3gb2WEpdoZV6NP0vc5AVQQWlW5c4IWa9CAeqzS+bvUqxE6Qm+DEp5
	+5G6/lmSXzvTE6elKAGXGj+xSdU1+nen0OPOxB463/LbZTweYBwAk0W/cJNMhzrZXU22
	OYOiK0Etj7FNqcw2jd4zo9uGpIXzSTKUorOxTU/1PMGTEcaHm9ad5/m2cIxrT3VK2k8Y
	DeZvloAobGo6vdxeS9z78HgPJmhYYu6OUrsHjIeFJJDlhffdcKOoPp67TT824/GItQEI
	OH5dHgi3OSidL+p2Z35hJQSMP8Q7+7TjYeAjTzH+LZMVZ1BSRlyLe2BncaMzlnoGrXly
	SZYQ==
X-Gm-Message-State: APf1xPCXmsdEi7j8MLJ4FMkfteY/0wDVUZuLzqj3qwuFY1fgDQsbUcvr
	zUth3ukQ7R450taRi3RfbdPiBw==
X-Google-Smtp-Source: AH8x224qnQG/jjbwUYQqtRvwq793FbxcdFdx3uRBllZLXUvaxdRIn8M1KGS/E2bzjCbIe1vmyMnqjg==
X-Received: by 10.99.42.85 with SMTP id q82mr2217458pgq.285.1517931832487;
	Tue, 06 Feb 2018 07:43:52 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:51 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:27 +0530
Message-Id: <1517931813-13010-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/12] fail2ban: update to 0.10.2
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:57 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/{fail2ban_0.10.0.bb => fail2ban_0.10.2.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/fail2ban/{fail2ban_0.10.0.bb => fail2ban_0.10.2.bb} (96%)

diff --git a/recipes-security/fail2ban/fail2ban_0.10.0.bb b/recipes-security/fail2ban/fail2ban_0.10.2.bb
similarity index 96%
rename from recipes-security/fail2ban/fail2ban_0.10.0.bb
rename to recipes-security/fail2ban/fail2ban_0.10.2.bb
index 465316c..7e2deba 100644
--- a/recipes-security/fail2ban/fail2ban_0.10.0.bb
+++ b/recipes-security/fail2ban/fail2ban_0.10.2.bb
@@ -9,7 +9,7 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRCREV ="c60784540c5307d16cdc136ace5b395961492e73"
+SRCREV ="a45488465e0dd547eb8479c0fa9fd577c1837213"
 SRC_URI = " \
 	git://github.com/fail2ban/fail2ban.git;branch=0.10 \
 	file://initd \
-- 
2.7.4


