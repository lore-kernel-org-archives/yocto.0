Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B77EE00B93; Mon, 12 Dec 2016 02:53:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99289E00B6C
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 02:53:23 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id u144so10401476wmu.0
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 02:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=qa6RrHdff1fWohWJJuLwDFzQCceIwO7G8P2WzdW6Ly4=;
	b=Sv89dnNEST+uqihRdjZ6hMejfBWmP81qf389iGDRBHW04/3pSpSIAfbUvT+CC0hLrv
	ADlK1vo3VKddSvLrGZm0+FLhuj6HPPA59YjCxgWI5yK2+No299ULxthIu7bfXS8yl7D7
	Rs8dv4gRnwkJZKfo0NRiTViHdb+9+txpYdsztyttDEMTXq6ypG3gdoIJc/ZYxgsBruRJ
	djelbmz3g6KcKA6MAPUl6vu+o0Ok/RUGOeR6wxpdYwEPiyJO9kgtcICZVE+091++o8gy
	zQSR+LnPiQVUZHHmQc0A+tniPL7nV3+GDZ1Lwg5c2XNkwmUg6HNCtVg7GHz/MMFE5kYG
	DJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=qa6RrHdff1fWohWJJuLwDFzQCceIwO7G8P2WzdW6Ly4=;
	b=BVTVFQa0bsHF+bGPpgLEnQvMYlCjneAvS74y/QzHqtzgPkY47AJcot23NG2r2gmKu0
	3LsfwcGTLJnl3b7ClT4ItyDlMw2R4hoKgMxaBhfDDGuqcTnzwDl7rXjyAHFY9++tRjes
	Z/lDT+gHxVRXhNTsdupQEpYJkTO+zDdjnL2av1PxhKrzQEibBWDWfqlA0a4HbmkoUpCb
	MqmEYPxrEyZ0zfj3Mqse5FuIIuT8P3H+L7WqyJC7iqzXi4HvWPjFNxDhxHnAiG8K8oCv
	S8JGTvwHTLTUdYP4RV6ieGkIjVXWtS7jV/xQrQ1tKFO+MWQN3bqpslZ/MccZuFEoGFBk
	cOFA==
X-Gm-Message-State: AKaTC03uOcwx4yF1o+CeuorXRa4NTUCQGHAp/FQGX2l8P9TAdhF+WT6yG4pGlpjOmYR4NQ==
X-Received: by 10.28.142.5 with SMTP id q5mr3114497wmd.78.1481540001973;
	Mon, 12 Dec 2016 02:53:21 -0800 (PST)
Received: from mueller-a-nb-linux.zera.local
	(ip-109-90-226-171.hsi11.unitymediagroup.de. [109.90.226.171])
	by smtp.googlemail.com with ESMTPSA id
	d184sm34940995wmd.8.2016.12.12.02.53.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Dec 2016 02:53:21 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Dec 2016 11:53:09 +0100
Message-Id: <1481539989-27626-2-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1481539989-27626-1-git-send-email-schnitzeltony@googlemail.com>
References: <1481539989-27626-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/2] rpi-base.inc: remove input modules form XSERVER
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
X-List-Received-Date: Mon, 12 Dec 2016 10:53:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This is nothing a BSP has to decide

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 conf/machine/include/rpi-base.inc | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 9ce647d..9f20663 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -10,9 +10,6 @@ IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 XSERVER = " \
     xserver-xorg \
     ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xserver-xorg-extension-glx", "", d)} \
-    xf86-input-evdev \
-    xf86-input-mouse \
-    xf86-input-keyboard \
     ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-modesetting", "xf86-video-fbdev", d)} \
     "
 
-- 
2.7.4


