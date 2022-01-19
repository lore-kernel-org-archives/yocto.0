Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42A3CC433F5
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 17:55:29 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web09.164.1642614927538899013
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 09:55:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OLLYBo2I;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id c66so6681310wma.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 09:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=f9Tdend2VZsSy7O+OB2kfdrbxlPU9ipdhPj0+SPfZ1g=;
        b=OLLYBo2IS5y7KTjco23G5FYqu/pdLdoR98PAfGO3jiaPhJw/hdkMlgf3Gp577nqInp
         sHmSvNjdGt2OBnSd+sk9nfDZYcLaoTHnDjb3/X5kJj7L+csDAis9zjIs651mldqj+fZ4
         Duv8Axz+72n8wHzhyonyOiwB9jbQUD+FcEM+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=f9Tdend2VZsSy7O+OB2kfdrbxlPU9ipdhPj0+SPfZ1g=;
        b=VjSTZeZbtdXBSGTjEtzmulNqOFzrpKoZYMnrrgmVqpO1tb6CCqVGd609saqOEP2XVE
         sPdMrBxbT4O7GxpWB1xeqsjuOiMK3BH4TxKXNdOFqCx1nUq9ZaqrvYJHwRjjFFuQPyNZ
         NteOweDin8Vc09/dhiM+BhFjPShQScasP2pn/1My21qDcySBskXhuGbxci3Fr4T7zZ2b
         eEAJgyzfZxaE9H1owz5lTyDXyo5i5plQOxWBgl6vXygogDS9PSTZ4oFJCHc2TocBGk7a
         Foh7IK2rie4asNGqmvdyE70zOSFmJ9RRdYgrE3flnwrMqNEbaLY0m3bUNdxtyicGVeMq
         +fWA==
X-Gm-Message-State: AOAM531n1mls/gLFWXwwrb/mTHGm3bXsyjG6x35pYncZqN/5rU50tf8u
	uTmZls/WwUaZoX40UQK2IxBTNQ==
X-Google-Smtp-Source: 
 ABdhPJzfwbBCRKtL1BEeshK00+8gNr+Rqu4FQtMkXM16xHM3x2gruVzrqyUfbOH6kA3KvtfoBsjeAg==
X-Received: by 2002:a1c:f01a:: with SMTP id a26mr4631801wmb.175.1642614925759;
        Wed, 19 Jan 2022 09:55:25 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:4e1a:65bf:4ced:cc2d?
 ([2001:8b0:aba:5f3c:4e1a:65bf:4ced:cc2d])
        by smtp.gmail.com with ESMTPSA id 31sm612829wrl.27.2022.01.19.09.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 09:55:25 -0800 (PST)
Message-ID: 
 <58b679188bd0d7472380c4412476864fa4393943.camel@linuxfoundation.org>
Subject: Re: [yocto] Invalid checksums for SRC_URI ignored?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>, Peter Bergin
	 <peter@berginkonsult.se>, yocto@lists.yoctoproject.org, Ross Burton
	 <ross@burtonini.com>
Date: Wed, 19 Jan 2022 17:55:22 +0000
In-Reply-To: <c6038301-7fde-ba25-a75a-bc1c4f614271@bootlin.com>
References: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
	 <4cb625ab-23f3-f0e0-f8c4-b4feb65caddd@berginkonsult.se>
	 <c6038301-7fde-ba25-a75a-bc1c4f614271@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 17:55:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55922

On Wed, 2022-01-19 at 14:59 +0100, Michael Opdenacker wrote:
> Peter, Ross
> 
> On 1/19/22 1:56 PM, Peter Bergin wrote:
> > Hi,
> > 
> > On 2022-01-19 13:16, Michael Opdenacker wrote:
> > > Greetings,
> > > 
> > > I reused a simple "hello" recipe and added a non-matching checksum to
> > > it:
> > > 
> > > ...
> > > SRC_URI = "file://helloworld.c"
> > > SRC_URI[md5sum] = "34f0efd76b4f18888888888833cdd129"
> > > ...
> > > 
> > > The rest of the recipe comes from
> > > https://git.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/hello-single.
> > > 
> > > 
> > > Why doesn't Bitbake stop, reporting that the checksum doesn't match the
> > > source file?
> > > Anyway, why does the recipe build without a checksum? Shouldn't
> > > checksums be mandatory?
> > 
> > No they are not mandatory for all fetchers. They are only used for
> > content downloaded from non-local archives.
> > https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-fetching.html#the-download-fetch
> > 
> > 
> > https://github.com/openembedded/bitbake/blob/32180d5057c818a69987aada482e82acf3c72ef2/lib/bb/fetch2/__init__.py#L1268
> > 
> > 
> > ^^ here you can see the selection of URI's that automatically needs a
> > checksum.
> 
> 
> Thanks for your replies. This all makes perfect sense then.

Personally, I think where the checksums are present, we should check them
regardless of url type though. I think I have an open bug related to this and
the uninative fetching.

Cheers,

Richard




