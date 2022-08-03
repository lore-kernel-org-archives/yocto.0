Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA29DC3F6B0
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 15:02:33 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web09.9830.1659538944808045241
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:02:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V2bqXmQ5;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 o5-20020a17090a3d4500b001ef76490983so2379260pjf.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=cq/cZ1jgMHO/KqCmIYHZ9xHFuauoLIYzWDgsEYZhj5w=;
        b=V2bqXmQ5DEoBp0AaxDUsLiu6TJUFXFrLEIzY3MZ7rW7j2Q5GrC6q3znATC/1ctWzoD
         HLW5zhEEc/gV8+40JdKGbSyjJn+zCgwxGMLMz9tfgdZvWasafHb781qKfiEE4HxSdy/o
         Js2+J5s1dtNGn4hfIEimTNEZTzGAKiPr/xduwsqY5tuv7rtwcaZVvGDaUqhDraHYWsMd
         1cJAH0oaiP8Af42pyq9ryysUvV+AdOhiimcQkpmkNE0o1tG4XqXOViNZjfEFj/bkav8Q
         jMMwwGF4Pxez07JesHFzYF45k/zQ3CvVy945WKm52JT+nq13jpvZCdXBcpXN40GA+yg0
         VWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cq/cZ1jgMHO/KqCmIYHZ9xHFuauoLIYzWDgsEYZhj5w=;
        b=d58His1cUukwGi2ajV75Em34wR0yGuIACtJmyjCalF0wikmocM4vv4xM7j2lEBFJll
         2ufxaMytXbVtup9Vn2nMeOFw1WUfsNGX8nSHD+d/aq105AtJl8xMR7LEp1kjGG6awTEe
         GFjZAwOalK2CrT91zkETMDl//EnfooqtnsDWVxu9Q3myeHuZWyfxRfOKIeqxVtUzHSuv
         aRo4YZJgYZsheAzqTuZdox0jmyI+oQRY0v9qMvv9FJZwbOy0zar+MF7C/1KgJr8dbzvl
         awyQCH1mNXWsHks5twOp7kjd+U7MVb+EOtBCnaXr3gKW9eWTvJWoEBYfqZh3W3uv96tV
         x32g==
X-Gm-Message-State: ACgBeo1RvzVfeNtrHHGKJDVvN0Ncq3SaH5pmpm6jFSZ+KB8ELK6Gu0tv
	J1v3X+ip8fTHCdWeFllA3gvDMurKZsg=
X-Google-Smtp-Source: 
 AA6agR5TrUS7IlcMczW7ZLFTCfjOR0mclrfipxm8UvxZb9i8BSu6QDZusk8o9vnJ7vYObW7e3N/J5Q==
X-Received: by 2002:a17:903:234f:b0:16f:18a6:451a with SMTP id
 c15-20020a170903234f00b0016f18a6451amr2188059plh.82.1659538943540;
        Wed, 03 Aug 2022 08:02:23 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 b8-20020a17090a12c800b001f506009036sm1712720pjg.49.2022.08.03.08.02.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 08:02:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] lkrg-module: update to 0.9.5
Date: Wed,  3 Aug 2022 08:00:19 -0700
Message-Id: <20220803150020.1321926-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220803150020.1321926-1-akuster808@gmail.com>
References: <20220803150020.1321926-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 15:02:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57768

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/{lkrg-module_0.9.4.bb => lkrg-module_0.9.5.bb}           | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/lkrg/{lkrg-module_0.9.4.bb => lkrg-module_0.9.5.bb} (100%)

diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.4.bb b/recipes-kernel/lkrg/lkrg-module_0.9.5.bb
similarity index 100%
rename from recipes-kernel/lkrg/lkrg-module_0.9.4.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.5.bb
-- 
2.25.1


