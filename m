Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DEA8CD3445
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:13 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3997.1778203565935704534
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ayF9G92+;
 spf=pass (domain: konsulko.com, ip: 209.85.214.177, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2b9705613ddso9510735ad.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203565; x=1778808365; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wup+ARkC5NxdlM6S9euHh+cIF99+71JfQqhwZqaIX50=;
        b=ayF9G92+PaJdZwdkNwsBzkqFoc7v+du72Xgdim58S+rcQA0HQwntZ+ssLyd1Gdkf15
         Y8cbsnDYOeByHL5lGpV6aDqp6vgwCJ2YRU2x0JS6m48VYeyXZBY26Hu7BOP5l+knLVh8
         Qbrg3C0e/XBCIWN/hBarEjnwSv1+MkKxPXHR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203565; x=1778808365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Wup+ARkC5NxdlM6S9euHh+cIF99+71JfQqhwZqaIX50=;
        b=RG3SpIVMMg2KP42hRxht70qRMo1jgskt8IWdVuh5sT/ffCHBwczDMWFmh6QeloHr/x
         RznHgrvWV32X+rVOfsFj6lOKSwdAuNb+LX5IqKKt3nsUOfOVX2Zn1LdxkYgkRxM61av/
         O23uL5lVmxSJOlnxEJg48jf7NAWxqM1NzI3wMxetUX9Um+VBr/m29Of1x04JlMlSqjeb
         J5gcbGAPl11AtWMFuO7fTaX/BQAIjAv8mg1UzQs/g6jvSVAFPdMczK971NzpWJfmQkT2
         sCAF9ucZwDEAvE1eYYSyqmrZXbiZ2LFl4iWnT+eatRvK662bE+463tAao26Ijb7k7KyQ
         rnYg==
X-Forwarded-Encrypted: i=1; AFNElJ84LUA1ZqbHxOQ12ydzx11VaoiECG0TLFZ7tqNH8dtxsp4p6h4UomIxhzXejfTZB8CSBmtE7w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyfDkki10zB6mIsHwJC3+XaeociR9UHmipc5PJGMrdmGKwsSy73
	qD0SlZOh6z7qBi3guGLXTqduatdCYRIQKcgd2Dj9FAt5/9UF2y+RHyphVioa7gayqLg=
X-Gm-Gg: Acq92OF2pTIIY/cnyMinRdm/8VoQRBUnuFjC9SnM68xn7D2IS4JmM9MlRlc5/Ewhj2u
	MKDgcFodS8JobWD1peFsSal98M4HD9z4rwljs1lAbASBJfxWWkqJsBcMf6r5Bzq9Yx0ielc242+
	TmQ0OTkgfPbcYTcKHDS8g/+m8kERfJP+TUbxGFSHCxIGibH/SbpDnX+w91QOdri7JlvraovYaTj
	3kqenWkMzpYLZDMmfkljX9aQYeZmuh3ijILwshv2TYyBASyZV9WFlpwzcTJB04Vg9nwFxbPMqPo
	mtamJ2Uo81ODH8yH58kATIIMmDUAE1YetaXR96vhpIvnXEF0oFmBYGzmutvmlRUh8NP4bFKzPdT
	QMbUcf24KaBvHRPwk+dGeoop4+sudpM7Gn+Bxt/h5Vw7B57a4yJneVffoyYgn1HrOn52KKENshK
	1vNv0gQAbB403l0MLPZEHScDwC5Cz+wv3E9RcMWUNrlatdZMSj29ew/zBklVzeXV8SMcaTfiaOY
	g==
X-Received: by 2002:a17:903:24f:b0:2b4:5f67:5914 with SMTP id d9443c01a7336-2ba79becc18mr104564495ad.33.1778203565343;
        Thu, 07 May 2026 18:26:05 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e89d43sm1055645ad.63.2026.05.07.18.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:05 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 04/11] scripts/utils: add getconfigdict() for dict-type config values
Date: Thu,  7 May 2026 18:25:33 -0700
Message-ID: <d85e765060f18251c2072ad3d1cb12219a2b0085.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66505

From: Tim Orling <tim.orling@konsulko.com>

Parallel to getconfiglist(), but for JSON object values. The merge
priority is defaults < target-level < step-level so that more-specific
keys win: a step can override individual entries in a target-level dict
without replacing the whole thing, and both levels refine the defaults.

Used by the upcoming CONTAINER_IMAGES support, where each entry maps a
Yocto recipe name (the on-disk OCI path stem) to an image name (the
name pushed to the container registry).

AI-Generated: Claude Cowork Sonnet 4.6
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 scripts/utils.py | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index ea905d9..112ebc2 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -112,6 +112,21 @@ def getconfiglist(name, config, target, stepnum):
         ret.extend(config['defaults'][name])
     return expandresult(ret, config)
 
+# Get a build configuration dict, merging defaults < target < step so that
+# more-specific entries win (step-level keys override target-level, which
+# override defaults).
+def getconfigdict(name, config, target, stepnum):
+    ret = {}
+    step = "step" + str(stepnum)
+    if name in config['defaults']:
+        ret.update(config['defaults'][name])
+    if target in config['overrides']:
+        if name in config['overrides'][target]:
+            ret.update(config['overrides'][target][name])
+        if step in config['overrides'][target] and name in config['overrides'][target][step]:
+            ret.update(config['overrides'][target][step][name])
+    return expandresult(ret, config)
+
 # Return only unique configuration values (identified with '=' in them)
 def getconfiglistfilter(name, config, target, stepnum):
     def merge(main, newvals):
-- 
2.43.0


