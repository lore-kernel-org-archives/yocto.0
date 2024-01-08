Return-Path: <antonio.oliveira@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD4BCC47079
	for <webhook@archiver.kernel.org>; Mon,  8 Jan 2024 15:58:47 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.357.1704729524157466682
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jan 2024 07:58:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=CAFS4Mhk;
 spf=pass (domain: konsulko.com, ip: 209.85.221.46, mailfrom: antonio.oliveira@konsulko.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33677fb38a3so2182392f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 07:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1704729522; x=1705334322; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxAsUD7k/Bv1y0ZO7hkbaCew55gfWP5s2pEi0jBJg3s=;
        b=CAFS4MhkQ66cHym+ZjF36kioYwMzMXJELTzTNwUoNqykQ4tWiu0U2xuZjN9xKrO3FF
         TYBhRhqXuOzTm8cqggb3YulFzTUBY+SXX/ALDotK+zNtNC+5Ml4S4EN24Fl2gtM8ql7h
         PyhbUgIGBW1H4QjvbyQw/gnmdu0rDqk+9ulcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704729522; x=1705334322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PxAsUD7k/Bv1y0ZO7hkbaCew55gfWP5s2pEi0jBJg3s=;
        b=NOTHE0ZRNTRAUrEc8D1RovARjzHD12Rs+8SnQDy82ayXNVW/0YCFiD0kFpq8V/0rSv
         RbRk46kGTa5cZ1aahcPRrMWSrlO5Y5tlWRTGVvh5fabxR7PIIFG6u9D42mTGphg/JOdT
         33iKeBXyDt8tKsGIfiv+GwnfshE1xdRvMhf8zJFcHto8ABvH9obtXhnI5TpIgK4sTvop
         UpOZQ3igEi1Ggsuja4Y0uIoD0tPctUbEgEd6RjKSKE77beXDiIlt1eGVv2BnzdqZ5BH5
         KvAFda23EkimqdOuvMJzAlQrs0dwR4ftoVqOjRfI5v0K+0QCLGs/BG5ll7ZSlpj7vvaK
         DSdg==
X-Gm-Message-State: AOJu0YwfUB6FEuJmsry+Wodhsc41FUhJQ7iGGd0kMcyzYidWt3RYBMHp
	mkR5fys4GVHJYpMaX6nehQifAfKbzvDB8ZhVybXCPQ0T30s=
X-Google-Smtp-Source: AGHT+IFod8xLG4+4j6VslEdP18l2UeBJ22pAcLJgXIxXElnUztfVUUgd/oPdqFRV29LU1Ak8OK6eIw==
X-Received: by 2002:adf:f807:0:b0:336:5dfb:201f with SMTP id s7-20020adff807000000b003365dfb201fmr1726320wrp.34.1704729522428;
        Mon, 08 Jan 2024 07:58:42 -0800 (PST)
Received: from acme-iron-carrot.home ([2a01:14:112:2860:d63:ebd1:2caf:4862])
        by smtp.gmail.com with ESMTPSA id u3-20020a5d4343000000b003376d4248a9sm1930710wrr.71.2024.01.08.07.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 07:58:41 -0800 (PST)
From: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio@amsobr.com>,
	=?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
Subject: [RFC PATCH v2 1/3] initial commit: license, readme, conf
Date: Mon,  8 Jan 2024 15:58:36 +0000
Message-Id: <5043a09459ed7e6de80ed2039740ccf8d7c5eadf.1704728801.git.antonio.oliveira@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1704728801.git.antonio.oliveira@konsulko.com>
References: <cover.1704728801.git.antonio.oliveira@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 15:58:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62103

From: António Oliveira <antonio@amsobr.com>

Signed-off-by: António Oliveira <antonio.oliveira@konsulko.com>
---
 COPYING.MIT     | 17 +++++++++++++++++
 README          | 22 ++++++++++++++++++++++
 conf/layer.conf | 15 +++++++++++++++
 3 files changed, 54 insertions(+)
 create mode 100644 COPYING.MIT
 create mode 100644 README
 create mode 100644 conf/layer.conf

diff --git a/COPYING.MIT b/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy 
+of this software and associated documentation files (the "Software"), to deal 
+in the Software without restriction, including without limitation the rights 
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+copies of the Software, and to permit persons to whom the Software is 
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in 
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+THE SOFTWARE.
diff --git a/README b/README
new file mode 100644
index 0000000..57433de
--- /dev/null
+++ b/README
@@ -0,0 +1,22 @@
+"Mixin" layer for adding latest nodejs-18.x into the Yocto Project LTS.
+
+At the time Kirkstone was released in May 2022, nodejs v16 was the latest
+version and officially it's the only nodejs version supported by Kirkstone.
+Kirkstone will be supported until April 2026 but nodejs-16 is EOL as of October
+2023, making it unsuitable for projects during the lifetimg of Kirkstone.
+
+This mixin layer is meant to address this issue by backporting nodejs-18 and
+nodejs-20 versions from the mickledore and master branches of meta-openembedded,
+respectively.
+
+The actual versions of nodejs that are available can be found by inspecting the
+contents of recipes-devtools/nodejs.
+
+Including the layer automatically picks up the latest nodejs version; different
+versions must be set explicitly by adding the following line to your distro
+config or local.conf:
+
+NODE_VERSION = "20%"
+
+Maintainers:
+António Oliveira <antonio@amsobr.com>
diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..19a19b2
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,15 @@
+# We have a conf and classes directory, append to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "lts-nodejs-mixin"
+BBFILE_PATTERN_lts-nodejs-mixin := "^${LAYERDIR}/"
+BBFILE_PRIORITY_lts-nodejs-mixin = "6"
+
+LAYERSERIES_COMPAT_lts-nodejs-mixin = "kirkstone"
+
+LAYERDEPENDS_lts-nodejs-mixin = " \
+    core \
+"
-- 
2.34.1


