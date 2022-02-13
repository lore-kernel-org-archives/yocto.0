Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F94EC433EF
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 21:39:39 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web09.26838.1644788378555607429
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 13:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AHXJwoZc;
 spf=pass (domain: gmail.com, ip: 209.85.214.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id w1so9077090plb.6
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 13:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WB+BTH/TssNChTz8dHXUMDrPVrM8guoJhBig5UZB7cs=;
        b=AHXJwoZcXjcWIRYqCz/yy0Ya8DC7ZaoG4t8p5e5c6r7Mdqmhqua0mWK5SYkNlF9vk2
         eDuo45NYq3D444hmeSN31en7JIpep0CReABrZevjnyKUhMNHXMkxXy/ovlS59EE8lhLM
         3xRZcPpxxmnGYrgirVRT/a6CZGGd5EBfP9729w9EE3pMOQxwCTw2hBAa1gBe+ZZkly7M
         c3MAMCaduegCqjQiZEWBsi86XcRWIN5lUCoVDMPUXS0go9gNLpyoa8aMXBY9szDAn9Nn
         QJZpcQkH2yGGt8jZw6NzRL1kKUMJkFfhcsjRj/ctw4JCvPXXQcOqroTsR/JqT8hWY0y1
         D8Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WB+BTH/TssNChTz8dHXUMDrPVrM8guoJhBig5UZB7cs=;
        b=kEk0P1VGg77AJKKzJuCahqLy1at6LY1NpOEd54F1nYHPdu46tx431XzX582Fh93G6s
         vF1AbJsNvfcrWNs4HCw3ga5jNi2ee7t/8F5ehSWS5S1sQAzzK4zRpUVWxVc7XQF0zRWA
         UsW3il63rFxBxYyG23RUZwCiSEmLzZozR1nSD3nJcV6Uuqmv/Ut4oSDRS9fX/NbtUMnE
         xlF9W6bfj/agsiLiPm0J8gbCI2gFsvT3TbN+n02Bk8CBZLEiXmh/bYHQPx4CHCKeVDps
         n3EDbBNCfz31efjaJOPVLcvEaENkzM9ZYxfDSIhwT004GkxQ0WpoXWko9ijAIE752axA
         Xq7g==
X-Gm-Message-State: AOAM531Cy9g7A7tOv05x5uG2rbk1Qm3vQVZZCiLpsDzCvk9en6DFTg7/
	3y0e43AsT/Jhljns6T4vg2n8HmUSpGk=
X-Google-Smtp-Source: 
 ABdhPJwjiAW4PUpng1jUOnvQI387oiKS+W8jun288OhY0+HzdswZQMta08uYnmouaAj/ANSs7iUGqw==
X-Received: by 2002:a17:90a:bd12:: with SMTP id
 y18mr4279576pjr.148.1644788377871;
        Sun, 13 Feb 2022 13:39:37 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:27b9:2010:60db:8094])
        by smtp.gmail.com with ESMTPSA id
 x14sm5701995pgc.60.2022.02.13.13.39.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 13:39:37 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] parsec-service: fix compile issue.
Date: Sun, 13 Feb 2022 13:39:35 -0800
Message-Id: <20220213213935.4026528-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220213213935.4026528-1-akuster808@gmail.com>
References: <20220213213935.4026528-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 21:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56177

|   thread 'main' panicked at 'Failed to find tss2-sys library.: Command { command: "\"pkg-config\" \"--libs\" \"--cflags\" \"tss2-sys\" \"tss2-sys >= 2.3.3\"", cause: Os { code: 2, kind: NotFound, message: "No such file or directory" } }', /home/akuster/oss/clean/poky/build/tmp-glibc/work/cortexa57-oe-linux/parsec-service/0.8.1-r0/cargo_home/bitbake/tss-esapi-sys-0.2.0/build.rs:62:10

add inherit pkgconfig

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-parsec/parsec-service/parsec-service_0.8.1.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
index 9161872..1cbf2bd 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
@@ -23,7 +23,7 @@ PACKAGECONFIG[TS] = "trusted-service-provider,,libts,libts"
 PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace(' ', ',')}"
 CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
 
-inherit systemd
+inherit pkgconfig systemd
 SYSTEMD_SERVICE:${PN} = "parsec.service"
 
 inherit update-rc.d
-- 
2.25.1


