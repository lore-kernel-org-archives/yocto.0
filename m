Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40FD1C433F5
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 22:25:07 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web09.562.1637101506304158510
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 14:25:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e5Rj1jZi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id
 az33-20020a05600c602100b00333472fef04so3182360wmb.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 14:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=XT+40nZzaL9YQgcfwzXGRWPqXt6XKgKezbfYB5/97SI=;
        b=e5Rj1jZiMNcrUfsmpI3mQUY3w4qux4/yScQVd5Ers3J0AzsWL2oqtR93h0CCKO5y31
         NWxRc8fFuIYVWOtnPJNu3/87Z+9+4tQ3pKXDlgkYSfgPjOgPdLawG3kwibKhCfYyZPku
         LHsJfDIz0rbNfd//5gXTMcpOac0rWj70zZDuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=XT+40nZzaL9YQgcfwzXGRWPqXt6XKgKezbfYB5/97SI=;
        b=AehYzyqjT33XNy8Ru+QnsriC3RHTR66aWJfmevukIYUcONPTYHzMusJtZcvTlMv0It
         8u+Qe6H5lmFDGGZRRaviGWH/dtmufSUvU5nMJZdWTl3VOerlYjFAiTfnI/XAk7u7/k73
         Du1qDosptvLKoM7SjgCQJPfZEEB7ifCIW//Q2UNqxDopEGaN3e5EDDS2GqSty22Kg30q
         HmWrGWquxfVm8/ZxiBJkNEL8qxJgvONfRAR5sOl+qB+mN/oO8DtInbPQXI6ALDQkXPLC
         eoIUsgyttHcCYKHXTMdJRZ8boT2r3RUfc9rfNJQU3Wg6KbTcilMRQMCVs79j9p2jHUxf
         gaqA==
X-Gm-Message-State: AOAM532uCgowtm0q0lJPGK1uqMLo5t6OhxJwyTvh+slxJ0Z6vHQbLtmS
	hlXpc/Gt0WpVV83NFo430RIv5xq0KVhdNw==
X-Google-Smtp-Source: 
 ABdhPJxUVMsh8Z8qDiU7PIJd1f8xyOCkamN1oKyTRgvG2CC/rmbLAGs66ndrA+4a0nF+wjL2D5FaQQ==
X-Received: by 2002:a05:600c:3b28:: with SMTP id
 m40mr73729147wms.100.1637101504380;
        Tue, 16 Nov 2021 14:25:04 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:41f4:5ebc:325d:efc3?
 ([2001:8b0:aba:5f3c:41f4:5ebc:325d:efc3])
        by smtp.gmail.com with ESMTPSA id
 f133sm3579276wmf.31.2021.11.16.14.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 14:25:03 -0800 (PST)
Message-ID: 
 <581c5d14ffc3eca5b39297c422a08eabba4f6d93.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.12.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Tue, 16 Nov 2021 22:25:00 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 22:25:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55354

A build flagged for QA (yocto-3.1.12.rc1) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.12.rc1


Build hash information: 

bitbake: c0348de8121c3a842bf44906f7e2f79e93f7275b
meta-agl: 0406cbb235fb08ce9e6f9d07e64e0932b20050a9
meta-arm: ce535dfb96de4d2529f091d7d85a7172c626001c
meta-aws: 2f72301f5a73279c4d2f12fc6218876629666e06
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 625da85e7b01b71cc310267b0ba7119eb139e9f7
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 7889158dcd187546fc5e99fd81d0779cad3e8d17
oecore: 44b1970c40e9d73f6e63fb10cdc55837a26f5921
poky: 0839888394a6e42e96f9f0d201376eb38bc79b24



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



