Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FDFC433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:35 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web12.3801.1642139734503902779
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=P00eurTw;
 spf=pass (domain: gmail.com, ip: 209.85.210.178,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id f144so1106470pfa.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=62uby/nTwHNf39kdebkM9n81gnstarjjo5tmZ5cvBM0=;
        b=P00eurTwbELGCQ4iE20j8RuXMJoU8aL+EW+rldObZ6lu8PFcGtINEw5ROVSktu/SHO
         4/zAatxUytFGtdwdcr2EK5c2ZdMpnnfJ0hmh7pTvJnbebN2o54KUjLLbJq2ywtc2cGA7
         VUtXfeXOeShFjCSkhRmFeCNLIBCd/KKXmhi6OPLwC8bc14ZJHT03Khvv9zXP0ag3nFNe
         O2J7u7nA6/cnRMCxb15/vWZabeJRPARUI1aUCXtu3eEAngeVGtZubsry13HsVJLvoDDm
         gTHqWy1XTWMPKQyyh3orm/rP1tFRM+X0bUZ0XaNRj4YK8tdx0B3Xa4/ekdURjZRSrQZm
         lAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=62uby/nTwHNf39kdebkM9n81gnstarjjo5tmZ5cvBM0=;
        b=ptBMMktqleQpQrFbyFmd4jop6plhCbCDoBsPI9Vi+d8MB5HmPN82DLy2dYaYK4BSdc
         Pp2mEAqthKYdPWXnblBJ5jothtVt9ziZ96nQwfH1Iq4X0Xpm0FXvNeAkxRz9XYbDefsy
         ZhhbkqBMiSU55B4JNSxPeruUEff2/34xrzXbtG+mznJE8EhMraWJPh3/xBB6IPQ8H+l/
         5w7dyxrtKfD1HtjrN6oZoJ0rfmk4lUZKMVCCyPqWuZcWqJD7oPApBsQ485zU9ZtQDSyS
         IEe5BGJYd7XoNt7N4oZrrZTXibLiNawaii/xvZzETYXFjxxMUxEFUIIYE7oYM+s/y0XC
         YbKQ==
X-Gm-Message-State: AOAM530jk4Iho+mhxTs17dyypNyL4fvG8cAmxGuhbpmsclzhftZ6ZMGs
	7dxtVLhzjVC95N45mIKJYmUrx6KCDYVpqA==
X-Google-Smtp-Source: 
 ABdhPJz+T3gujlVZSbgVD634eP/pzsMS3W/iVgAdLUOQ8W39msqygQcgx2aZatHimmrPOXQlFIceoQ==
X-Received: by 2002:a62:64cf:0:b0:4bf:2e95:373a with SMTP id
 y198-20020a6264cf000000b004bf2e95373amr7422647pfb.41.1642139733852;
        Thu, 13 Jan 2022 21:55:33 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:33 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH 17/18] Dockerfile: add back python2 dependencies
Date: Thu, 13 Jan 2022 21:54:40 -0800
Message-Id: 
 <88b13592c39d76ccb1a26034189fc9e2a240ecaf.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55868

We have some layers and especially older releases that still support
python2. Add python2 dependencies back to the container so that the
older releases still function.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Dockerfile b/Dockerfile
index 25ab5ea..4b2870a 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -22,6 +22,11 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 	g++ \
 	gcc \
 	make \
+	python-pip \
+	python-mysqldb \
+	python-dev \
+	python-pil \
+	python-wheel \
 	python3-pip \
 	python3-mysqldb \
 	python3-dev \
-- 
2.30.2


