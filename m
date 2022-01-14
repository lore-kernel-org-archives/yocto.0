Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26224C433FE
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:28 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web08.3888.1642139727625739762
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FnX1e8Fd;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 ie23-20020a17090b401700b001b38a5318easo13206698pjb.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=GxEA3n9gR9k4Us9chfn3akqUoIlwbWMvn30nnfacuqo=;
        b=FnX1e8FdSfc1+jPnC5UrcmLZPbgdoeY3YQBzagThOe5cGR44MFD4WCapb3a02ugMKF
         0eQHPtJ14qY8q0hhGTjVsDzvh62trBEzHY5tHaRO9SfkrwR/f6A4815m0i0GDXRqg7JW
         bPzkimdLFNdlP0KCwTdId7124rtVUAYonnTIn11HRO128qHk89+Gg0dK1KknDVGsR7/D
         siS0Xmzcb0r/RRdAhtc+l/1xzsODvt5mkMFAlNSWvMrkWKwP9POCv6YZN4cMvSw6x3S8
         AOXTToqTuClVBLjK7+BrlrZ403xoDX1HI85memphdENFxr2YaT8hwzb80EpimLEDt0Mt
         bUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GxEA3n9gR9k4Us9chfn3akqUoIlwbWMvn30nnfacuqo=;
        b=gsS1in0qSp6Xigz5eEE7G1PjfBVtfEKZ0Wg8M+GqqHeC1YcVoiBzP9Ey3BPQ6/8Qlp
         AVD6aImqkex/t9b0EjkPHUcy3VOaRzKaRZTIa8smPMxoeRMydxOE9iUy1dsl0q5kvxnA
         dFuCUcvkkgA9fbt8WZqItLNf/oLrDS9wPbaU2xZVamA3Vx+6nXyJ2+p5EVF30YcNayuM
         fWytMdMg4/UGymPN7g/C+JgOm03bGYwOrJ12QDvPU5G0nb81xK/jImAIbOB9v6bo/8+Z
         T1BvixQpf7JwWm9QuJrl2+W+kjEpo5u4AkZTVZWQDfWv/vzotvivxtCK3V6o1Ea8a35i
         Pveg==
X-Gm-Message-State: AOAM530Xbxac9ElTNnJY8D3FT1v736359t73bDty0BH0eBXKmY9OLwtN
	ke3rMmu7HkLxLOEihft23jYajWwHTKWGjg==
X-Google-Smtp-Source: 
 ABdhPJz4YE9XzSU0B6FGzloyLrtBDcnuDK0cJVKAtPsshEDLxQjFJcsLQYAozPeYbv0Jj6pWCxv6+w==
X-Received: by 2002:a17:90a:2f06:: with SMTP id
 s6mr8833730pjd.230.1642139726891;
        Thu, 13 Jan 2022 21:55:26 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:26 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 12/18] docker-compose: fix celery
Date: Thu, 13 Jan 2022 21:54:35 -0800
Message-Id: 
 <f1dbcde4c468b1bc4df0762c24d9b09e5c728670.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55863

In celery 5, the --workdir argument must come
before the 'worker' subcommand.

Without this, celery cannot load the layerindex
module and this causes the celery container to
continually restart.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker-compose.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker-compose.yml b/docker-compose.yml
index 3e16e95..2dfff41 100644
--- a/docker-compose.yml
+++ b/docker-compose.yml
@@ -80,7 +80,7 @@ services:
      #- "EMAIL_USE_TLS=<set this here if needed>"
      #- "DEBUG=1"
     restart: unless-stopped
-    command: /usr/local/bin/celery -A layerindex.tasks worker --loglevel=info --workdir=/opt/layerindex
+    command: /usr/local/bin/celery --workdir=/opt/layerindex --app layerindex.tasks worker --loglevel=INFO
   #layerscertbot:
   #  image: certbot/certbot
   #  volumes:
-- 
2.30.2


