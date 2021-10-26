Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D63CEC433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 14:24:30 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web12.12842.1635258270318870628
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KI+Ec0Gf;
 spf=pass (domain: gmail.com, ip: 209.85.215.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id s136so14307362pgs.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=TYMPoTJmCumsR8GlmzNsWjW7QovoTSbBgSOMUh5LPBE=;
        b=KI+Ec0Gfx0JNTJQSU4+cAT4jCi8Rlcp3paLVUewIm6j0x7boGuoED6VIH8buo15EKl
         KwMpkuTjL+SnnxUIq2hh2VzV5VwpLv/KC6F1QB4ES++Vltdb0dIN+J6tn05QqJNOfjFJ
         eUVJcwckI1V2TaLjYSrhbAm5c38u7BIc3MaI5mMvq0jxlM7Fh2ozMgfU/MAqPn1ZN3zi
         hJc2o0UKMTwY9zToMaLb+l29BmWSdsfpA0IzjOfJSU++7RKuk5OOrTUT2cK3JMH3vvYS
         QLda9TJKzUmRBGb201NcM5BWivX7zDUd/YQOJRymOZU0qW+SJLKR2+kKfJ/EOZ7BJf+W
         3OeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TYMPoTJmCumsR8GlmzNsWjW7QovoTSbBgSOMUh5LPBE=;
        b=dWDLO9yW1LFbFmOeVhfbITtHhQNScHl6fKVGJOitsPesJsQTBVi5v73S6SxkRI4Xcu
         EkuOCs4hhvulPabGVysnK2dI+JXHhjMvAX3y5lFVHcDsG1vqUXT/AbcUmOulpLO0PSjQ
         Z5WG1/Wqg+DwKA3ORwRrbhkYg1JJ2h0wukuRU2a5tWkdhJJUyMUgdbk3sp/lPOg968av
         7wC8GngSeSL1wAiQxKgUKfEoqOWzWCKkOWM1Cfw/MStZYTZFgBjJR+sZMMfyzjja0eMD
         f0T1zurln4jYEGq/pVTTSSti8F4XIi359RMVPS7J3FK/zRS2EJ2tsq+ZCCr0Q5tmKu6W
         Wkww==
X-Gm-Message-State: AOAM533FplLWxXQvpwtzc7wHjwO1GIYwD9BPNwv4uarBV+xb0w0+M374
	Njr7zbfAw+adfVwy11LqLiSZajnfS3c=
X-Google-Smtp-Source: 
 ABdhPJyIXtYNkJIrS3sIVBmGIyELyjvFTfymaBEHM0bLWRqfFAaVfOCE1k2Ql+C/5l9pjfFRlKiAHQ==
X-Received: by 2002:a05:6a00:2405:b0:44c:1ec3:8dbe with SMTP id
 z5-20020a056a00240500b0044c1ec38dbemr26407264pfh.33.1635258269561;
        Tue, 26 Oct 2021 07:24:29 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:bc55:5a93:ebf6:406e])
        by smtp.gmail.com with ESMTPSA id
 p25sm25821553pfh.86.2021.10.26.07.24.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 07:24:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] tpm2-tools: update to 5.2
Date: Tue, 26 Oct 2021 07:24:25 -0700
Message-Id: <20211026142426.1476128-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026142426.1476128-1-akuster808@gmail.com>
References: <20211026142426.1476128-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 14:24:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55165

openssl 3.0 support

see https://github.com/tpm2-software/tpm2-tools/releases/tag/5.2

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tools/{tpm2-tools_5.0.bb => tpm2-tools_5.2.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.0.bb => tpm2-tools_5.2.bb} (81%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
similarity index 81%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
index dbd324a..6e95a0e 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
@@ -8,6 +8,6 @@ DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "e1b907fe29877628052e08ad84eebc6c3f7646d29505ed4862e96162a8c91ba1"
+SRC_URI[sha256sum] = "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d8909ff64119f7a630"
 
 inherit autotools pkgconfig bash-completion
-- 
2.25.1


