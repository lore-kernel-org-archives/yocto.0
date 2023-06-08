Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F1C2C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 09:49:59 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.5155.1686217788297649767
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 02:49:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=S+fR5Q5h;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: samuli.piippo@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f655293a38so91912e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 02:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686217786; x=1688809786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gkm3Ej7OHH0Y0qvTd+6aYGGZ7XvqxYdmMfecTmmkM9I=;
        b=S+fR5Q5h3/SkzfYdDAp2QAe3vONmmD9BRvkcz2v8kaG/gai1k57OdSXfSRdNx2gLfo
         6svJmjrQIpkXZOoRjVUCswfo4wQgbFZ8tyZzIG4oASkZ/9J4AdDuY6FANFukcUQJk+6Z
         MRALHnu4WpMR9yOo248FJkEit5lfsvDhCf6Iyky4oiHDdr0bVgJFHLTcGQ3be3xCvfzV
         qdEb4cJOSWsUmMD9SMb/f9T8aDteYOzMujtrf3FuU6w3i1nY7eK5FCSYMHs3rUqYpJCB
         1cetQDVc4Iwk/YVwq1WEFOTgo/AVqCdtZCHLkf1p9q+Gb/3YwjlWELPwfoXulYkdhLKe
         hVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686217786; x=1688809786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gkm3Ej7OHH0Y0qvTd+6aYGGZ7XvqxYdmMfecTmmkM9I=;
        b=YC6sC0dXvYN2JW6Jg5NbCIg5P+HycfDdtChC+7ITxSZWmThT+NDEqPOX21I51RRsVH
         AyumpPj77GZRIZ1jMqRstnVao42tt4gAi+3I7G33GwsVDk6fXpvW4kJcwYUm2ryRx5qH
         E+1faZJD7gT6Rg0z6RT/JWwP1DSL+ggBHp3hGsvdTMzWLFyAyHKT+aNjDwRTd3zKEm03
         4lunek2U9+X7s25IYQfAsNwshs3i8E0s7AFQxKX2KCn++KO09AsnxdDS4f+d+R9kukm8
         FZzKqZsaGsR3fp4dj1f5nhAZMZmlThsPpu2O6TVa8zCqRYGgel6mjyYiBF9rMeB9sv4k
         2OqA==
X-Gm-Message-State: AC+VfDxnuqEXNawnMz/SXzHBzDhdau9Bo37vFdpXbs4qDDtN+5Qdsinh
	qEmgfKHWqmenDYQ849dIqBoAGNosfMg=
X-Google-Smtp-Source: ACHHUZ6TYyVWrs/jzpFjTcelsrvhYxuYQxRM++E3G4R3cnAaWyW7iZ/XymvtUE4fPZEHSyRuyP1FlQ==
X-Received: by 2002:a05:6512:3c9:b0:4f6:145b:e334 with SMTP id w9-20020a05651203c900b004f6145be334mr2688028lfp.16.1686217785889;
        Thu, 08 Jun 2023 02:49:45 -0700 (PDT)
Received: from dcbuildsrv.ci.qt.io ([192.89.120.62])
        by smtp.gmail.com with ESMTPSA id u24-20020ac24c38000000b004f25c29f64esm124696lfq.176.2023.06.08.02.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 02:49:45 -0700 (PDT)
From: Samuli Piippo <samuli.piippo@gmail.com>
X-Google-Original-From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCHv2] Ignore WINDMC from hash
Date: Thu,  8 Jun 2023 09:49:26 +0000
Message-Id: <20230608094926.2280379-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 09:49:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60227

Amend 6c54d16058ed8fb911c44df93b5732ae693b9803 and add WINDMC
to be ignored from hash, otherwise it contaminates sstate cache
for every recipe.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 conf/machine-sdk/include/mingw32-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 9ec6e07..1007bd4 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -46,7 +46,7 @@ export WINDMC
 export WINDRES
 export RC
 
-BB_BASEHASH_IGNORE_VARS:append = " WINDRES RC"
+BB_BASEHASH_IGNORE_VARS:append = " WINDRES RC WINDMC"
 
 # Needed to override no-static-libs.inc
 DISABLE_STATIC:mingw32 = ""
-- 
2.25.1


