Return-Path: <ptsneves@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C16CC433EF
	for <webhook@archiver.kernel.org>; Fri,  3 Jun 2022 16:35:44 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.514.1654274142032470986
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 09:35:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QIckNPhy;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: ptsneves@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id u26so12730466lfd.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 09:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iBwzDI/3iTIDCqP4gZuNWtrLXQq976R1Ug9HS6fOsos=;
        b=QIckNPhyLOUG0bNw96KzJp9nta3aRfnGNL+tVtNIrPftqP4uAdGUm32052rVgbY84f
         A+i/EHq0NhN2ZX5HO4EQ8y2ZAz0J4NDAwhyiPlEe6ZWKm0TjYflZ8JX/1qBU3a/CjyXv
         bkIvYgEYwxyoKR6t/hdvzIPhOQOryvw/R/psDx2rnpeQOLldeVMtceLzq6uiG8TRIERo
         Io0dDyiZy1mvUBI3Y18e+gNGdFA/30HyRK3g+AGPP7J4xG6OJmbm6wB+Qz0Fliaw/bDM
         L6Duhv0p8wSsPK2TcXRzHaErqn3CPW74gTc+3uqh45Y9KKhqRp//+oYEEwrbMjoAsx8F
         jt2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iBwzDI/3iTIDCqP4gZuNWtrLXQq976R1Ug9HS6fOsos=;
        b=Ur2BePLXe90HqHiwMqi1shrHK1UCJoTsLeZRzJdPXcPC7b1BJb315fgQBWsHzssrQ1
         Br19500hvkhPTpoLITgTGv//eJRIy/dMgzcnEI6L/t1TDX6FpUlc4iHOUb/PNUch7Qmq
         x2BCved9MhEhqiwTAMprO0eHoRMITZVwedcZMOkl2iHi00AAwWg0ajLBrrDSdKkom1ch
         /+vo1tyo7m8IAnPq625jjrkDpJ7BIT2/aygw165BzUnymXqo7hjpnFtwYvDmXlyVoSdn
         Xq8OHlaevDvT4GrpT/csgZpdyhmVAtqyN37OvMk8Ee1BPD54PwjrbK0bqgmO24/hAz9U
         tieg==
X-Gm-Message-State: AOAM531LdUs1BsevukERbjw88IwZFYV7Ax2cXE7mQc1NJFjlgyw8NUPo
	TDBbdkaVWdgeaehBUxCGgaP/lFR9cA==
X-Google-Smtp-Source: 
 ABdhPJxeeBlnluF10nZjKn4f4TD4dm5qseniXTqRhwwplbjekERKL0Cc+Z8p5uI1WVzA2HuX9VkWow==
X-Received: by 2002:a19:650f:0:b0:478:fe97:f761 with SMTP id
 z15-20020a19650f000000b00478fe97f761mr11466296lfb.673.1654274140182;
        Fri, 03 Jun 2022 09:35:40 -0700 (PDT)
Received: from localhost.localdomain (85-128-83-172.static.ip.netia.com.pl.
 [85.128.83.172])
        by smtp.gmail.com with ESMTPSA id
 g2-20020a19e042000000b0047255d211e8sm1642040lfj.279.2022.06.03.09.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 09:35:39 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Paulo Neves <ptsneves@gmail.com>
Subject: [PATCH 1/2] manuals: SYSTEMD_SERVICE allows multiple services
Date: Fri,  3 Jun 2022 18:35:20 +0200
Message-Id: <20220603163521.146659-1-ptsneves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jun 2022 16:35:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57256

State that SYSTEMD_SERVICE allows for multiple space
separated systemd services
---
 documentation/ref-manual/variables.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
index 367b4674e..ed52c3508 100644
--- a/documentation/ref-manual/variables.rst
+++ b/documentation/ref-manual/variables.rst
@@ -7656,6 +7656,8 @@ system and gives an overview of their function and contents.
       When inheriting the :ref:`systemd <ref-classes-systemd>` class,
       this variable specifies the systemd service name for a package.
 
+      Multiple services can be specified with each one separated by a space.
+
       When you specify this file in your recipe, use a package name
       override to indicate the package to which the value applies. Here is
       an example from the connman recipe::
-- 
2.25.1


