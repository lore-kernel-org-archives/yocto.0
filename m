Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8808FC47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:17:15 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.4254.1705983427303686522
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:17:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=htr22w42;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6dd7a44d51bso93990b3a.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983426; x=1706588226; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4rKILDO4obWs1GTEI+Wo6oazDKJX6ZYIoYlII8ukvKg=;
        b=htr22w42ztPSQ0yg3ABO25eNgzIlorYvEzRiMB58z1eXEoc/xByRe5nyAvZoVlbLTp
         i5UjczUGr5aF7BDDPBAVIv2gj1FgQtirNQWTMT5GOS6jpBwYSMFuL2t7seIrARYZjuvv
         XsA60ldxgNpYuE1ZFxzSmV6kQ7jOYxnefVloP1aURdxTOl0GAjRJmuXDkBxkNH+K4Gfw
         J+BXoSnqO6pBZQwHCmhYqCgdBCJNwwr3CHKqdrzuCHjSI67YW5ZbLSdJP9s+rsRT1hbT
         VzhpE4zviukkw6+clcEMC+tXy9xli3Jzo2rbceKUrd6Y01uhYGT6wHAh0fPijgwBUM6r
         EVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983426; x=1706588226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4rKILDO4obWs1GTEI+Wo6oazDKJX6ZYIoYlII8ukvKg=;
        b=TENUB9JNBxoHIawYxIlacg+MR44yG2QOUzLbhQEG6rNv57398v7Ybrd71UCKYFXDcp
         JpLT0KogDVe0DZy9fZa+tXdB5ILD5U2tjL1GiMFPX9XMzM6C/E5f7wnyPxNCGT3+3KUW
         WYkyo/l1u/Azm3K2d88BgHVzdFnZJmptETs0H5wC1teXRMKvJJgQ8JtJq7qoCpR4k1U8
         P8wR7CkUFLcjhrq31VltzOP/nhjaz1DaKltSMDddcMM7UexiJyj6C9kZjgfv6ZNxOgft
         FB8uDopBSnC8zbNlNQlyRCpV8w5b5VvJObgOwyQ916mxAChUn1lNz9ATzWqhjyiqtas8
         OmJQ==
X-Gm-Message-State: AOJu0YxrS2BiMjI4FApD58q4nXCqIlaThNmy/+FSwUAMkImmn0ktAI9S
	X+87w1Z39NO6tF/ISAZl0nMRLlHX4uMPG0EXl6PFEDkJBiRvdgHbq6yh1/xI
X-Google-Smtp-Source: AGHT+IEcO7XaVtDiWXdoNIqpzkMNF5kNNIPqES/nCHzleaQ+GKNhE+Yn8L5+kI5+heffDImBZJAhnQ==
X-Received: by 2002:a05:6a20:4e0f:b0:19a:92b:3f14 with SMTP id gk15-20020a056a204e0f00b0019a092b3f14mr2339974pzb.92.1705983426256;
        Mon, 22 Jan 2024 20:17:06 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id iz11-20020a170902ef8b00b001d73126cac1sm4380274plb.173.2024.01.22.20.17.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:17:05 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 4/5] templates: add bbclasstype badge
Date: Mon, 22 Jan 2024 20:15:25 -0800
Message-Id: <38ec722128dd948370b97191f6681f3d6baf36e6.1705982792.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705982792.git.tim.orling@konsulko.com>
References: <cover.1705982792.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:17:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62236

Now that we have different BBClass subtypes, it is handy to have
a UI indication of the different types. Add "badges" to display
"Global" (for 'classes-global' paths) or "Recipe" (for
'classes-recipe' paths).

[YOCTO #15238]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 templates/layerindex/classes.html | 5 ++++-
 templates/layerindex/detail.html  | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/templates/layerindex/classes.html b/templates/layerindex/classes.html
index bc3d0ac..e99761b 100644
--- a/templates/layerindex/classes.html
+++ b/templates/layerindex/classes.html
@@ -54,7 +54,10 @@
                     <tbody>
                         {% for class in class_list %}
                             <tr>
-                                <td><a href="{{ class.vcs_web_url }}">{{ class.name }}</a></td>
+                                <td>
+                                    <a href="{{ class.vcs_web_url }}">{{ class.name }}</a>
+                                     <span class="badge badge-info" id="id_bbclass_type">{{ class.bbclass_type }}</span>
+                                </td>
                                 <td><a href="{% url 'layer_item' url_branch class.layerbranch.layer.name %}">{{ class.layerbranch.layer.name }}</a></td>
                             </tr>
                         {% endfor %}
diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 0fa8caf..11c7df7 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -311,7 +311,10 @@
                         <tbody>
                             {% for class in classes %}
                                 <tr>
-                                    <td><a href="{{ class.vcs_web_url }}">{{ class.name }}</a></td>
+                                    <td>
+                                        <a href="{{ class.vcs_web_url }}">{{ class.name }}</a>
+                                        <span class="badge badge-info" id="id_bbclass_typ">{{ class.bbclass_type }}</span>
+                                    </td>
                                 </tr>
                             {% endfor %}
                         </tbody>
-- 
2.34.1


