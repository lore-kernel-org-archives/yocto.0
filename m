Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6B2C46CD2
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 00:10:23 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.2877.1706659815662896217
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 16:10:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OYtrFzUv;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-29080973530so3734060a91.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 16:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706659815; x=1707264615; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qvGifchVkIH3bUdj8/OaXAYWyGGEB+7+e0p32kSM1NU=;
        b=OYtrFzUvw9ytYBGkymhKuykGoZm+AZjrno3RtyneJhZub6oA/6qNlSEV0n4nOe36LK
         iYuLILGhvszt8jcttB+Gsn+1eHaHOlC8mTuwuoFJ4FbyHQjfmQxHLJMtjYltJJ1UfvKc
         +GQAd77505MP+pdcsDFWWxxvvr8+Emy3r32QcsO7vNMTfi+qL+YUMUaeOzuv4eIxMa3q
         JmRPS5XsBXQ4G88Mr22COXl8rvBrz/q2u9fbnhWMnnhKrJ+FZBnZCy5dupXy0DLM0bex
         Y2eWsZeWbtbdcWN39Lp500Iqgh7UNAhOvV2a1y4fJ0meAa35Dp8vKomZ+wiJQkD5uN4+
         66SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706659815; x=1707264615;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qvGifchVkIH3bUdj8/OaXAYWyGGEB+7+e0p32kSM1NU=;
        b=dRwn+zMljAR5cbc8aqnHlxmmLnBIpuq4hhoHqASanPoPXtZZTqzKNPfMLDCznBFtNg
         YLJpepf80eqzpBEkdFFI6dQqcCkygcV67/LyELMIIhcmT4JMc5PNs+BwS6op72Cgvx5Y
         4RzH5+0K+d6Ny3haLXsLuANedVaTrUw9l5+u372jcM0nRZvMKnNFZn+KGAyAWg6VKR+b
         Q0xYLi+h/BzI6eOsAMeY+n6r10iTw1kof2v+EfWnbfGE6Sl0ZOHHXxAIVDyiuLQvBwIP
         8BvN8lyz18tmcaUirfVSkjlzotJw1zRMHB7phQZ5mynTU9KD1kyvTzoi6K0Z4lHrzE4X
         FUHw==
X-Gm-Message-State: AOJu0YxlYBccUzbApd/qnqYcb/nYmBwk+0TmJRMN2KHFpQku8bSaPaxD
	8IEqOfF4iBMiwmK+EMl0gBa2IQmv0DrXnBveeYy752Ez7Nmz+5Wb5V9+MIOO
X-Google-Smtp-Source: AGHT+IF33mosHQHpVEqOvT9+LEqNyqdhdLWEstfQ8DJH5LBfSjBuRXzKXnWo+Kgip/uxikdtpBK/Jw==
X-Received: by 2002:a17:90b:e94:b0:28e:2784:9827 with SMTP id fv20-20020a17090b0e9400b0028e27849827mr252389pjb.17.1706659814747;
        Tue, 30 Jan 2024 16:10:14 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:d3e9:24c:5df6:b5d8])
        by smtp.gmail.com with ESMTPSA id w4-20020a17090ad60400b002936f1ba51esm9025427pju.5.2024.01.30.16.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 16:10:14 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] layerindex: allow empty Actual branch
Date: Tue, 30 Jan 2024 16:09:36 -0800
Message-Id: <20240131000935.283663-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 00:10:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62341

Exposing the actual_branch field of LayerBranch in the UI
was intending to _enable_ setting a non-default value, but
the check was accidentally left in a state that _requires_
a value.

[YOCTO #15376]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/forms.py | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/layerindex/forms.py b/layerindex/forms.py
index 3b764f1..a9e7703 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -187,10 +187,11 @@ class EditLayerForm(StyledModelForm):
     def clean_actual_branch(self):
         import subprocess
         actual_branch = self.cleaned_data['actual_branch'].strip()
-        process = subprocess.Popen(["git", "check-ref-format", "--branch", actual_branch])
-        exit_status = process.wait()
-        if exit_status != 0:
-            raise forms.ValidationError("Actual branch should be a valid git branch short name")
+        if len(actual_branch) > 0:
+            process = subprocess.Popen(["git", "check-ref-format", "--branch", actual_branch])
+            exit_status = process.wait()
+            if exit_status != 0:
+                raise forms.ValidationError("Actual branch should be a valid git branch short name")
         return actual_branch
 
 
-- 
2.34.1


