Return-Path: <yushis@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36DBDC47DAF
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 00:38:51 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
 by mx.groups.io with SMTP id smtpd.web11.9.1705538324115576428
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 16:38:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20230601 header.b=UE8XsK9M;
 spf=pass (domain: flex--yushis.bounces.google.com, ip: 209.85.128.202, mailfrom: 3e3oozqykbc4iec12c08805y.w86i8wd852cdc.i8wd89b83ywd.8b0@flex--yushis.bounces.google.com)
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-5ff7cf2fd21so2635117b3.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 16:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705538323; x=1706143123; darn=lists.yoctoproject.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=899OmpBMOZCat3soCwqsILWr4FSld2y2Vc5HfigTMA4=;
        b=UE8XsK9MRG+J3SRmCAV6DbRMx0YIZxCUnDWiueaDE24Y5zJGYMf+tVFYiiXIeUiubZ
         hJujZ61ZRB4Y80PJZeTLo70ku8b3lGxjhCT3knT6yObm2ganXaTvytGgEA8GG66T/v3k
         XZ6LJlTf1GywydmIpRt0bwgCSryqodtqgAmVhH3KIRMhZJjZ9Bg2sX4GLHR4IBWmR60i
         0RSod6pkaA75VKOYhf9zRh0Vok2XNhwwnPbTZaxyWimgh71syrhYSBSlRpl8aJxa11Gl
         e3t30HWjxW8VIN7TW0e0HOyWGxkMaFu40zIT2w4VBdIf7pgAkeHnHo9P6Xm8yTMHEUjf
         I3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705538323; x=1706143123;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=899OmpBMOZCat3soCwqsILWr4FSld2y2Vc5HfigTMA4=;
        b=wB4x0fQcffzo4DtamVjjUwxt5eUE9cb3G5sf21ot7ta1W8/FyDi/Mrahd89xjnYlmZ
         NFnqtgLPVbmKJD9i5dj9NntiAvuINgZ7Qi/F4VBz6CW3IIffhFRmqswpXxrtwb9Pzqb+
         g1DYzJg5tIy2DSFPtURKbFn9rHNrAMNXIw3cWGygEvZxE9yL6G++gaOkQyRRaOE6wEmx
         R0Q1YHbKg9/GNr+UBU+hGmWQwJKbxIcH6Gr3LhSDhS5RuNCnjBYInKXapgKH9bednDoX
         R162rclORbleIV2n2e8Wxh0zx5s/FEB6u7TH111aNUtvd2nptNWQlt/3jL2MRvWBFUCA
         Xuiw==
X-Gm-Message-State: AOJu0YzkE83xjUpnZnh1syRoRwg9/6g4ITbZaPMYWuyOn1wpFF86kBiD
	gUVXjV3u+IgXeJkbA8nShj5PzBbWf6lMfOAuwg4LK3r4h95WlhSyaRPQAmXV7IhW3w0eoqKsgei
	BYFGdyBDx84kG7YT4hEl/ks0YVNuIsMFD6vghLJFS4itAv+/Y9a8DC0AxlS0R8/E0+kT13Vkqfa
	JeCkunw07J5iz20mIFhEMIvZBSL9ZVRmcJdmRQqHP+
X-Google-Smtp-Source: AGHT+IEteTZxcn313/h/xfYp9X3ifIrDiZHLZ8yea1GxJ34SLg67Dkst8zcHLIsmfe2i77aFa/msNSB93E4=
X-Received: from suntop.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:1f3d])
 (user=yushis job=sendgmr) by 2002:a81:4c86:0:b0:5fc:7f94:da64 with SMTP id
 z128-20020a814c86000000b005fc7f94da64mr59361ywa.5.1705538323205; Wed, 17 Jan
 2024 16:38:43 -0800 (PST)
Date: Wed, 17 Jan 2024 16:36:47 -0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.381.gb435a96ce8-goog
Message-ID: <20240118003648.2510176-1-yushis@google.com>
Subject: [PATCH] meta-security: libhoth: SRCREV bump e520f8f...e482716
From: Yushi Sun <yushis@google.com>
To: yocto@lists.yoctoproject.org
Cc: Yushi Sun <yushis@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 00:38:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62182

Nicholas Nooney (1):
      Update error messages in htool_exec_hostcmd (#43)

Royce (1):
      Add ability to process raw host commands (#41)

Yoan Andreev (1):
      Payload getstatus (#40)

daimeng (1):
      htool: Allow console snapshot on proxy channels (#42)

Signed-off-by: Yushi Sun <yushis@google.com>
---
 meta-security/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-security/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
index 7ba64f5af1..df1dc04a72 100644
--- a/meta-security/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
+++ b/meta-security/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
@@ -7,7 +7,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
 SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
-SRCREV = "e520f8fa637589324ec56d34f26a48a8162a250c"
+SRCREV = "e4827163741e0804f12ac96c81b8e97649be6795"
 
 DEPENDS += "libusb1"
 
-- 
2.43.0.381.gb435a96ce8-goog


