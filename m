Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF87E94113
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:38 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web11.4024.1696622376420364330
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jm1QoMWy;
 spf=pass (domain: gmail.com, ip: 209.85.167.169, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3ae2896974bso1595173b6e.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622375; x=1697227175; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ARpLZoY7G6kjk0d6PN5ZkwSFj6+JUcxMc8vCi1seIs=;
        b=jm1QoMWyO3YLTOfKd4haCpovRMW/mQcWrdOpZm6pF3xIoE3bvk40vrGxS0h3CW2Upr
         yjQ32MmtjEamcFIXWztIUNwXg85CkzP4ok1uOimBTImc+p7d/bAQfR8UHX66lYbqHG9i
         YEeGLDuel//fk837ARoRH9+VIY7YL2M4PvrPqD73/b5fwpc9jl/Dmjlhx+asc9HuUhUL
         zmtxWPGUvw1Ahu2OAHLCXtB/st3bcm3w6vCq3hkUrbz1siYwdJ4yQWrs82Toc++t90da
         8f1rX7RUkgFTzNMiUez4VgUN52XXu6CZKAUdjr/wiwa7odSFWfoYpMbJtIo1Zrbgu3QQ
         /enw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622375; x=1697227175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ARpLZoY7G6kjk0d6PN5ZkwSFj6+JUcxMc8vCi1seIs=;
        b=VarsetoeZ3cbLjAjYZZJpeUe3d3Lr3xpR4psns8VoWJRuO8K+yzDhoMqphJhaSSiRk
         D5qduhchaWcK9q2bIoz5x5uu0dGVNwi9QKybB1Kq6P1DdEADqLLiw+Aai7HMbdPYY8XO
         YWaZ18cnEO5j+iq2tVAwY7QCIGPkQxFTTKhE0MW/YG2VnpkipuVm33ANZAUsdbbq+ol7
         6GRux+043fiNL/Sw41YBNijgLGWOFjGSZ5IrmXxB2KwrSv2MYj5pGf3cnlgln35QOnr3
         9IXWR6gWT5XfQcPxSnRPaad2I727EkFeiQ2b1x8kq5+1yAxdIcLh+J43CxONT2NDgeU3
         irVw==
X-Gm-Message-State: AOJu0Yzf8042yU2mqYy0c4q99HO4sUHgMnCuCwNzR4XU+BEXBMJK/c+k
	n9IjXniUK6grNc3Yo1fK0SNvhjhxaFg=
X-Google-Smtp-Source: AGHT+IEqg0a64xientJQOC71Qg+9i8QvhNlt3IiSiI5WaupZrxESzGH1VGgf2O1yZXEAxNnQtnnMeg==
X-Received: by 2002:a05:6358:5906:b0:143:8eb4:cf36 with SMTP id g6-20020a056358590600b001438eb4cf36mr9416420rwf.5.1696622375296;
        Fri, 06 Oct 2023 12:59:35 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:34 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 06/10] Dockerfile: drop python3-pil
Date: Fri,  6 Oct 2023 12:59:09 -0700
Message-Id: <fcce3cdcdec2f1c6fc2e4bb1b026a0eef46a736e.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61270

This prevents upgrading Pillow in requirements.txt

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Dockerfile b/Dockerfile
index d8c38e1..02948b6 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -30,7 +30,6 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 	python3-pip \
 	python3-mysqldb \
 	python3-dev \
-	python3-pil \
 	python3-wheel \
 	zlib1g-dev \
 	libfreetype6-dev \
-- 
2.34.1


