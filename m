Return-Path: <dawiddabrowski@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79314C4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 22:58:27 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
 by mx.groups.io with SMTP id smtpd.web10.10614.1702421899690621273
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 14:58:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20230601 header.b=g6bLeTA2;
 spf=pass (domain: flex--dawiddabrowski.bounces.google.com, ip: 209.85.219.202, mailfrom: 3iuv4zq4kbwsmjfrmmjkaxfbtrpxxpun.lxvhxlcxurbcb.hxlcxyaxsnlc.xap@flex--dawiddabrowski.bounces.google.com)
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-db53919e062so7061393276.0
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 14:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1702421899; x=1703026699; darn=lists.yoctoproject.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aCpryBPmNzPElH+jZ2rR7gE8oVNiK+DJn6vPNomSQeI=;
        b=g6bLeTA27aF7Mk9TDQKzFc9u2wNgG5w53MxrgpGvqTl/pUbUamylCLIUM7cGa02LcV
         CbFjUD6W3jGkOvHuF/YjbpD8RVN/6ohpeyS/FlaCK1bZb1J5+O+kLG4N41ZMjxmML7Ma
         lJehGMJ+GWlG30KfhPsEuXvD/Qx2xdm2zh8zC5Gl/EBTuvMLlEq5vr9cSAbg4iTQCeb6
         u9nkuoeL79fylwc9Z09xXjfNkM0IJG3gZACbTddj8NPa67ngaE3+VhRTPujDPrCPkVZC
         nPu56dsM/RpUe8jPtcu4vdhFQtZu05MrmpamsK4rN8nBkIG9Xq7W4fpnwlWhDWXQV62m
         9h3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702421899; x=1703026699;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aCpryBPmNzPElH+jZ2rR7gE8oVNiK+DJn6vPNomSQeI=;
        b=ChNUKRhhW/wDf3L0LMZ2n/MN7yBHDwTRpq/l/Bwf/NK8iooQ02HzC8Xt8xTPmtXAVq
         SeKLyRjja5lHrsZLQ0MxqEy+UE4KwRqO7izb57ADKdRm4O8z8nitueQ9rZXL8wdO8jHQ
         yc8lc8WmV0t41bmULX2NN23gBuuVTodwf/dJjjKjDd+AhMOP7OORJ67zNEXtvskiPi1d
         dGGAhHb/uHulbfhYxgNXz/Bs2rhhurAJYR16IolWRmWK8016M6EbHv6zviXnnWCW8P90
         vWeSvA6XLA4WgrRMb959pxwxUtJFYGsSsN4z0jGThelVZ3g+5n87JY99GuSgaFdb12x8
         fm2Q==
X-Gm-Message-State: AOJu0Yz6dMLUyUAfnYHnXLFUdV3PkhD33SD52qFJdqCF9FkKtrUr7Jct
	1s53laRK2mpLfP6o17eGXyqFuePiiK0RrfJ0XNlRy0Fj0i5pQGb178DEJzas7dgskCMq9Hei3Fd
	ifSD5z3rjc9fDFzutUP4nHiuCwmBjYvQZPr9CFRWhj7Ahsw5nkQJhQqQ5kaQE6ZLMFGPR4zv7jU
	Iuz2i4De1u/iQmo/E=
X-Google-Smtp-Source: AGHT+IGZo1RlBK8gBQRsNzBPm0lQqSr8IHcmNwXASB3m4lk8hTIs4iDaygG0L+T3pV6ixw2NzEqE4EIsRI6dxyWEen88mw==
X-Received: from dawiddabrowski2.svl.corp.google.com ([2620:15c:2a3:200:97de:165:42db:8b6])
 (user=dawiddabrowski job=sendgmr) by 2002:a05:6902:343:b0:db5:f536:17d4 with
 SMTP id e3-20020a056902034300b00db5f53617d4mr45925ybs.11.1702421898752; Tue,
 12 Dec 2023 14:58:18 -0800 (PST)
Date: Tue, 12 Dec 2023 14:58:16 -0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
Message-ID: <20231212225816.3051957-1-dawiddabrowski@google.com>
Subject: [meta-security][PATCH] libhoth recipe update
From: dawiddabrowski@google.com
To: yocto@lists.yoctoproject.org
Cc: devjitg@google.com, dawiddabrowski@google.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 22:58:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61869

From: Dawid Dabrowski <dawiddabrowski@google.com>

Changelog:
    Dawid Dabrowski
        Add support for payload update protocol for generic Titan images.
    Nick Nooney
        Add BUILD rules to support using libhoth with external tools.
    Yoan Andreev
        Add spi passthrough enable and disable commands.
	Add arm_coordinated_reset.
---
 meta-tpm/recipes-tpm1/hoth/libhoth_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
index 5c7305c..7ba64f5 100644
--- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
+++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
@@ -7,7 +7,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
 SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
-SRCREV = "0e3eec6937d35c602ce497444eda05f3c465b5a8"
+SRCREV = "e520f8fa637589324ec56d34f26a48a8162a250c"
 
 DEPENDS += "libusb1"
 
-- 
2.43.0.472.g3155946c3a-goog


