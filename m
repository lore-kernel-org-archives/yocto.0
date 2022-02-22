Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAF3C433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 15:20:32 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web10.13978.1645543231753603067
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=kdrcMMDU;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.174,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f174.google.com with SMTP id l19so12369126pfu.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=P8ejh+o/b2I9hV0mll9tISxi0+3IBTCIaNQkdsDaHco=;
        b=kdrcMMDUnN1DU+XSCpB0CoQ78wMH1zTknqPPayx54z8ltueG69u9XW8lFPwwW6CrLg
         vcGY4h44/yealRc/7D+iOxyfDUvZcNS7+fiFAVCvRckGe0Ooo1naS2OLgNUrvlLcmGbF
         5NogsIvYYfva5T/8Okg/rndZ1wUJiJ6M35dnS3jAKnsYJCu+hVi0cgjoih5a+a7pSH6A
         JALnUWPn99W3RJ22w8tTG8DzK1gp9dm6umBgwppmRxc37a1Dx03pXuWx2+zPyaKkcPxS
         j9N+h2uMVHNd6Hbfktw5KsT6YQzRBFm8EIyWUaiYH37ec8kKM/LnPUH0pQdggeTCBaqk
         Vrrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=P8ejh+o/b2I9hV0mll9tISxi0+3IBTCIaNQkdsDaHco=;
        b=TogalETEOn+huAcd/dNtvgFZX3fT4JB09QHZ20+AcAsRy1IPY5EwUMS1HMh13K8CxR
         LmYZ+nWDHOtOJOhoAtU3WO8iOUASltk/c5OPKAvllsxTfQHg3sc340XH1Vs+eU2Oeg7C
         rtTgALUgywhb5Scy7ez/494Q96x7IbYeVq4vSSpsPRi9UB4/CMGOOWZHgVJ6JHzt+D/H
         KEXjzJroXj9hFLH11oLQ/E8u4+u//yx+hQAU763zpgbMh6SWouP9dlgAWpCqvRfF1OfE
         aqEVkM5vXaPO9ZxXPebP9dduxw3mYZnSbg5nXIqKdJeNwa8gqAw0TAC3u1japzwetDfc
         afWw==
X-Gm-Message-State: AOAM532B2ofXQBwPEqbhic1efW9UhnklqkRt6eaBjoGe6jLqhgmoZI8P
	+8mXLVeOiMi8sSpw6SDXlHUk25d3QMioXIi7
X-Google-Smtp-Source: 
 ABdhPJy7Qp6PtD/obVHGvz+dyQyJ4A5s7ZcmpldSCLcmz8skPYd+kzTmz8X6UiDqs0TkayVOaGLDGQ==
X-Received: by 2002:a65:5347:0:b0:374:87b6:549b with SMTP id
 w7-20020a655347000000b0037487b6549bmr1898546pgr.537.1645543230694;
        Tue, 22 Feb 2022 07:20:30 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 i9sm3118160pjd.11.2022.02.22.07.20.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 07:20:30 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 2/3] prepare-shared-repos: Make it
 clear when rsync starts in logs
Date: Tue, 22 Feb 2022 05:20:13 -1000
Message-Id: 
 <03d4d5afcaec6ec4990329e6db2b81654c9d8495.1645543004.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1645543004.git.steve@sakoman.com>
References: <cover.1645543004.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 15:20:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56243

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 8e996a95a8902b40380dd477ecb606cc969cdee9)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/prepare-shared-repos | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 1573f85..c221e69 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,5 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuil
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
+    utils.printheader("Running rsync")
     subprocess.check_call("rsync -a " + tempdir + "/* " + args.sharedsrcdir, shell=True)
-- 
2.25.1


