Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AE26CD37AD
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:25:33 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3978.1778203528025389253
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:25:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LT4duDxt;
 spf=pass (domain: konsulko.com, ip: 209.85.215.174, mailfrom: tim.orling@konsulko.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c8021c8c42fso533534a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203527; x=1778808327; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yT0PcVCrRs0Z8wTNqQnZ5BjlXQBMVePVGfQwa8KgeBQ=;
        b=LT4duDxt7LQDhe/txVWwX+aJwfBIBQjl6a2ngz4sdDW8gm830yLd9lZnPHHJ0jwK9k
         7w/+/u7/0QPYEsTdnZNlowJ62g0Nvy/TVmF/aILBmZ/F79ClNZpFb1gvX2QNwY1fNHLQ
         yLm9WBKzkAmU6kAnk2UPyRpdDWQgb3rMY62iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203527; x=1778808327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yT0PcVCrRs0Z8wTNqQnZ5BjlXQBMVePVGfQwa8KgeBQ=;
        b=oxPEN8HHp87uXog2MPKnw/HXN71faFyyRh/NFg9xNS+YKEXZov4R6TOO2AIci5aMOI
         RsjViNANM+HigrP1iJTHVzfkjNrrct/oAE4++8x3Bg4i3HwP0dGpuFxTFF+LLCG8i90o
         wWkC8CnxV2NJrt28YSty+5SDWh2xJY899HvtQ3U/Vhh5RzkmkRNEZP09klIkPt1w9tdH
         FmZQcunqMcKyacOWxHXJZJJuLZdLHJuQz+VaaqvgInwbjktagGSkZR8Xlg5uxo1awR/m
         loWUL8cT81X57OPoNgLUs4GkIFtIKkr7lUD0bXfUVQCaBeBhrm3hSuUJt0Q4KFAzrqAn
         9cKQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Dm8Nqocj0sQpfiqw6wzJCc1vBJy6gzz3P3dYGkpc+Q0FTbz30TXEvyqsnGmW1cRfmft0f4Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzbhSUudCSGB1dzOE3d4sBnr97G/KWRyYqw/LaU6YW2wTNgj1XU
	NuMHSyvwI7q2D038Qfd4in1zXb75/Q4LqmO19pokySezuSa47Y9nnCM+TeqeBvy4Pjw=
X-Gm-Gg: AeBDiesG6RfGR+scEz0UFMWNe/OQJ2JL/Rz9YtuRoVLgEinR/O6y/wd0lQF+vNbZF4f
	Wp77ZA4Zm3o2FuhRlE9v1RwVmLqcEYpLlGXo7j/jjtAOxNEDLQ72Dn3zHeVBNMSkF0zxWGEonjZ
	n6GD6i2g0Rbk0igvWoc439IaJItgV/Rv18LTsSf3SXdMjtH4pBPDQjV7mXm1CRKqtXB3YYCB47N
	LeUQB89dxe+0fHDr6GYGs/xce2NOlhULcBXlFiTyWI0/zthggEBAwy07HayT/TIiuQVusXxpo5B
	CxDQ1Th9o5G+XV+VsRTVv6ri9L61OJSvs6uYSSlJ8U79XdJxpOwYGhysp2yFijFVfuDsG4znwMH
	LVBbfqfVU2paQDxBYQBgyasczDThH9RHJhcRSeLCdv+JbB6bXfY/IqJeETq0QwOXqeOGrF+0lQG
	QVm2uMJLwPx71fGe/BfJAj16tAResqxK/4jBnHxHcYGtF64IkHdrDv5UebsuyMwZNpRIv8jj6+E
	A==
X-Received: by 2002:a05:6a20:3d0d:b0:398:9379:d04d with SMTP id adf61e73a8af0-3aab15856aamr839648637.24.1778203527464;
        Thu, 07 May 2026 18:25:27 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c826771a8a1sm80055a12.24.2026.05.07.18.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:27 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 4/4] schedulers,builders: add push_containers property
Date: Thu,  7 May 2026 18:25:12 -0700
Message-ID: <9ed602f7dfbc72d96966167a1114dd23aa8b3ca6.1778202070.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202070.git.tim.orling@konsulko.com>
References: <cover.1778202070.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:25:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66500

From: Tim Orling <tim.orling@konsulko.com>

Add a Boolean property to gate whether we push built containers.

Both schedulers and builders need to be aware of the property: the
scheduler propagates it on triggered builds, and the builder needs
to consume it so per-step push behaviour is controlled by the same
flag.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 builders.py   | 2 ++
 schedulers.py | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/builders.py b/builders.py
index 721adc5..6bbf134 100644
--- a/builders.py
+++ b/builders.py
@@ -47,6 +47,7 @@ def ensure_props_set(props):
         "is_release": props.getProperty("is_release", False),
         "buildappsrcrev": props.getProperty("buildappsrcrev", ""),
         "deploy_artefacts": props.getProperty("deploy_artefacts", False),
+        "push_containers": props.getProperty("push_containers", False),
         "publish_destination": props.getProperty("publish_destination", "")
     }
 
@@ -379,6 +380,7 @@ def create_parent_builder_factory(buildername, waitname):
             "build_type": util.Property("build_type"),
             "buildappsrcrev": "",
             "deploy_artefacts": util.Property("deploy_artefacts"),
+            "push_containers": util.Property("push_containers"),
             "publish_destination": util.Property("publish_destination"),
             "yocto_number": util.Property("yocto_number"),
             "milestone_number": util.Property("milestone_number"),
diff --git a/schedulers.py b/schedulers.py
index 67fdd39..62d94d7 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -484,6 +484,11 @@ def props_for_builder(builder):
         label="Do we want to deploy artefacts?",
         default=False
     ))
+    props.append(util.BooleanParameter(
+        name="push_containers",
+        label="Do we want to push built containers?",
+        default=False
+    ))
     props = props + repos_for_builder(builder)
     worker_list = config.builder_to_workers.get(builder, config.builder_to_workers['default'])
     props.append(util.ChoiceStringParameter(name="worker",
@@ -595,6 +600,10 @@ def parent_scheduler(target):
         util.BooleanParameter(
             name="deploy_artefacts",
             label="Do we want to save build output? ",
+            default=False),
+        util.BooleanParameter(
+            name="push_containers",
+            label="Do we want to push built containers? ",
             default=False)
     ]+repos_for_builder(target))
 
-- 
2.43.0


