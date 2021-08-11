Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web09.5052.1628671410546990166
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 01:43:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BOoKWDUO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id f5so1882799wrm.13
        for <yocto@lists.yoctoproject.org>; Wed, 11 Aug 2021 01:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=op6L50NSlG2ynvcgoNfXg1cd8LT3tLo8M+nQUrStTuk=;
        b=BOoKWDUOc3n+KyjuSjDaadejspTVdFlcKJIJjzX556ZhF5SPVJKcWsdzWCLYGa1+SU
         gQbiOTPzPCpPcxw0Emm4uqbNK37rUflpZGbz81+5mwH83TBTyGH2Z8OnnBaisvfVIh1o
         XiUbv5jeLT6214mU/YUxmwnI+9KaFfvMpGkDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=op6L50NSlG2ynvcgoNfXg1cd8LT3tLo8M+nQUrStTuk=;
        b=aKfzICn7+41lLNDpBSjMYc+7tu+1UbiRvyVUfg1hIUDhHtPNQuUu4wvgrRqvZKAyeL
         MKbWskxA1egkIK4xkt5siio0X/kG0G6LeuUVBAo2ylqrwgEzXMQIG1HoVJXr1UH6Jpw1
         E0Pf882JfvWzEoEvuu6VQwsgXwOn0nBArubDIrvan78qI2iT89xVgCXFjUWUP3W49Fa0
         ozAw+cPGgjHLqA6vv3EfezDAelG+kmrP5OU5neKnmErFrRN0wy2shIMkXmn+fk3jWrys
         pOTJB/GKq01tA1sagdWWE40cbv7ybjaVru8BcdknPOLyaCTVZqTNmD2TCzdzptYT8NOB
         h5cw==
X-Gm-Message-State: AOAM533WdaLWSY3ZnfVadyo/lbRxscM30hbjpcMQ84gsOL9FhCYld7nU
	V9kSUcQWeLWoZmBkWWEigfK07w==
X-Google-Smtp-Source: ABdhPJwQxm0xOaOlwcY2p2nVVWk+HHyybLamt+6Mg6hk/8R1tZbBYWqIXoPybXOdmJrZAAFQbEE3EQ==
X-Received: by 2002:a5d:42c9:: with SMTP id t9mr1696717wrr.356.1628671409176;
        Wed, 11 Aug 2021 01:43:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4282:face:6a07:1a9d? ([2001:8b0:aba:5f3c:4282:face:6a07:1a9d])
        by smtp.gmail.com with ESMTPSA id j194sm5245739wmj.3.2021.08.11.01.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 01:43:28 -0700 (PDT)
Message-ID: <02916ac5b9b0a5724a88c1e65a91a2df66738d12.camel@linuxfoundation.org>
Subject: Re: [yocto] New Override Syntax
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>, Darcy Watkins
	 <dwatkins@sierrawireless.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 11 Aug 2021 09:43:25 +0100
In-Reply-To: <ccd0e6f2-73bf-fcde-6898-8cb129fce2ca@bootlin.com>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
	 <1699FF2DD7128D19.12542@lists.yoctoproject.org>
	 <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
	 <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
	 <d23e3d7bee796884ee58c54cea558bc4566de1b6.camel@linuxfoundation.org>
	 <ccd0e6f2-73bf-fcde-6898-8cb129fce2ca@bootlin.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-08-11 at 10:18 +0200, Michael Opdenacker wrote:
> Hi Richard,
> 
> On 8/10/21 10:21 PM, Richard Purdie wrote:
> > On Tue, 2021-08-10 at 17:51 +0000, Darcy Watkins wrote:
> > > My apologies.  I don't think I made my question clear.  I am asking about the 
> > > compatibility of old style override syntax moving forward (and new style syntax
> > > in old versions).
> > > 
> > > So if I continue using the old style override syntax (to ensure sure 
> > > compatibility for use with older Yocto versions), at what future Yocto/OE 
> > > release do you expect that old style override syntax will become erroneous 
> > > (as opposed to say triggering deprecation warnings, etc)?
> > > 
> > > Is support for the new style override syntax present in any existing 
> > > Yocto/OpenEmbedded releases (in other words, has it been there for a while, 
> > > but we are just now actively migrating to use it)?  If so, how far back does it go?
> > The new syntax will work on the dunfell, gatesgarth, hardknott, master and new 
> > release branches going forward. That applies now and that support will be in the
> > next point releases for dunfell (3.1.11) and hardknott (3.3.3).
> 
> 
> Thank you for the clarification.
> 
> Why do you mention Gatesgarth (3.2) while no update release is in sight?
> According to https://wiki.yoctoproject.org/wiki/Releases, it's already
> end of life.

I mention is as if I didn't someone would ask about it. I did backport the change
to the corresponding bitbake branch and it hence made it to the poky branch for
gatesgarth but there are no plans for any further 3.2 releases.

Cheers,

Richard

