Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B66BC7619A
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 19:59:56 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web11.3805.1679169595864355298
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CmVKstjO;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id p93so5357655qvp.1
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TuN3sfzH8ivLEyod0fieiE1ju9glx0UBuqWX+aMUXjs=;
        b=CmVKstjOP8Ckc8lgMOHAtXZgIMTYhIQjZBjXhJ44wDDcXTWHa484AH5pHIvLOTcMmw
         vxuPwOJKeDxE2aOVHo3IQToz+Cs6LZQD4Fw+Mn2KqGqiiN+4c+agPex/fSLdyS7pwfcS
         PjdbE5YJnQHcIAb3YZyOluvrU0WfBAd+42Z+J/+ZXw1QNN0QrMeiHhhbtL1TjoqbSeX3
         FcAm8Do/v9+7wP503WNsEcwF1qsWV5XRyO3dpLMU1n6+aeetOesZpcOxAarVT7VVyU5a
         WxIVvx5B+VGC/3ztuvn3IkWbFubedcr/CPBBAM+yZZ7j3CqZOsQxWQn8CtmdCmbcgg9C
         xIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TuN3sfzH8ivLEyod0fieiE1ju9glx0UBuqWX+aMUXjs=;
        b=i3nvHwhCLVHGbvo3RQ4kZfZaW7LwKdbw8HtxDB7svh51MYx9xv+N3kq1r+inj3L9S4
         wjj8Ew+a/pE0wqir/N4nDjlrS0bk5wm7/AYY/+WxThp9K6mSxLW4MmB1whZP82BeqVn7
         QJZr3/qBQ0fOp4mZv8oqYkFORRrWrcSnBLYX2SkuEbCpnfvQ7lYE53rFSTeDuUOw0Xs5
         QprC6Q9vxeIv/7GFmdqx3RfI9YZxPAQfPYef9BVwDT3HIA0q6PkCaR5hFQ12OB27G8Hs
         ASwvh4zI1+EhBRkkqcWQpXTR9mvl46Fj3BQxQWrGs04ri3SXQ/8uTi4OBuGgur3HMBgr
         sonA==
X-Gm-Message-State: AO0yUKWg1qWcmHDzj17QXRhogrjbjrBzAMkmgyaB6WOwadvblBxB7yBW
	iKx3XSKuM/s5R/GB9F+wIWEuwWH+R08=
X-Google-Smtp-Source: AK7set+jkc+pLX1MYL0WSqL9lCnqr/Cv2SkNvsdPzfAusbXTQFYktPManMZ8RI2JkNqJNRCrj9cCyQ==
X-Received: by 2002:a05:6214:d46:b0:5ae:f42:ec94 with SMTP id 6-20020a0562140d4600b005ae0f42ec94mr21863312qvr.33.1679169594885;
        Sat, 18 Mar 2023 12:59:54 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/9] libhtp: update to 0.5.42
Date: Sat, 18 Mar 2023 15:59:46 -0400
Message-Id: <20230318195952.538375-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 19:59:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59455

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.40.bb => libhtp_0.5.42.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-ids/suricata/{libhtp_0.5.40.bb => libhtp_0.5.42.bb} (91%)

diff --git a/recipes-ids/suricata/libhtp_0.5.40.bb b/recipes-ids/suricata/libhtp_0.5.42.bb
similarity index 91%
rename from recipes-ids/suricata/libhtp_0.5.40.bb
rename to recipes-ids/suricata/libhtp_0.5.42.bb
index 08e285e..e2866c8 100644
--- a/recipes-ids/suricata/libhtp_0.5.40.bb
+++ b/recipes-ids/suricata/libhtp_0.5.42.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=596ab7963a1a0e5198e5a1c4aa621843"
 
 SRC_URI = "git://github.com/OISF/libhtp.git;protocol=https;branch=0.5.x"
-SRCREV = "1733478f7fd09e936fea2e024f1d228d40741df2"
+SRCREV = "b14f81bfddbc7206ea713177fcf1e1090257dcd2"
 
 DEPENDS = "zlib"
 
-- 
2.25.1


