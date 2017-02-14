Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 656A1E00A21; Mon, 13 Feb 2017 21:57:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A900BE00A21
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:57:09 -0800 (PST)
Received: by mail-ot0-f195.google.com with SMTP id 73so15183236otj.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0ufwuKZH9JL/WQEtWQXHgy5OWQ1nVsZt+k6L6Xy079M=;
	b=oopM3iXGpSceFPYEGZj+g6OpUsoh8twXKFNcgFr2N9kBz68Gx8wxBsbbldS5V9EvNn
	9wGBwUw+MDGG3vL9kGBx+kOOJXSNqMiCbX9NC5tiM73TfNCbJTdqnfuBL6ExKU4QGVON
	H3BRpwyhzRkDrKHE7bDoYE+lZfw0+5Ioa4veOMFFdsHpAOSKQ77wketQF2cOvIapYVEl
	L4GdAs2gsShB11ZFheJoP3r+kfvRirUjdseWOSm9/dStJd4yRMqeorkJw+U4AdC+FAY7
	ZJXmG+3SpXq/diRGjwm9kZjo3TG4IhlX5Ak5z8IJNZkyzmBkqIDc6dEAY+exrlWrVSAl
	BUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0ufwuKZH9JL/WQEtWQXHgy5OWQ1nVsZt+k6L6Xy079M=;
	b=h7c5OIA8Fgx/RqDTYe2IkqUQ8giIgGR3b29DdqDGnQRpwlQajSZSBrrTTjoQedqKOf
	s+8ImKhbuvf7LIIW+naKinLsWEeG54FxCoqa+McrL5GxbK/zcHGGg4TJ40wVZIzLE5/c
	GKSin12ZAOHGnN3vv4xafZc7ugpSsbwBa9EU0wlW/9fTXnkILy3RHwbao1DhTL3SpqWY
	jcGBeTAw4JPVkGouXJkrWLdiHBsgJ4HfDbdMn8phs2R3IhpCgzsp3gdEsxlrLnEO1bnT
	TGeMgJoX+8HhvPu8kCvLG2PIakxTmM5E3CHzpPADW5YG/eayxtPG6TqEQlCjzPrF4gob
	lJKQ==
X-Gm-Message-State: AMke39nUJ2gkau37imN+1jY2cJQC0aAk2zCJ7nEVK5HxIeQD1xe7NGDg19+SWo2DhfS/xw==
X-Received: by 10.98.30.4 with SMTP id e4mr30056389pfe.19.1487051829004;
	Mon, 13 Feb 2017 21:57:09 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.57.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:57:08 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:26 +0800
Message-Id: <1487051666-20888-7-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATHV2 6/6] recipes-kernel: linux: Add mainline kernel
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
X-List-Received-Date: Tue, 14 Feb 2017 05:57:24 -0000

Add mainline kervel support. Now the version is 4.10.-rc8.

Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 recipes-kernel/linux/linux_4.10.bb | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 recipes-kernel/linux/linux_4.10.bb

diff --git a/recipes-kernel/linux/linux_4.10.bb b/recipes-kernel/linux/linux_4.10.bb
new file mode 100644
index 0000000..d4cae27
--- /dev/null
+++ b/recipes-kernel/linux/linux_4.10.bb
@@ -0,0 +1,18 @@
+# Copyright (C) 2017 Eddie Cai
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+require recipes-kernel/linux/linux-yocto.inc
+
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
+
+SRCREV = "7089db84e356562f8ba737c29e472cc42d530dbc"
+LINUX_VERSION = "4.10"
+# Override local version in order to use the one generated by linux build system
+# And not "yocto-standard"
+LINUX_VERSION_EXTENSION = ""
+PR = "r1"
+PV = "${LINUX_VERSION}-rc8"
+
+# Include only supported boards for now
+COMPATIBLE_MACHINE = "(rk3066|rk3188|rk3288)"
+deltask kernel_configme
-- 
2.7.4


