Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47ABC433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 09:50:46 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.10918.1645523445739261222
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 01:50:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WtY3k7Dj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id p9so31960286wra.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 01:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=v7wuiw3ehhsEaYsilcyda3oqX/bGIAnH2vCcVomsJ+g=;
        b=WtY3k7DjaRqz42iIac4owhwjSXkZYRhr9Kemq6TsgbpXE4WLa9DzkzkX20EJF/5Lg+
         ecGW87xBJSK0RvG9XSPJvIu72pjvoF/dvFibRkR7LD+xMxTQhmEhpja/wkYzb8si8nlL
         GkR/62dgOd6kRpsOGRx9YiAOObS4rCRzO3oMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=v7wuiw3ehhsEaYsilcyda3oqX/bGIAnH2vCcVomsJ+g=;
        b=w3vXJ3Nx7xzAB8Qeod1OvLtqQgp5RcjNw+wIuDdjdso9UyyE74PIo475JtlnwMRHXO
         aZQDrN9Z7WuCUKC0zl0lI784W1lRL56cgsaME4n6NmtcPwtKV5lyzdttHaqFyMsRo6Wk
         Qvwl4FOEuwuoGXeWSfeSoQA94bu63hzAnT3Yk1ofXiL8YvIqmmGExJRxS0jFqvixJQcs
         1xnDLF/N1ONALzKpUM0Vgyxb0CTCrqdmS6fCFKHRN3RL71imOpstuOn4UlC4zDrh1zjF
         Wq3UDcgTWsPO5sEea62NNMNwsMitEe9EA9MCOYMgP2vS9BXEmvQXI+J+O6HNjvWhnr1D
         9TTg==
X-Gm-Message-State: AOAM533wJcxyEE+Qx1EdxsBlYLdCKgfqeJFQ2CcHjDoqMuUB1xxZ7Ch8
	D7gRbj5CpnK1l6HBz29WRd+hGZ4u4aF97pk7
X-Google-Smtp-Source: 
 ABdhPJwj1SBEr6/Bn4ldSBu71yH4VXp/jsYcf5BLZfwEfSWYifFW1sq7U/C0iTe5CYXKDPuHRKysMw==
X-Received: by 2002:a5d:5270:0:b0:1e2:f71b:69c9 with SMTP id
 l16-20020a5d5270000000b001e2f71b69c9mr18620822wrc.231.1645523443856;
        Tue, 22 Feb 2022 01:50:43 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:26ce:ff82:5c7d:d03e?
 ([2001:8b0:aba:5f3c:26ce:ff82:5c7d:d03e])
        by smtp.gmail.com with ESMTPSA id
 p2sm1912548wmc.33.2022.02.22.01.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 01:50:43 -0800 (PST)
Message-ID: 
 <3060b5d3e361823a872bf956f6d09ef816d6857c.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.3.5.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Tue, 22 Feb 2022 09:50:41 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 09:50:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56234

A build flagged for QA (yocto-3.3.5.rc1) was completed on the autobuilder and is
available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3.5.rc1


Build hash information: 

bitbake: aaa7f7af23d5f89fe4a5ed48c57ea3dfca07c79d
meta-agl: 9a50bd62dfac0d6ea1320b2ee083529cb98b9f92
meta-arm: fe35ff5ba809bf4826adfe65899a84e9c99494e8
meta-aws: 6801abf40bb255a31bce5061c5c6b72f5e2a8f58
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 36e915402dfe317654568f09f18fb6f7653603bc
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
meta-openembedded: 23598caeafce0af0dde8d1339cf5edff021f6823
oecore: 29cd1d796057ef5599fe17c39b42aa099f7b1c29
poky: 8d3e054f6d432b5ca0fcd613e0c767fab3c85f24



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




