Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDE55E00C28; Sun, 28 Oct 2018 11:50:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C608E00C6D
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:40 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id c25-v6so2887027pfe.6
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=KxJMbKABbK6QGxukTWrLPnGk52bmFCsCdpaGaYfOX/s=;
	b=Ui3lMsqCaFppGIubYAqqSCZjy7FLsDgKSwqglVD9/KnrnXIKdg0vNV6GU3rm7kGaDJ
	galRRIjk2L+ACtqKlwtg7lCCjTb2F7moQe2imYqHiiLFbqFjXfU4uXLYiGuJECvtAVWC
	qoE4QxMh7zHhmgQM01H7ODNGeQo6uas6Jm9wynQ72B8IqcPeojxoUVhH0TZvGxlYYoZI
	dg65Zlvilnf/XAaFFiY6uBmeuOssYs6yuhdoiUVeKXYgG2gwfZlhyenuLfEPczQFr1C0
	o7bFebVu9KAIfs+X8z+GPW0RX1n/fARBfoW+IqyYHOF+gz/GNtLH5wTC2ocZW+dCHbKL
	X/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=KxJMbKABbK6QGxukTWrLPnGk52bmFCsCdpaGaYfOX/s=;
	b=jcC/y71TTx8cbXOzcAdcjb0evVj3s7ZxJsPE0axQ8lycVDQrrJ7gy02wMAOSPz+p5K
	M88TrVX5f33bJww98w++y8OC5AYD2LJmJiNWBlY/+GJf/EZB1HPj72OA+u7lWgQxyFP5
	mCnrXcs6McvudWc/nF+zqXB9Ui+ShIR/drCBzTRDEbrwCWus5KPowekUbK6DdajvWkL7
	CW1vpBkpk6wQ6PVctuUkjO/FkIZxOT6lElhBlkeKjBEHkcHATl8M0LoArBK5fEsqePMu
	TWruQcY0RhheVQdyj7LBn0UObGfjwVhrleq/9fDl/9D6wmgUOCvByQfSpT5wgCsPJgea
	ul6w==
X-Gm-Message-State: AGRZ1gJmsLnzdzWyk9hBB7nP9cdpm4vzsCPgQK4lXB1gjvSMYbgvLedS
	3acL7f2aoynKozPYa+yW22tthb5s
X-Google-Smtp-Source: AJdET5deI5YqniK8RWhRQYLylYCGweMi3+ArMSviCcNm6iplTucjqpfzYUEgzoRlmznTCbG+PnryIg==
X-Received: by 2002:a63:1765:: with SMTP id
	37-v6mr11197055pgx.131.1540752640448; 
	Sun, 28 Oct 2018 11:50:40 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.39
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:27 +0000
Message-Id: <1540752628-10832-12-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 12/13] packagegroup-core-security: add fail2ban ptest to image
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:42 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 741ff5c..e847847 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -78,6 +78,7 @@ RDEPENDS_packagegroup-security-ptest = " \
     python-scapy-ptest \
     suricata-ptest \
     tripwire-ptest \
+    python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     ptest-runner \
-- 
2.7.4


