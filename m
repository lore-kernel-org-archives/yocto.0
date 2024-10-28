Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 777F8D33993
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 14:38:51 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.53448.1730126322424028113
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Oct 2024 07:38:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Jup9c/ff;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d49a7207cso3148266f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 07:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1730126320; x=1730731120; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pb1bDi2MuDI1PA6rwwLZb30F5sPGytrvbwwPIXVqasU=;
        b=Jup9c/ffsuUiIIhV9a9dJ4+/8P4aAaDauOO9eO7b2VRxGJpoPkklv5aNO6KSckWNPz
         C2aVBPNz+ldSwLyKgh6Rr8ccyDgPgqz7RSDJLTkXw6vR/vZ1nVa9Ixp07JFvHYPSRC6M
         jfYoSQqo+N1lgXcA9SW5ZfBRgysd51QuzLng0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730126320; x=1730731120;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pb1bDi2MuDI1PA6rwwLZb30F5sPGytrvbwwPIXVqasU=;
        b=PalNTP/LXpqAVh50RwTpILIu30NxHmsc5/b3HEGGTwiTqrA1XRruOg3c4V0trrv52o
         EgoKMv8+L2kMgPZcRZRvoBqeLA7tfdfVsW7pD4FPIhy9kb4T/Da2YaUZ3uoZbA5GoIq4
         TsMNWLOpp6cLYdsDPYMhdkh80fysCuGu+9GnUCBe2btepyw3XLzp+aD1jBIkW0o0c5MX
         d6h+xGwHfj83A96nOMMeIHjGbB9XTCPYGZ/PPEH8o6HI+cgrcNHJC6Br17acJ6EM9vEy
         SQVtDPM7pfWTlHy+CfI2KI2E5sYkj8xSsqOJtmo2xYkFHO4roFIZC3DHekfRFx4dQleE
         O4sw==
X-Gm-Message-State: AOJu0YwH8+ryp6CWY8ggyOR3sWsQQlNwA8RUAOxCDwH+Sb9XsBaCs6G2
	Uzr8NTw2MkldV7IEX9P7YAJtcIQm9yHoBSZCMdvxIVkKcyoGmKSbvBlclm+xq1utm23INBLshdX
	CPs8=
X-Google-Smtp-Source: AGHT+IFFlgDObonNRwygHfSwmlfSb9FwPSbR8lgmxQLE/QKytH3IASU3kePXJfsgrFAE4f2YMRDdGQ==
X-Received: by 2002:a05:6000:c89:b0:37d:38a1:6470 with SMTP id ffacd0b85a97d-380611dc25bmr6591321f8f.46.1730126320595;
        Mon, 28 Oct 2024 07:38:40 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:509d:a248:a274:a307])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058bb4348sm9599067f8f.111.2024.10.28.07.38.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 07:38:40 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] schedulers: Fix styhead for meta-ti
Date: Mon, 28 Oct 2024 14:38:39 +0000
Message-ID: <20241028143839.125696-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 14:38:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64157

meta-ti will never have a styhead branch. Have the scheduler point to a valid branch.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 schedulers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index c678c1d1..b9847c06 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -79,7 +79,7 @@ branchdefaults = {
         'branch_meta-mingw': 'styhead',
         'branch_meta-openembedded': 'styhead',
         'branch_meta-security': 'styhead',
-        'branch_meta-ti': 'styhead',
+        'branch_meta-ti': 'master',
         'branch_meta-virtualization': 'styhead',
         'branch_oecore': 'styhead',
     },

