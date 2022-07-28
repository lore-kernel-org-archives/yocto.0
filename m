Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23DBC3F6B0
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:17:59 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.1530.1659046677112309389
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lJcKbXVC;
 spf=pass (domain: gmail.com, ip: 209.85.215.177,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id bh13so2599390pgb.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Xq26igaMW58IBj04PTEwnJLmOdjF+sNRaPDA6BVsiQ8=;
        b=lJcKbXVC4oe1udfwKSUeSRHn2A+A6Svw6pcByfBGaaQnWGH216MZ1/EcaYygcECRSO
         EffNPfSAyF9O35epKqoVo9krGnQKpMIf61Hh9lTfcStbVoZyT7IM0VcRWsie+RMn4kAC
         ghX5NYfXd+YswgtYxJ0hEV1XN6dEidyPU9d2WtB/JNfp/2k+11/6bw0DjdZu9WLiYRlP
         C6mW48+Hz14xZcjp1T2phdfOWROA89807q3ofk3INmIoNZVLPAIlkqJdZujGIz7nn8+z
         lQixHQ/r/TT61DFmJ7YHOKr+uGV3tMlxsBtIFuEErp2rvnV2XwHlytGZiEZ290vR8XOB
         cBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Xq26igaMW58IBj04PTEwnJLmOdjF+sNRaPDA6BVsiQ8=;
        b=YbkzQamwyLvzYIqAuTzilQi5ig4/ZVjHY7+TkVBbrjiyrLHn+9ZPpRHOoUmnYFdmI+
         ScZz/TLvt6YFD+0Tv8RCVn3FwWE5Hu/28cZnnvlQYRURXhGbonNngTQNxdsYI16UxoQy
         1pzm5Zm80sLo6z0GizACBtvV0N9M9RtJ4lFeOj9wGv++trqXPq3S7CUzo0v9EqpjdNJx
         npbdXv75MkrkolIh6D37lWgUlrmDg04bdi/RFlIKvedO40u1cY0nF2XLquZSXO42om1E
         JPJSJLKOSH01p11VwKswowRaRz8KoNwnvmcqNin+BG0fMwvwfltBgCSfhPCfQTIIr8Eb
         /77w==
X-Gm-Message-State: AJIora+65lmjahe1BmDl3pLp6zHN0xz2GdNzeFLQ4H6fPHLm/ORFPM/p
	QRv8lODKvctB9b+n4lqoUzv087mhGac=
X-Google-Smtp-Source: 
 AA6agR4HY7d4u7E4k/xYEJA25jqmLhch/AF4MlAD6iBVBpzm46do+O1fKvHvZJVasEG3QxetQDbO4g==
X-Received: by 2002:a05:6a00:892:b0:52b:c986:c781 with SMTP id
 q18-20020a056a00089200b0052bc986c781mr930135pfj.64.1659046676108;
        Thu, 28 Jul 2022 15:17:56 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.17.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:17:55 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/9] tpm2-tss-engine: add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:45 -0700
Message-Id: <20220728221751.48428-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57671

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
index efe62a8..89162ee 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
@@ -12,6 +12,8 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/v${PV}/${BP
 
 SRC_URI[sha256sum] = "ea2941695ac221d23a7f3e1321140e75b1495ae6ade876f2f4c2ed807c65e2a5"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 inherit autotools-brokensep pkgconfig systemd
 
 # It uses the API deprecated since the OpenSSL 3.0
-- 
2.25.1


