Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AE6C433F5
	for <webhook@archiver.kernel.org>; Mon, 31 Jan 2022 21:47:14 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.39474.1643665633095848677
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 13:47:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=E1A1KYY1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id u15so28105225wrt.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 13:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=zSwz49WfWV0LcMB19B48qUX2AorsmhChDqoNH9lG3z8=;
        b=E1A1KYY1CH9LYl9fTynvTZzQpeAjcmXFsrBlrDaGW2dk1LNp44xTs1EQkFO6WO1jXU
         ZTzSR2R4ru/rD+B0XA9pstjPZY0AOveUT9BduMtSCOaiLKB9IsOLQAr3hZKNTquwj1Aw
         x3FTWkdPeaiAVrBPpmnRt0Se2XFcOMqyl7P38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=zSwz49WfWV0LcMB19B48qUX2AorsmhChDqoNH9lG3z8=;
        b=bDm/EeQWPM+kfAmNN5YZdXSImY741Cjy2aOg0Dk26NMFiRMrCRtb86zmq8/3vCgwr1
         xyWF8a62cpKpDLOTzwo3/e2TEFifJma2XkN/U/Xq0Y2PYbVHyFS/TYaBfidknn1yDi0s
         o6O2xb/xVhVmcyDSdbWrIIQpDJlLIBufFOU3kLUbkfg/w1+c5KzOYttZMK9+OqWZSJ9s
         nbmvWBTnvKVJssRewx8RbVkR6TQx49kGpUwffnuFQWB0lGRdrs2q/E9v6t9WvWhufDrA
         807Xcmr3cIbCnZqNaMYrW/K70icoaf3JXFtC9eqdN1ChPhUe21dHHqftRZPEBXeHxnmq
         QDBg==
X-Gm-Message-State: AOAM5310Yrz9AZkFYhhQlFKsuqmEalVUresO0oiZDmn4Pk0KqmlId3Qu
	XiHPHUb+THtwtMSC0/yBYUkywwDZ+C22rw==
X-Google-Smtp-Source: 
 ABdhPJy4GLTIiFKmbNApUAB8ELc/GGHt1ASRHKlZ1Sz3ITwUWU55YpB2RVxQEDE66phHyGd54Z7h6g==
X-Received: by 2002:a5d:4d8b:: with SMTP id
 b11mr19894675wru.551.1643665631160;
        Mon, 31 Jan 2022 13:47:11 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:687d:5e4e:cf88:f9f9?
 ([2001:8b0:aba:5f3c:687d:5e4e:cf88:f9f9])
        by smtp.gmail.com with ESMTPSA id
 n26sm462851wms.13.2022.01.31.13.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 13:47:10 -0800 (PST)
Message-ID: 
 <fc898479cfa03b2df0987d9d31abad1800df1e8c.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.14.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Mon, 31 Jan 2022 21:47:07 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jan 2022 21:47:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56032

A build flagged for QA (yocto-3.1.14.rc1) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.14.rc1


Build hash information: 

bitbake: be6ecc160ac4a8d9715257b9b955363cecc081ea
meta-agl: 7a644d636237459c54128a71d083cb6f9e1b8e60
meta-arm: ce535dfb96de4d2529f091d7d85a7172c626001c
meta-aws: 9979cfa676105cb68cfadfdaeabf044d7c919319
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 87984115eb6ed1a4c17204629dcb100f6b76fe82
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: ab9fca485e13f6f2f9761e1d2810f87c2e4f060a
oecore: f3be01483b01c88f8c4ba24ca73ccf1bcc33665c
poky: bba323389749ec3e306509f8fb12649f031be152



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




