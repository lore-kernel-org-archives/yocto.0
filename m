Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C748CCFA18
	for <webhook@archiver.kernel.org>; Sat,  8 Nov 2025 19:58:10 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12814.1762631887262029021
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Nov 2025 11:58:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S2+Xw5e2;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47777000dadso2445195e9.1
        for <yocto@lists.yoctoproject.org>; Sat, 08 Nov 2025 11:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762631885; x=1763236685; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VyEXchpZcXqjMLpzovmozQetXAo4os/uZXiinxHc6y0=;
        b=S2+Xw5e2LyTQVYDrnKJIKa98yssqd/zYDYz5Xr0h0ffHcrbCW8bNvpIRGskkdcHQZp
         CCBakqKLa1q+BK1K/5ICdTl+PzhLkfq3TsLnGnkbhmdP+3GQ6Pejk1BJG/zyGlNHpLH1
         myUpA11TKQSaN1mbTj/miH2ndhSqrhvLy1MNQx0kSTVOhCJ/eXKGNa8yUa/3vYvH6ylb
         iIDzFF9T+fSHVdKCUzSVIKCvtgInfR+6jB83lkAHbFu35UUvlJqCxhpBCEqMMMaTR+Dt
         M+yBMyXM2lPcySQCUFIcTgawPhBqdA5sG4d/ER6jH6GA6d/1kY4EcBLAo4vkd26R7WvS
         t33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762631885; x=1763236685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyEXchpZcXqjMLpzovmozQetXAo4os/uZXiinxHc6y0=;
        b=FpB7okCkkFmkFNYDQ2C9r2jgapO1h3aI5m7gMVnAp9PzsRalBuA+Pz8wvkh3yqouq8
         xI3QpK6Xzi1lwenXPv3NW4sAlZ8JMv5ODGM7yNrPV6dMgtgP0Ey+xlUxjjoV+sZkm7eh
         ki8LAoUgqyf2dPE8pFNHQ3YdaNPvH/sA8zeZHDOgbVBWcMSIgLQ1Ye1xlKFRnZoAfDBd
         pXpQdOjYj7rWDmYs3HbuW5wnjTIjH6uqB7ZLAQ82zeeItmtSJWsN6Lq4d4YR4aTTmrIv
         uEJN1lo5FuGPrhJqp9HIjB/iUhyHLndLMDI7iMC9nUqV51ESz1/SjTfBgkzWCHFmOm/4
         KSDg==
X-Gm-Message-State: AOJu0YzhvVV1nT95bymJ+St6TTqP4rq6giCAORxGK2fDULUf7de/dqca
	qjLMxHL20a+qESCZZUD8iqv6nV3lTK6I7R6vpM3pjzbedc4+RnWo/u5Xezp/pJJM
X-Gm-Gg: ASbGncvNxzb/npcLjUvXnkZ1TCrFzOBOqAm8e64aVOviW1Cpq2g/mRfNHcJaP0E62G4
	3pT3dyPXQ+Q58HgEOnTtodQsRQqAlOrwDC5HBGIIFWmu0FetvD3qYJQSIHTwjBLQOXxLntMCqdd
	IINm3rRBK0Ip86eZpqXEvuYsIddNqbA5SZt5ebvB6TmlEKyQu4YUST9vwpWmP3QbCkLx0OGy1zC
	LLTvzS0eoDirvfFV7y7rZZeTTAJQs0uedqg38nZ4RlAbLSqFhHVjZSHqICFiu3G0JfCAI3Ry486
	y+E7OU+5fv8XjS1VAivj/omvSrh24U23IdkTEVRM18SkE8/u/N3WytDDXqo0JivJiCS7CA/UMu3
	IS6Jp3ACt9BEpxDO7MYs9uXqslf94xFZvnyJA7IUFicRg9UjQZyKpZ3QlGdcej22N3Ks036sPpR
	bfCoNd
X-Google-Smtp-Source: AGHT+IEif34akohwN4GZWYGVPTXaiZTbFCYW+iTCNMlf08Q8+CHOUnRdEuZot1Epg+jnsiwutvvaAA==
X-Received: by 2002:a05:600c:3b0c:b0:477:f1f:5c65 with SMTP id 5b1f17b1804b1-4777328334fmr26782495e9.23.1762631885424;
        Sat, 08 Nov 2025 11:58:05 -0800 (PST)
Received: from osama.. ([156.223.140.230])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42abe62b1e3sm13012758f8f.4.2025.11.08.11.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 11:58:05 -0800 (PST)
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Osama Abdelkader <osama.abdelkader@gmail.com>
Subject: [PATCH] poky: fix typo in README
Date: Sat,  8 Nov 2025 21:58:00 +0200
Message-ID: <20251108195800.12760-1-osama.abdelkader@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Nov 2025 19:58:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66014

ut meant -> it meant

Signed-off-by: Osama Abdelkader <osama.abdelkader@gmail.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 84f3937d1f..7cf111ed14 100644
--- a/README
+++ b/README
@@ -50,7 +50,7 @@ developing layers, we made the artificial "poky" repository construct
 as a way to let people easily and quickly get started with the project.
 without cloning and managing multiple repositories. Layers were a new
 idea with lots of rough edges. kas didn't exist, I think repo was only
-just created and it was a different world. For us, ut meant hacking up
+just created and it was a different world. For us, it meant hacking up
 a quick tool, "combo-layer" and it was really a temporary solution to
 fill a gap and it was at least as functional as repo of the era. It was
 assumed we'd work it out properly in the future.
-- 
2.43.0


