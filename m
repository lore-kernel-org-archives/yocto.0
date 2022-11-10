Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08FBC4332F
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 17:28:02 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.10378.1668101272524254894
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 09:27:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=d1i2h98h;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id b11so2131400pjp.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 09:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kr7kNFTD6d1A6oDZhIj4HE654QldyKUHpuC73PsRRJY=;
        b=d1i2h98hiUMpRn5NCGvW/uEzu9/sqcR+HJI90Cam8Lo3/vrUIc4i24xuaDfPD/t2jX
         54f0mj4X5RCgfb7JFDxpE/nFNAqmaP5r/bftPNDK0sJYajO1AbKoEgwkyYaxJr/q9Ezs
         Q7H4C2aaTVXAiMFI//dR3d9A2EKgYfUIveXgKbJp4Y9iRAxFvfONJ7U4Pq4nNei4ZzPG
         9NVM5/5Lkrd4gfHG8UjyRTpsCZl4hQvLtP4MafjqnlOCwaABxahiIcbSrQW4aTvocmGh
         RJmCqCoyfDK/fKB8vszj/zRCECvFgGgUshxsauANVlxTA9+12XqdGtuBFK89uTJDSbTg
         0KfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kr7kNFTD6d1A6oDZhIj4HE654QldyKUHpuC73PsRRJY=;
        b=5Y6uNKMpj3u+XqNgHl51Ho98rOQ1GOlIkragcna1AA1mWzMiIv4wsUJXtAxc4rSBd5
         ze8qfAalMCXkJCxyGQmLxcj68jvEc53vVUan04/B7+nljcBMpzfU0u9PdT1HeThyPEEr
         PxjAdcZns0I5cOU7dBikrbHf8m33cvNDLvooubXh0ynUt3puVPWUZ/2F42Nkk7VjTIj+
         5okStwBnJPVKopTLizv5QAOp3oNcQS9fhojeesQsRF0J4BsJdzy8/eEYlN2EKsITr2lH
         4LmONnNbUq6fktgUjR3iZ8fWlkL60mG3IgYCSiRieMhEE43o6pSg25rRN+8aGJIa9tjn
         5L4g==
X-Gm-Message-State: ACrzQf1PIstQoz5MwSuTumTcgxVc08EU+PtHDREBoQuZu2zWEWrYeaTC
	Z3v/G/Z/q5YshdN/CvX3rsMsDBW7mDkFfrAG
X-Google-Smtp-Source: AMsMyM4iC20nfC0/LaxXj7MtDM04pT1N+4l56hib7ZGonTmicN6fN/HrgxshnRQK2jZQxEmmi0cThg==
X-Received: by 2002:a17:90a:4745:b0:214:100a:65c8 with SMTP id y5-20020a17090a474500b00214100a65c8mr49589664pjg.105.1668101271387;
        Thu, 10 Nov 2022 09:27:51 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id pa5-20020a17090b264500b002001c9bf22esm87002pjb.8.2022.11.10.09.27.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 09:27:50 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone] config.json: use meta-agl master branch rather than next branch
Date: Thu, 10 Nov 2022 07:27:43 -1000
Message-Id: <88b03863363a683e411c3cb2700c735c46bc92c6.1668101195.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1668101195.git.steve@sakoman.com>
References: <cover.1668101195.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 17:28:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58539

kirkstone is no longer supported on the next branch

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 673b904..c709e6e 100644
--- a/config.json
+++ b/config.json
@@ -1202,7 +1202,7 @@
         },
         "meta-agl": {
             "url" : "https://git.automotivelinux.org/AGL/meta-agl",
-            "branch" : "next",
+            "branch" : "master",
             "revision" : "HEAD",
             "no-layer-add" : true
         },
-- 
2.25.1


