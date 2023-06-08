Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CAEC7EE25
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 20:15:26 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.4529.1686255325442905846
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 13:15:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=O1x3auwx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3f6d3f83d0cso10136315e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 13:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686255324; x=1688847324;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CUeOtsSfiRKMfmuY8MrlFwb29dSSLaVP1BvXMfWsIpo=;
        b=O1x3auwxwHpcyNZyje/rYHMkQaRbAtSPmfgjCcqqVBdFbUa2kSprzAH7JStoyeJV/A
         rAKPR6rxqGLBEwiFiDc7mt8YG1XCHwrsF2iGPBLj+7IDkyheebiSgo2Zg+LNj2siNEy8
         ELt5f/IMHZajgbnEN9blgDiID8FsGQtPb3f0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686255324; x=1688847324;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CUeOtsSfiRKMfmuY8MrlFwb29dSSLaVP1BvXMfWsIpo=;
        b=MvxvrjF/hH5tdN5kv3AVT+Pm88h3cj2BtaFFg6SePcKui8aFSUgZtnbe0pUX9Rtw2X
         6jbreJ2Iz3uie3ZwJa9KYxOKGudiIeBTfZ6Dx6iC5QugBff7NIkS/ioOQL1mULYJ0Wub
         8UK1XnU1OMat6D9citaI6lA2S9IAQLTFBE2pCPhuJVvGP0n+83IYvDFGUeXIh8WD21tk
         zrokPDgyQwObXcErg15Z1KMjAmaM2wxl5HEf0UqZM7IwQZa7SewIEoNREPzQjD44Da/x
         oxq88rFtTLW+CfhqnBrMg6MQSLRP5NYfoiv6hIxH3jnNtchX95FSIa7mR5fBp7MqOFSn
         S6Kw==
X-Gm-Message-State: AC+VfDymqTPSdV5oRNVXS23TvIzDG/whBneq5zRXYVAQYXEgZ4oUMbv9
	bXtUC2C9jWqzkSB0141H4ib5CQ==
X-Google-Smtp-Source: ACHHUZ6SbpWFUYbeb7IVrGeyHY2NRO1Jylaj5YaOLqhjMP65I261DpBEu21Gc9IHyjfq+bD7/YMlUQ==
X-Received: by 2002:a05:600c:ad8:b0:3f7:f544:4993 with SMTP id c24-20020a05600c0ad800b003f7f5444993mr2399452wmr.20.1686255323679;
        Thu, 08 Jun 2023 13:15:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d212:ac52:2ca3:dd2f? ([2001:8b0:aba:5f3c:d212:ac52:2ca3:dd2f])
        by smtp.gmail.com with ESMTPSA id u2-20020a5d4342000000b0030e5c8d55f2sm2468833wrr.6.2023.06.08.13.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 13:15:23 -0700 (PDT)
Message-ID: <b5c6dfa4dfaa8d14c52a3269be6043dbef3e4f5f.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate-cache issue with SPDX enabled
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mwen@ambarella.com, yocto@lists.yoctoproject.org
Date: Thu, 08 Jun 2023 21:15:22 +0100
In-Reply-To: <hJ5J.1686151970057523750.KtUg@lists.yoctoproject.org>
References: <hJ5J.1686151970057523750.KtUg@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 20:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60235

On Wed, 2023-06-07 at 08:32 -0700, mwen@ambarella.com wrote:
> We=E2=80=99re using Poky Kirkstone(LTS) with the latest version=C2=A0for =
our
> SDK.=C2=A0Recently, we're trying to enable the feature of creating SBOM i=
n
> SPDX. But we met a sstate-cache checking failure issue when enabling
> SPDX to generate SBOM. It will be appreciated if you have any idea
> for the root cause. Refer to below details for the issue.
> https://docs.yoctoproject.org/4.0.10/singleindex.html#creating-a-software=
-bill-of-materials

We did work on this in master recently and there have been fixes merged
there, after which we enabled SPDX by default.=C2=A0

Unfortunately they were not straightforward and this may make it tricky
to backport into the older releases. We're still testing them in master
before considering that.

Cheers,

Richard

