Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEE31C48BEB
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 01:22:23 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.3376.1708564935559768208
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 17:22:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JVNQEeZt;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: haokexin@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6da4a923b1bso6192958b3a.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 17:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708564934; x=1709169734; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bvm31HHsRRAi0EQPS9H7MPda4iCAVKkxSckSvSgtT0k=;
        b=JVNQEeZtemsZW43i+8b6bnJ1GyYKi/AQygFO5c+HDH/Ow7WjKV+fqgGynv7D/4tcGZ
         yrY5y7A9981TY9YplBhkXe+/dE/yw2v2qK7F8bs8G/QNnZ9Dr57/vL7hgK9YVF3cdxa+
         o5xUO2d/qfB/b3I7vp9ru6/1tlPCM/7dypWPL7/XBu6wgbe2KJEzNrjc3xLv/7TDoDP3
         C95+Z0DmWQlEOlkDae7WlonWu7FTZH3rvKh8LXfTnspSWdBMFdPR8W6eD9JJWtjW6h7b
         acgZwNLSfIerrlkn08SGDYAzEgZMozcX5COTt8Bz0i+sZ12zYaVxchEBvTfW19eg/FDZ
         ZKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708564934; x=1709169734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvm31HHsRRAi0EQPS9H7MPda4iCAVKkxSckSvSgtT0k=;
        b=qRh38Jn1UVn+p0x5+MaBNl6q68wprhM9lwC2T26FsWnxtTRZ8sYAUJ4+jaCfZBLfXW
         ywl6vO0QETt8pGnb3B7seE+d8xxCRBJ58HlWxs7X7/yd0AgtqCpf3WuAShQH/Ie18Dft
         KxiPZiV9s58nvG5NN8zpISAhnwc3pYvTM2+ddJOjc62GjeTiYRW3ygLZ9OYex/NgvNOf
         xAGioTC8CA1cDGr8SF4uxjfS5LD01xObuSVD76x2oEU7ISYQLV/S46NY047uGXHPSBVy
         4v2Uxv2GB5QqVxqFlG+VfK1lEs1Zox0WKo8pL6vDnBUAqsWt+lpGDKR8tNsD6tZF6E7J
         KV/w==
X-Gm-Message-State: AOJu0YzihhzU2AH17Uz03FRIEqz/I6c6fVRFzGWClw0Z6z1sgg8NJeIw
	FocxRLl8dAUhWu0BUQGsOqKBFoeOWev7o5Ajq6RTmyWk12cc3pXEWIMZL3t3
X-Google-Smtp-Source: AGHT+IFhKyvWAJQC6qmFg81etK4kX3AgVO7wQODRTBRQmiAwLZgyAS2pvSv7qbYUJnqqJ4U8gqg33g==
X-Received: by 2002:a05:6a00:179c:b0:6e4:902e:128b with SMTP id s28-20020a056a00179c00b006e4902e128bmr3551101pfg.31.1708564934336;
        Wed, 21 Feb 2024 17:22:14 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id x7-20020a056a000bc700b006e4883591e7sm2975948pfu.144.2024.02.21.17.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 17:22:13 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>,
	Paul Gortmaker <Paul.Gortmaker@windriver.com>
Subject: [meta-security][PATCH 1/3] docs: dm-verity.txt: Fix a typo
Date: Thu, 22 Feb 2024 09:21:52 +0800
Message-Id: <20240222012154.386022-2-haokexin@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240222012154.386022-1-haokexin@gmail.com>
References: <20240222012154.386022-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 01:22:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62561

From: Kevin Hao <kexin.hao@windriver.com>

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 docs/dm-verity.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docs/dm-verity.txt b/docs/dm-verity.txt
index c2dce739790d..a538fa20bafe 100644
--- a/docs/dm-verity.txt
+++ b/docs/dm-verity.txt
@@ -3,7 +3,7 @@ dm-verity and Yocto/OE
 The dm-verity feature provides a level of data integrity and resistance to
 data tampering.  It does this by creating a hash for each data block of
 the underlying device as the base of a hash tree.  There are many
-documents out there to further explain the implementaion, such as the
+documents out there to further explain the implementation, such as the
 in-kernel one itself:
 
 https://docs.kernel.org/admin-guide/device-mapper/verity.html
-- 
2.40.1


