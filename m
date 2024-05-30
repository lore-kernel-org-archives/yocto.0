Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98893C25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 07:46:04 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.3038.1717055160382834213
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 00:46:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HOvmJMvW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42101a2ac2cso6629185e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 00:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1717055158; x=1717659958; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AKxfK5ucWkHvaWjgXXpAVsvVGCbCsZa2Ep+0/ovIvMs=;
        b=HOvmJMvWQNWOd/1eeruDFG+H+ewNp/EhfAqsHTL/f28YzS9rxlguKc0effufdFats+
         nMlHrucvpFT+goPwfGwhCVrPq4LCJY/nkzsoE7KGZvywvtQ/jAQyasW9U0Yxyh+I62+q
         QRZRb1XWBCMxRwNE1T91b6VHdBgRdK+TrAha0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717055158; x=1717659958;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKxfK5ucWkHvaWjgXXpAVsvVGCbCsZa2Ep+0/ovIvMs=;
        b=EvMdy42eJbrQCfpSwvirEWufs/zEV05UhA9bLPP8e/g9r5y775jaTydgY+5nAEN95+
         y3+dwtHcdynfRbaFxNuMo/9jdRefpBOc2ChuOZdKj45JEqtA2uazmpCrEwWLV0IkDMvP
         b9qC2dutYEBB1+gMpU0fOFCDzN4mwYxYSgkDfj0Vue7kuCIp0CzgcXBTc4A5bb3sxZa2
         k8jRGJ6arFp6GKAZ6JHKQnzPYkHbtkzLT9TDlTF8jDheRsCpUd9Ps01o0RVT/MXKc0QI
         3wS5lg4/voIBkpYjFMYcN2bDcr4ptCdsPdO5i+ClxZ9WUIP39uYafydpdwbDh3XTXIY0
         oWeg==
X-Gm-Message-State: AOJu0YzuU0g4gWZn5lnr6BUTV823onvjn3lPtXZIbbCjnacHOyEQDGyD
	lDWhYZfvkTUFLT2QJy81d+b4c3e8lF8wUAHsrkXUwUxv3EGyRvwbotbEY7tDtlNnJnnCd6DeVLd
	y
X-Google-Smtp-Source: AGHT+IFVinR486eMlwW5YjjI9rwFcG01ixOmKf7JuzeQQiwhvSaDjiQAfVcKLThk6Ku+4LvtuTUL5w==
X-Received: by 2002:a05:600c:1547:b0:41f:e7e6:7f4d with SMTP id 5b1f17b1804b1-42127924db8mr12385685e9.27.1717055158463;
        Thu, 30 May 2024 00:45:58 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e2db:3695:26f3:1f11])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42127059a50sm16553965e9.1.2024.05.30.00.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 00:45:58 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] qemu: Disable incompatible-pointer-types warning as error on mingw
Date: Thu, 30 May 2024 08:45:57 +0100
Message-Id: <20240530074557.3051062-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 07:46:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63238

GCC-14 promoted this warning into error by default but code does not
build cleanly and now this warning becomes a hard error. Work around
it for now.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-devtools/qemu/qemu_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/qemu/qemu_%.bbappend

diff --git a/recipes-devtools/qemu/qemu_%.bbappend b/recipes-devtools/qemu/qemu_%.bbappend
new file mode 100644
index 0000000..12c9247
--- /dev/null
+++ b/recipes-devtools/qemu/qemu_%.bbappend
@@ -0,0 +1 @@
+CFLAGS:append:mingw32 = " -Wno-error=incompatible-pointer-types"

