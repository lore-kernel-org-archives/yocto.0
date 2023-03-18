Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8832C7618E
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 20:00:06 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web11.3805.1679169595864355298
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XIpxeLah;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id p93so5357680qvp.1
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGOnB+kTMBVQ7JNCcmuHnkiw+wpUKPvBTbqOdDL7Qzk=;
        b=XIpxeLahVbEGZqatSNwMiIHMdSNZBHTiDyRs85aY57KlfYAG90sCdiam3zP9rMPij5
         bBTkOUTyj0H/+t9qQKXQQsTvkPs07gmHCMG99SFSmYXMH/6jfIkzenGGw7Uv736gI4lo
         UEYoTr3S+e8OQLLQxjJ67cMQxAgb30RdgNrtEbg3udqcHfYMgMo3Usfw6uycTkCqSqTt
         S6IK8M3GhtwVnj8f2elKUFGv1bB5cQCmGh01obc89s4MagWxcNLI1PoptJKQfhu6P6rj
         K9JpqHGJvCK62fS5fgg6Fly3s+Q0h2hCsyeAt/1nvqJsmTT0uc3xO26vMUL9Gvdp4MBu
         /SZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zGOnB+kTMBVQ7JNCcmuHnkiw+wpUKPvBTbqOdDL7Qzk=;
        b=Ezp9BuIe82PW/DfWvcCnezfN01GuaQOdJIh0SLuQrJ8ttrsX6A5qPtbskg2v6zyt+H
         Ox1ee87JM5dgikWbg3PdGtcg196TlrJm4qgDMNPISoof6F9sDKzTAA+YoewepyIWaK/s
         qFssjJWl3tmpbhVuBSkRTTJIGbwe7S64sgyOtdulfCl1UhcGcMHE9kbRFC7BC96MTBRi
         W30nIZ/s57HnCp2WR41RrhMH0Ron/HlaBZzi5Uhn4PbbfZLXjCoI72ZggOQ0WoNFoTyE
         7o2O1bG5mkQXUcUonASHK9GoawtUUd1ZezDRVU4B7cclDol2IvthBEz0eZ9r3v5r1hNz
         ZCnw==
X-Gm-Message-State: AO0yUKUMCJfBx7Q93o0nFZhyAYtGhPRv64MLNNc460tQDT4vjrpfh/96
	vy5hYImNl8in5jMy9EETUzQNMt7LZTw=
X-Google-Smtp-Source: AK7set8teIR7qc57q/6kwRrHqfgaeB8HlLQnx3xQeEdi9wppqxh+E7pzRPR82Gdh1IFf3WzwU7VtNw==
X-Received: by 2002:a05:6214:5005:b0:571:f87:a665 with SMTP id jo5-20020a056214500500b005710f87a665mr47358270qvb.35.1679169596941;
        Sat, 18 Mar 2023 12:59:56 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/9] fscrypt: update to 1.1.0
Date: Sat, 18 Mar 2023 15:59:50 -0400
Message-Id: <20230318195952.538375-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 20:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59458

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fscrypt/{fscrypt_1.0.0.bb => fscrypt_1.1.0.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/fscrypt/{fscrypt_1.0.0.bb => fscrypt_1.1.0.bb} (96%)

diff --git a/recipes-security/fscrypt/fscrypt_1.0.0.bb b/recipes-security/fscrypt/fscrypt_1.1.0.bb
similarity index 96%
rename from recipes-security/fscrypt/fscrypt_1.0.0.bb
rename to recipes-security/fscrypt/fscrypt_1.1.0.bb
index 8147fe6..ea9593b 100644
--- a/recipes-security/fscrypt/fscrypt_1.0.0.bb
+++ b/recipes-security/fscrypt/fscrypt_1.1.0.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://src/${GO_IMPORT}/LICENSE;md5=3b83ef96387f14655fc854dd
 # fscrypt depends on go and libpam
 DEPENDS += "go-native libpam"
 
-SRCREV = "92b1e9a8670ccd3916a7d24a06cab1e4c9815bc4"
+SRCREV = "7c80c73c084ce9ea49a03b814dac7a82fd7b4c23"
 SRC_URI = "git://github.com/google/fscrypt.git;branch=master;protocol=https"
 
 GO_IMPORT = "import"
-- 
2.25.1


