Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E86EDC433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 10:57:46 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.9478.1648119465578780471
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 03:57:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Cwq+/XVT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id
 v2-20020a7bcb42000000b0037b9d960079so7015664wmj.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 03:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=KbztyvUuziTJTLN+RHaFPMTb1IbzDV10tQgfqC+V1WA=;
        b=Cwq+/XVT4cK6yAZqJ1V5yRi0WxSk6OzJcxV5AZ7faq2V56FboixXqnGgH6jmP6yG9x
         7odH7EFu99mHd7oyqqdn/hc1mJHUgXO7YSG2pJFNppnyLtVC+hqrTu6jrDNrGc5lie0v
         LS5FQa34bsKGAIx2F4/JU6q1GMMQMMk2fSr7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=KbztyvUuziTJTLN+RHaFPMTb1IbzDV10tQgfqC+V1WA=;
        b=VLrXReN3KR0l3Mqpd6VFHffh4AdaMpPb4gd4LTYdHdwSWf6qlXsShNB7aU7j5h6Gmf
         ZZ2zks9NwHkoz7pqzVoGLjUE7ivUP0v8cvVRDyfZa2Mahqi8WWqNiBS1FrQ8cGqCacBd
         OBL5QDb0T0GLPJotTsH5nwbsYW1nNvSw2e/aT4y0Y71J1hwmac0HEVav3Suh+sZdCEoe
         pEALJFo7yXXFKb0K19TBIuFuGXsADcCYU7fc4AzchI397tkg4qQ/nQ/V+gJHjV+Ikaem
         QvC9pAFHcCwCU2wQ9QSg4CddKR1/+XfI6kq+5HnXeKhVnh2f8wfJifbqlpFAgimtOrOL
         47+w==
X-Gm-Message-State: AOAM533rWmSlw9qp1Qknhgp/5T/4xWJG5Beo7cKwYZkKfr6jJzdKT/3e
	yuR5/onyOIxSutTcwkZVaEN1KVgr+PgR/kxl
X-Google-Smtp-Source: 
 ABdhPJyZBIg4b5X9WyIfxmj16t/7MDlCoUK902+py/8pr1f0QiBaaWzFdi6Lhq/Th1nyE7Ohz+EsGw==
X-Received: by 2002:a1c:7303:0:b0:37c:9270:2ff4 with SMTP id
 d3-20020a1c7303000000b0037c92702ff4mr4084613wmb.99.1648119464114;
        Thu, 24 Mar 2022 03:57:44 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:468a:3ed0:d59:9804?
 ([2001:8b0:aba:5f3c:468a:3ed0:d59:9804])
        by smtp.gmail.com with ESMTPSA id
 n37-20020a05600c3ba500b0038cc9d6ff5bsm1945142wms.4.2022.03.24.03.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 03:57:43 -0700 (PDT)
Message-ID: 
 <fc96c0b80078bcafc0a2191e57308ede28991227.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4.3.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Date: Thu, 24 Mar 2022 10:57:42 +0000
In-Reply-To: 
 <0101017fb9c7ced5-43a54b46-8bc7-4123-b8f7-0b366a9ff1fd-000000@us-west-2.amazonses.com>
References: 
	<0101017fb9c7ced5-43a54b46-8bc7-4123-b8f7-0b366a9ff1fd-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 10:57:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56549

On Thu, 2022-03-24 at 02:35 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.4.3.rc2) was completed on the autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.4.3.rc2
> 
> 
> Build hash information: 
> 
> bitbake: 1bc9f800ffc9b740cc1de0132ed04f07eadb3479
> meta-agl: dd8e34ef5383d95d941a3afc9a03d3fcbba699dd
> meta-arm: 33bbdc67f2ed7189398292ff58a7fee42a85a166
> meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
> meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
> meta-intel: fb9e0633614dbf956da185d291333bcc1b137e5a
> meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
> meta-openembedded: 061b7fc74f887454251307ef119b808a90654d3f
> oecore: a92a10d1ac5d050619cd6f71da5e6fa86bb9ab13
> poky: ca162b5063ac877eac4987c1b5312109b5157a2a
> 
> 
> 
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

Could QA please hold off this as I think we're going to fix an issue seen in rc1
and build an rc3. Thanks!

(and we now have working automated list notifications again which is great!)

Cheers,

Richard


