Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 031F9CD3445
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:25:22 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3974.1778203522249969349
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:25:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=RxPT+IEr;
 spf=pass (domain: konsulko.com, ip: 209.85.214.172, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2ba1e9d3687so9200415ad.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203522; x=1778808322; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UushDgpJCHQe0Y2FluKNYZ7ooFItwXqIlxSI7Ww5DF0=;
        b=RxPT+IErPYid8aJCDIzhGALEJeG+niwhFSt5a2vFxzDlXrSuUBpADjk4pD7d6KfYlY
         AYiIs4REmYk5YmynuS8aPfr+xdDkqJLiD+U89U9+mKWPWyjd77DROP4HQiXPW3Ksy7Hu
         EaLVpqKrNpiPWDZYytkxuxeu2oQ/jVdEMSnA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203522; x=1778808322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UushDgpJCHQe0Y2FluKNYZ7ooFItwXqIlxSI7Ww5DF0=;
        b=PstwSfBF0G08tO3Hkd9WMrDAH53A+YWDleH1ICISiKiKS+v0YB9i+IT7obdaqzozhq
         MeeIi1L+nOo91MLsLnkvH9MdOOg0wOTp7QRvKBdeHgMIJYSfWjuuNP/zrEUKpzxa7Wk9
         cZnCXkH4g+DpFzaRqpoZtwSgAtc1IJjuQ7LcsWkyp1bCYd85rOdCGCt5VwTYjs93XYgi
         zHH3H2SG1RXQcTmiuhmcxWGcUcQsKsOMjz8KdcLdo46aElZvvxCykPA8h3DjxEuGWUgx
         sVmOZeEju6ZU9evxhZr/3+exjRY9s+/USMN9mYRQzSmlIkLjPlZIOLqFgy8gOnil0YM/
         1RCg==
X-Forwarded-Encrypted: i=1; AFNElJ9MMUWWHLi1d9DylW+TG0ReU2nqfltrU/wAGeFcf2sLfeiUYwvA4BPp1sIglW4wN8YhPYimkQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxPxllGrc5Z9Vc2WuqAwEu0KM1XccV1NYiFfeiltIWTEdn9N7zr
	L+6q5+qhQZOcpBnWQs81wZJk2A+J55rR5zYYLFjk9MoB0N1mPdjPe6oufq8xTVa0Prv7BZPl8i9
	u8Juj
X-Gm-Gg: Acq92OG1Dc/PDShfSrkq3NlSoTxkM7MEQqlEw0HjCCNAkhK/yOYljP7+iJzvV/lnbjD
	1+VCLaddKc4kIzWDu7ZdfR8Xi3GFCLe1JPbmdPIAajn2Kgr1WF255YgF0APyOQdDWQPtH0hCQsP
	vPRdgz9dH/xPMRBj1HwYfwxyxVd4BcvjUIgFzmfc4WXH6MlOwThuQvBL23EXPMxTNLGGi/tOKQE
	JN2gKqn1JAFr+Ljn0M42Ja6ixgg3IqC62XeQzbrYdYT2sqk9HbeKhEf1VkWwz6u4T+oouxylhPC
	xNec7dztX2z81QV5DUvWZH1/s7ggZegIPPNs+nhnRX1PxhOraPZH1H4620dmfgClnIdZEgu/WeX
	rZFv0kNp9QUSi4Q9+FplKdHM9NPZeqpj7Rzbz8EaaL6yfv5yb4O40MSDBP3T53/iDueJRFML6Z2
	hq05RLq6P/snnGJ37hNnuQS4Ejxy+E1YAO8fcmCjIBCAVdT5go691RwmDDgy/DCE0=
X-Received: by 2002:a17:903:4b03:b0:2b9:7ad1:bf2b with SMTP id d9443c01a7336-2ba7a2102eemr110135065ad.29.1778203521508;
        Thu, 07 May 2026 18:25:21 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e847d0sm996625ad.62.2026.05.07.18.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:21 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 1/4] config.py: add vcontainers-tarball; containers tag
Date: Thu,  7 May 2026 18:25:09 -0700
Message-ID: <6e816aa1b2e35ffd2aa391d2dda727cefbad9e30.1778202070.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202070.git.tim.orling@konsulko.com>
References: <cover.1778202070.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:25:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66497

From: Tim Orling <tim.orling@konsulko.com>

Initial steps towards containers jobs.
We will need vcontainers-tarball (similar to buildtools job).

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/config.py b/config.py
index b5b2b62..630c8d3 100644
--- a/config.py
+++ b/config.py
@@ -34,6 +34,7 @@ buildertorepos = {
     "metrics":  baserepos + ["meta-openembedded"],
     "metrics-gitstats":  baserepos + ["meta-openembedded", "yocto-docs"],
     "meta-webosose":  baserepos + ["meta-clang", "meta-openembedded", "meta-qt6", "meta-webosose", "meta-security"],
+    "vcontainer-tarball": baserepos + ["meta-openembedded", "meta-virtualization"],
     "default": baserepos
 }
 
@@ -159,7 +160,8 @@ builders_others = [
     "oe-selftest-ubuntu", "oe-selftest-centos", "oe-selftest-opensuse",
     "non-gpl3",
     "meta-webosose",
-    "meta-qcom"
+    "meta-qcom",
+    "vcontainer-tarball"
 ] + old_arch_full
 
 subbuilders = list(set(trigger_builders_wait_quick + trigger_builders_wait_full + trigger_builders_wait_perf + builders_others))
@@ -325,4 +327,6 @@ builder_tags = {
 
     "metrics": ["metrics"],
     "metrics-gitstats": ["metrics"],
+
+    "vcontainer-tarball": ["containers"],
 }
-- 
2.43.0


