Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CCF7C25B41
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 15:44:02 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.124084.1698075841447650211
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 08:44:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bg3rPx2f;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.175, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c50ec238aeso49641601fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 08:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698075839; x=1698680639; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GTezZEBIQK/UFsgRRWaYTh3VuiUf3MbFc0xHWaRqlKg=;
        b=bg3rPx2f1KhaXiRJRfztNd18JRTr06iiVccykjBSUpHkZvn2FYNOcTHswzoGPtbTIg
         N9/IpkxmDvRXaVoVN1r4zrMqtseMI8+u6VYDWBK/5PIYTmY5pZa/H+Htf//HtvsBIg1H
         Q4JoATge3RwOMMWdvTADJ7rJGq7gMvoigHvQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075839; x=1698680639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GTezZEBIQK/UFsgRRWaYTh3VuiUf3MbFc0xHWaRqlKg=;
        b=kR5Vf95OpCLLKQ7HSWM7rncLJimf8c2w8qE/X5rJBdRLV7IVl8D7T+zYVCgKpB85V7
         ZaZtCDdhV62tOe6V2g2JcLZJ2RO9qzKnl5wCaOq/WXyqn8kUzb4gHx/PDwJJuXjhXq3Z
         JlX3lBVm6NRiej0rNpwHwjEsw0aXyTXhPRWFJ22tzjJvnPiZ0jOeiQ1mWybS+3psO3xq
         svxRmOIvoNwl5of6la3r3BMn94qe7nR2MhYr8RFoVO6J/S5KtufBiKlRL9cSjjrVTXks
         nnq8pWJtP67KEq+gwjjSP9Ae2qK/rUGLsJy2XqIZmoScfd3eENeAnrGKjxarCgO6UpAB
         VUoQ==
X-Gm-Message-State: AOJu0YxAmIh2F53Y59rL1cQHpg8hMQjpLE7VfYiDxwOh7NhOXdcfLrEy
	mpM5IjkDVHUihCb5RjETDNu6HVNzMIueXCu8Fyw=
X-Google-Smtp-Source: AGHT+IGFqXNKEXIXHZL2qVDpV6b9VK1Bw4WjvFos+JAULO/4eEX1MJvAK2HeMbz4DK/J3DLduaU06A==
X-Received: by 2002:a2e:a796:0:b0:2c5:1388:e36a with SMTP id c22-20020a2ea796000000b002c51388e36amr8884703ljf.29.1698075839551;
        Mon, 23 Oct 2023 08:43:59 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3e73:a41c:6787:e5d4])
        by smtp.gmail.com with ESMTPSA id ay20-20020a05600c1e1400b00407460234f9sm9745346wmb.21.2023.10.23.08.43.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:43:59 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 4/5] scripts/run-patchmetrics: Only monitor master branch
Date: Mon, 23 Oct 2023 16:43:55 +0100
Message-Id: <20231023154356.1145934-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
References: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 15:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61457

We only monitor the master branch for patch metrics as we can't really make
improvements to release branches.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-patchmetrics | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index 20e6268..391ac45 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -11,6 +11,11 @@ OURDIR=`dirname $0`
 
 TIMESTAMP=`date +"%s"`
 
+# We only monitor patch metrics on the master branch
+if [ "$BRANCH" != "master" ]; then
+    exit 0
+fi
+
 #
 # Patch Metrics
 #
-- 
2.39.2


