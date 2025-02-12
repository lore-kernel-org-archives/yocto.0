Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77BBFC021A1
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 09:51:45 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.11452.1739353897630794100
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2025 01:51:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=K+6BmERT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso18402925e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 01:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739353896; x=1739958696; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dCYLHmLCkji6e54aMFA7st/8vagQwzUNz5FZLWqiPQc=;
        b=K+6BmERT0H3VCAtLUQhXkuF6rYzAp43MeHjjTqNe6ofDrFEjILb1WxzDNlf4eIm/l6
         y7WxgvgiZJWMQLrkTQ7UnAUV0xv17a05UQOLPm+wAL4baDa/NjWhHffv4D94MeoZqmVw
         xVDHgNIDpXRcJu1cj9+t6n++5aaeBCCcjAmxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739353896; x=1739958696;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dCYLHmLCkji6e54aMFA7st/8vagQwzUNz5FZLWqiPQc=;
        b=dnyTXwASAu1KHn1PJOO5BwjOqJchHSM5tLE2LYcLBVnRe1/ZTjZb3nsBHkdkmeSAEC
         E7+5qgJTJ7N6HXhKfwJgxIrT5DIoryw35aZy1tE9ycte+bG+5QCNtDgRc63QnozzcJJG
         GSSfuhMGto6BvIkikVps5iFnssWcdxRdl3tNhbVmPdRzsSuaKIYQxsKuwd1JPjGJXbCX
         UwCaRMYRrmGQdB/vbXNlCMl/mwBLdFFYREwSW60M5IxIlIQkFwQ/u6eiG+Pf/mVHGbWB
         yw3xsmCrgjgRGAUZNjs/2ZA+bAff+WjBV6TtSQ7MpmEorzn3SfAdPvDiVGvbappBXCl3
         lEgw==
X-Forwarded-Encrypted: i=1; AJvYcCXMhbi5hS5oI0+LKA0Va9lvtsWDi+FK7Q7KS4yur1uENT1DTluEUnwMHaUlr3wZPLeynnjOwg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwKoo+gc3jGCIjQx08WIrTSEVVRsS818cK5H+UIW5CqVDCJJHFF
	c/pCGn/L5gwDhCotTlvmROXXRo6fRWvJxd7AdIxymI0r+pHrGrk/lyZR0f9AyPs=
X-Gm-Gg: ASbGncvyOQLsGOACUJuhjuNnkbiOhsWg5w05onratG6SZ6q2pM5QI3IARs49fViBt4L
	B1l+80RDRk+Xl8i2SPJTpAH82nbh7KW282pM1/3045vrwRPkJXSA9GL6eIQYuIFtEnE/hFImtiR
	4bnOx0dWbdfN1m/tAh9oRIEn5NIixs3ohWFWMnBYzUqpJkazHXzhQDiCqONRysgCM7BzoddaWKf
	GkYZYOJt5lHuFj4M8DlQGWPeijiOCUctaa452roo5S7v7XBmFVzRFz20B8/gvk0s4U+OrQ7MhhX
	+BsUxlSBFtWCO5zuo/J+1VYQl1bu+ElVH7HV3zrfE5XZHzhk5GGzAo2d8u9H25YwEb74wGF42BV
	oEg==
X-Google-Smtp-Source: AGHT+IHdN3CHPsY60mIMQ0fLLlcizW4ANnWVw5TcTr0B+7a6I65wmDutouYXsXtSH5rdrBNNQexnQw==
X-Received: by 2002:a05:6000:1a8c:b0:38d:dd52:1b5d with SMTP id ffacd0b85a97d-38dea2517c9mr1603618f8f.4.1739353895907;
        Wed, 12 Feb 2025 01:51:35 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:af16:73ba:601:d9ae? ([2001:8b0:aba:5f3c:af16:73ba:601:d9ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dcd21fe18sm13882995f8f.91.2025.02.12.01.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 01:51:35 -0800 (PST)
Message-ID: <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yoann Congal <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
Cc: alex.kanavin@gmail.com, ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Wed, 12 Feb 2025 09:51:34 +0000
In-Reply-To: <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
References: 
	<CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
	 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
	 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
	 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 09:51:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64781

On Wed, 2025-02-12 at 09:08 +0100, Yoann Congal wrote:
> Le=C2=A0mer. 12 f=C3=A9vr. 2025 =C3=A0=C2=A000:36, Richard Purdie via lis=
ts.yoctoproject.org <richard.purdie=3Dlinuxfoundation.org@lists.yoctoprojec=
t.org> a =C3=A9crit=C2=A0:
> > The repositories were added to try and share bandwidth costs, give
> > people easier mirrors and various other justifications. I warned
> > strongly about the pull request problems at the time, I was told it
> > would get handled and people would help and I was over reacting. Some
> > of the people who made those offers aren't active with the project any
> > more, other things just drifted with time. At one point I ended up
> > having to add those mirrors to my own push scripts and maintain them
> > because nobody else was willing and we had complaints they were not up
> > to date.
> >=20
> > You used to be able to disable pull requests for six month periods, it
> > looks like you can no longer do that and it was a pain having to try
> > and remember anyway.
> >=20
> > The bandwidth/mirror/backup benefits are valid and I'd be reluctant to
> > delete them as some people can only discover things through github too.
> > Google indexing doesn't work well with our own server.
> >=20
> > So I guess I made my own peace with their existence. I know touching
> > them will make it look more like a condoned submission method but I
> > really don't see many good options here. Removing them is a simple easy
> > option but life sometimes isn't easy/simple.
>=20
> We can try things to push users out of github :
> * Leaving a fake PR at the top of the list with a title along the
> line of "Please don't open a PR but instead go to <contributing guide
> link>"
> * using the PR template (the text pre-filled for the new PR
> description) to convey the same info
> * A bot that automatically answer the PRs with a comment with the
> same idea (the bot could also close the PR but that might be a bit
> harsh)

If anyone has experience of setting this up I'd welcome help. The
things I did learn briefly looking yesterday are that:

* the template requires putting .git* files in the repo which is a bit
annoying

* there is a way to do it in a separate repo but that would apply to
all repos, not just oe-core and bitbake, at least from what I read

* our type of account may or may not have some of the features needed
for bots and so on

So I'm not against any of these but it could do with someone with some
experience. I can probably learn what is needed but I have time
challenges like everyone else.

There will probably be a need to maintain any bot going forward too.

Cheers,

Richard




