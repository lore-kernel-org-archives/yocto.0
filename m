Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD36C54788
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 01:22:23 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web11.3351.1708564940009486206
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 17:22:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JbkJld7u;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: haokexin@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6e459b39e2cso298130b3a.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 17:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708564939; x=1709169739; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZlT4uf+CgJOtAWVlpNx1zwR+m3s1jJShQeHhgo8BmM=;
        b=JbkJld7u2/xwnJe5HpR1QtczmD24/V+rPBbEHtXxGdLD5jZQTFvEaTpsGxUxQqFX5g
         jyFIQNyiVud9HlnJHzaFMUfqYMA4LSnHpi/LoAIebHfa935wqX7rCevr418GP8Gwk0Ml
         +Nxt5QNhrUoQrOFAElj7xGPzW30qtglwSR42BMyDIfqS1M6oofQ+xTOBWfHCNJRw0Gzu
         9vJ1hXDjmVpPjyymL/7uJJPvVWwwT0FznnbtIz/5OkD7GFbY5IObj1/ew2W/IkxMe7lk
         mo6A0nXqofiloh52H24CnCeFG0OOmuE5xh7rpirubVyW6JSJ7eN7neyG9RTWCgzdKide
         xULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708564939; x=1709169739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZlT4uf+CgJOtAWVlpNx1zwR+m3s1jJShQeHhgo8BmM=;
        b=Y+sAvyEGEyQUz0h51y8vYMXUhijMXYhLl2oA2bderTehlnP0dkA6o+ffjC7tWd1uoM
         h02q0gWpNpS6OU2KaYBhf5JC6OCQFYkemSbDIC8w7ugv7VHgUC4mtvC701Hc3AnUleWD
         yCplx3aXEF2l8yMgHn96VSW01XgpFtRygTW9GRUu+jPpXDGzGgfQiOaBvn8Ehu6wYqHZ
         SkZ1ChnzwqI+4+xoBhT7ItiTLJCdE4MgfPXP15r89hchkjTztbZDvzKBsjLdgo3sO60e
         5blTe8kUvgM0Iy9SMNbjF1vMXZ02xDUQHZd6G5hZzeCbnpHyuJ32ve+5SMTtmuFz0g5m
         UtaA==
X-Gm-Message-State: AOJu0YzV55CjqbISmfflkYM04h951y+wH5A40EyOCcCegeLQ9aISb2Uf
	molTqY3dY8HQ2SvpmX+g4a+XWeR04w1mbhlOfpL6yDQNBsC8TAZ2lyU/7XqO
X-Google-Smtp-Source: AGHT+IEs11/ASrMwkjoHlFHsIQt7Svbt4byM+IZZ0pyk6VQEtrSUWiYzGhxubo4YocapWnInPpEVuw==
X-Received: by 2002:a05:6a21:3101:b0:1a0:d25b:aa93 with SMTP id yz1-20020a056a21310100b001a0d25baa93mr975634pzb.20.1708564938921;
        Wed, 21 Feb 2024 17:22:18 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id x7-20020a056a000bc700b006e4883591e7sm2975948pfu.144.2024.02.21.17.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 17:22:18 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>,
	Paul Gortmaker <Paul.Gortmaker@windriver.com>
Subject: [meta-security][PATCH 3/3] dm-verity: Set the IMAGE_FSTYPES correctly when dm-verity is enabled
Date: Thu, 22 Feb 2024 09:21:54 +0800
Message-Id: <20240222012154.386022-4-haokexin@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240222012154.386022-1-haokexin@gmail.com>
References: <20240222012154.386022-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 01:22:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62563

From: Kevin Hao <kexin.hao@windriver.com>

After the using inherit_defer for the image classes in oe-core commit
451363438d38 ("classes/recipes: Switch to use inherit_defer"),
the using of anonymous python function in dm-verity-img.bbclass to
set the IMAGE_FSTYPES doesn't work anymore. The reason is that
image.bbclass also use anonymous python function to add the do_image_xxx
task for the corresponding filesystem type. The anonymous function in
dm-verity-img.bbclass is evaluated much later than the one in
image.bbclass. Then the task such as do_image_vhash will not be added
as we expect. So we choose to use "+=" to set the IMAGE_FSTYPES.

The populate_sdk_ext.bbclass may generate a dependency list like below:
  core-image-minimal.do_sdk_depends -> lib32-core-image-minimal.do_image_vhash

So we also need to make sure the do_image_vhash task for the multilib
filesystem is added.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 classes/dm-verity-img.bbclass | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 62c3069b63e6..7f79548353b0 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -177,6 +177,24 @@ CONVERSION_CMD:verity = "verity_setup ${type}"
 CONVERSION_DEPENDS_verity = "cryptsetup-native"
 IMAGE_CMD:vhash = "verity_hash"
 
+def get_verity_fstypes(d):
+    verity_image = d.getVar('DM_VERITY_IMAGE')
+    verity_type = d.getVar('DM_VERITY_IMAGE_TYPE')
+    verity_hash = d.getVar('DM_VERITY_SEPARATE_HASH')
+    pn = d.getVar('PN')
+
+    fstypes = ""
+    if not pn.endswith(verity_image):
+        return fstypes # This doesn't concern this image
+
+    fstypes = verity_type + ".verity"
+    if verity_hash == "1":
+        fstypes += " vhash"
+
+    return fstypes
+
+IMAGE_FSTYPES += "${@get_verity_fstypes(d)}"
+
 python __anonymous() {
     verity_image = d.getVar('DM_VERITY_IMAGE')
     verity_type = d.getVar('DM_VERITY_IMAGE_TYPE')
@@ -188,16 +206,12 @@ python __anonymous() {
         bb.warn('dm-verity-img class inherited but not used')
         return
 
-    if verity_image != pn:
+    if not pn.endswith(verity_image):
         return # This doesn't concern this image
 
     if len(verity_type.split()) != 1:
         bb.fatal('DM_VERITY_IMAGE_TYPE must contain exactly one type')
 
-    d.appendVar('IMAGE_FSTYPES', ' %s.verity' % verity_type)
-    if verity_hash == "1":
-        d.appendVar('IMAGE_FSTYPES', ' vhash')
-
     # If we're using wic: we'll have to use partition images and not the rootfs
     # source plugin so add the appropriate dependency.
     if 'wic' in image_fstypes:
-- 
2.40.1


