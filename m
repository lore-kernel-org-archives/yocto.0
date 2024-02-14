Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D322C48BC3
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 23:50:03 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.2635.1707954593594146771
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Feb 2024 15:49:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OMH/h0SU;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5dbd519bde6so267451a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 15:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707954593; x=1708559393; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=60B9I3/UkHANp/6fcbs6KQjB1ap9HxfvMHmktbSmv4g=;
        b=OMH/h0SUqUZkut0qhYGZQKcfnGjNX/ikaXmXNtPw/2Tj8Y3KKC8fWu0mdX+HFE9Ca1
         4lCzul0iCGE4VDCtMwAcjmJh1hBQroYM//7nD/Lt7FV8nJdwgMD4LgsYtROuPHQ0NYZ2
         +zmG6ZiDlywNKQ3R3VDIUoQgGr4qR+TIDo7dhqHsj/g0n648fvagyzavXeL1VXHsCopY
         4s5ODgTBpIvlqaw8No/+ZINRblLfhC6NDPZAPdHKK0w2uNN2r6TwJAMI5uWhMLxch4M7
         QDuPlIVlkWy55Buwgv/BFtfKct4gUrXJlXACneW4CJOfoc+6tDL7/U+qumJS5eBrbG+X
         3hlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707954593; x=1708559393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=60B9I3/UkHANp/6fcbs6KQjB1ap9HxfvMHmktbSmv4g=;
        b=POGn0Rn1lJj9P2EVi0Xdor030c/w0T5FC2yPRKv/Xq5v+Hmu3KoNBaAIlTuhS6lTwd
         Caj/umlaEQPeyUCXHRax2e62d0qtsLCgunozwu4GS1iwI9rcw2hfyZcinTqHbQx/fhab
         hL0U5+GhEDm3WH5gx1IkSuBYTpVSJmExByFKLwHFb2OLun9LV6e3PIPliAGPMNPhQ8he
         1usxxG6g+955l0lB4v9P1QmClh9H9nxbLUgHRh3oNVUrO4np9FwI3BBG6I70hiUxTU7R
         T2k7hecIc52RY0EjyMvojzpe5qubStz91UwjOsl+IpnzOGFekQoNnOyjTiF94qZWZdib
         0vQQ==
X-Gm-Message-State: AOJu0YxjvIz3vSdhivr0Y0ky7mgJ6z+HfS44iZw1wLlOvF0N2YQOlwoF
	VH5wxYfXgnKgOmZ1F4XiabAkzFjka7N3TS1n8gG8HW/kUADjPmWnyCjmIdzHDrc=
X-Google-Smtp-Source: AGHT+IHy1Z9ZM9xpgyeKtRkQvx7ks6bQG33pqKaOJ6fQl0S+F8IYF3tfZGoH35lDPw7deG8CKsb1vw==
X-Received: by 2002:a05:6a20:d04f:b0:19c:a2ef:c45e with SMTP id hv15-20020a056a20d04f00b0019ca2efc45emr364386pzb.37.1707954592480;
        Wed, 14 Feb 2024 15:49:52 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::b58c])
        by smtp.gmail.com with ESMTPSA id fb6-20020a056a002d8600b006e0515dc44dsm16547pfb.178.2024.02.14.15.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 15:49:52 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip] [PATCH] layer.conf: Update for the scarthgap release series
Date: Wed, 14 Feb 2024 15:49:47 -0800
Message-ID: <20240214234947.2221729-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 23:50:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62492

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 10bcce6..6238f33 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "nanbield"
+LAYERSERIES_COMPAT_rockchip = "nanbield scarthgap"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.43.2


