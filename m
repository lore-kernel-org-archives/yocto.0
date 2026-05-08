Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F122ACD343F
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:25:32 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3976.1778203524077188158
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=P7KESAdw;
 spf=pass (domain: konsulko.com, ip: 209.85.216.49, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3654ebfd57cso996739a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203523; x=1778808323; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rEP8G1O95TpTZYH/jfmYSZcfeUJ+uQ/O8q92RN1QEwk=;
        b=P7KESAdwYbD2tho3vWD80ZYDi8fCq8Wv4BK5mb4YA/Qirmhp27LgjpUZTVIIgyJkw6
         TQEqSLfsUSNTXK6840owx8cHSGW8e5TsBj1Z1WKvscuGRXvRgESNdL0av34/903GqLwH
         vFV+ZUQg4dEUQU7hhzoj8xMNCmWgJvzYV88UM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203523; x=1778808323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rEP8G1O95TpTZYH/jfmYSZcfeUJ+uQ/O8q92RN1QEwk=;
        b=sh63+7F5DCa/sFDLmGyoHDPxEPJjaD4Kt3jvo/iRdSAlBJfR+YRpEK4lO2B4CjT+q+
         KGinw1bZaQsERjeJD5cpXrTX7sUZcvdU95AXr0aGiT/cuqf8Te+r53+8xaCeA7BAjMXd
         ZGAH9Jc+rm3r0rG18eTBLYqShyNZ9kQkq+hzrRGizuYOCRKu3rry4cMvB2j4KcekWIoQ
         vBEO6yGkWg4QVvHNpEE5JEMkpZQ/L7uSi02QadMQ7PxXYyMZ5K0e+S0J4PS1zA++tDuL
         QYNZN4Xt4NSxupPQo7HB9DHm9S56WoKEJGB7UDj+E7rVoh8pi9R1d/YYTxvXM5qO9tWY
         drqg==
X-Forwarded-Encrypted: i=1; AFNElJ8pG1DXC7Ij3HdBEhDrhosk/EfUz+2ZG9i9lzNdDVuwQKFJ+/pFEbuRE1FXv+GAEv8I9N85ug==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw3oi8ngtaU/1EHPQ4sIvjEAmzFJ20YBYsAos0X0nIeO2YYXPRn
	s1ePUqQpI4puHqmZ9/H/GmDNUyUSV3qMmyH2PRzYcO13X2OtJJZNDS4NAWJDmsjgFkc=
X-Gm-Gg: Acq92OHUWoKSWZjfuOtTx6609/9hOGWn3PrQGNTQdmPkTTpfi3rZ9uSahA8ONYy+aIg
	C5DzR6M8VT0jeWBS3GNUoGLvuyLih0KVk/8uQaU27RYRgskWS1uC16geW9XgeG+4YfuxXAgMo1V
	WmCXbFM9GzGBYSv2t8C6uQWw47BfqCnrs1LXIaekxE9yU1Ced1+2IimZms8GnPDbS8yh9CklAWk
	0zEF88sXhPYhJm+o2wIxhpgLg4gs6e4DwSlvTvNxWDo2uPl715k70hkP2JFpHZwoS9B0/WyinFQ
	MkvnJAipMia2W0PrfBcwt2/Vv1Yd5EEVRWeqlzbqPRi68r0aAz5jdamg3NXZ/RJQgFCxsWPl8Lr
	n/V3SeWkUoKk8HgS9AQutGaySbQWL/UJh1GXZ4Ma1aas/QBrMbqSe9UwcEy/giQvZG+Efeqq5l9
	vgVFABwAF4DQ+hmHv0nzrdCalNWtsbESvuIO8Dy90fGktwikuBru/pP5GDM8KSWtg=
X-Received: by 2002:a17:90b:3a4c:b0:362:e826:cefe with SMTP id 98e67ed59e1d1-365ac77fee0mr10080254a91.23.1778203523438;
        Thu, 07 May 2026 18:25:23 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e8df57sm1022155ad.64.2026.05.07.18.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:23 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 2/4] config.py: add containers-meta-virt;-library jobs
Date: Thu,  7 May 2026 18:25:10 -0700
Message-ID: <e8cacf7019cd9855bb698acb43e40ce11df2f728.1778202070.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202070.git.tim.orling@konsulko.com>
References: <cover.1778202070.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66498

From: Tim Orling <tim.orling@konsulko.com>

Add 'containers-meta-virt' job for the original containers available in
meta-virtualization itself.

Add 'containers-library' which includes 'meta-yocto-containers-demo' and
adds additional containers. The pattern is modeled after
docker.io/library/*

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.py | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 630c8d3..e7f9619 100644
--- a/config.py
+++ b/config.py
@@ -35,6 +35,8 @@ buildertorepos = {
     "metrics-gitstats":  baserepos + ["meta-openembedded", "yocto-docs"],
     "meta-webosose":  baserepos + ["meta-clang", "meta-openembedded", "meta-qt6", "meta-webosose", "meta-security"],
     "vcontainer-tarball": baserepos + ["meta-openembedded", "meta-virtualization"],
+    "containers-meta-virt": baserepos + ["meta-openembedded", "meta-virtualization"],
+    "containers-library": baserepos + ["meta-openembedded", "meta-virtualization", "meta-yocto-containers-demo"],
     "default": baserepos
 }
 
@@ -68,6 +70,8 @@ repos = {
     "meta-webosose": ["https://github.com/webosose/meta-webosose.git", "master"],
     "meta-qcom": ["https://github.com/qualcomm-linux/meta-qcom", "master"],
     "meta-riscv": ["https://github.com/riscv/meta-riscv.git", "master"],
+    "meta-yocto-containers-demo":
+        ["https://github.com/moto-timo/meta-yocto-containers-demo.git", "master"],
 }
 
 trigger_builders_wait_shared = [
@@ -161,7 +165,9 @@ builders_others = [
     "non-gpl3",
     "meta-webosose",
     "meta-qcom",
-    "vcontainer-tarball"
+    "vcontainer-tarball",
+    "containers-meta-virt",
+    "containers-library",
 ] + old_arch_full
 
 subbuilders = list(set(trigger_builders_wait_quick + trigger_builders_wait_full + trigger_builders_wait_perf + builders_others))
@@ -329,4 +335,6 @@ builder_tags = {
     "metrics-gitstats": ["metrics"],
 
     "vcontainer-tarball": ["containers"],
+    "containers-meta-virt": ["containers"],
+    "containers-library": ["containers"],
 }
-- 
2.43.0


