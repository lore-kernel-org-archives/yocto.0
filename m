Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22C32CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 19:44:05 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.10632.1697658241104965100
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 12:44:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UZuPA5BU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40837ebba42so13085785e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 12:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697658239; x=1698263039; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=80ahV/adNWFLWu5WkQs6/6n3/WyD/Nb3qLqx/UWW2As=;
        b=UZuPA5BUa0okUtyMdn2uQUVGLWEhqv0YIc37JOoM3lsGR71QCiPj4AiwRlpjktsK2H
         Fp+xivogduqHxnaJHESjvbTj/inQt6xycUgUSQPAAy6LvaekILJEyvIKjx3oEVMV7cyL
         4fxZHUr94iuDw6ZGqxdyxX3iOY3XNXfcu/kLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697658239; x=1698263039;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=80ahV/adNWFLWu5WkQs6/6n3/WyD/Nb3qLqx/UWW2As=;
        b=Mx7QZgssuae15/psSGiHJaMWkQOnRRj5veQOxHAFjFy3QlleiT9ukdjXD4s61PdVxk
         L/d6Csoyw3aWV8rpRQmAxJtBEgJHIZZyaG3L8/wtlWwXepcJcF3WaanjHu46Ya+2TwIe
         K2Mr0nf2ZmonnAwsu5zJ/aMYT3wJ8YKJTEA5rkP/4ceKs7vLTCOMlOX+iZKSJ/chStFb
         OrDFClUku4uINl98V96Y80y9xmVwsB7zMTXF55laQUUdSf+YKw58QMH90AeF51EaVcqh
         UPZfntDUQdttCklrhn3ddCSl6wAj9Kcp96ZLNbjEWfQXFH8ly/XNzkRpNCcXfZc3AMHU
         aUkQ==
X-Gm-Message-State: AOJu0YzFHh/av+Ejg/afF6m2sbrgN3BsTrtObEnp2nOFdQCrbEkS5/iu
	k2V83xZ3JNvd/opillqxjt9WoA==
X-Google-Smtp-Source: AGHT+IGx9vZw8xe9i+lbRRWa2e8XMHVeJGd5phu2xkjj3hoGkxaCgx7kYyuG35IkKIyE5iEUZndkbw==
X-Received: by 2002:adf:fc91:0:b0:329:6e92:8d77 with SMTP id g17-20020adffc91000000b003296e928d77mr15750wrr.51.1697658239320;
        Wed, 18 Oct 2023 12:43:59 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id a17-20020a5d5091000000b0032d893d8dc8sm2813877wrt.2.2023.10.18.12.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 12:43:58 -0700 (PDT)
Message-ID: <0a3063a9d355acc42e5326e40539601f2d8dd145.camel@linuxfoundation.org>
Subject: Re: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: "qa-build-notification@lists.yoctoproject.org"
 <qa-build-notification@lists.yoctoproject.org>, Yocto discussion list
 <yocto@lists.yoctoproject.org>, Yocto TSC <tsc@lists.yoctoproject.org>, 
 Bruce Ashfield <bruce.ashfield@gmail.com>, Paul Gortmaker
 <paul.gortmaker@windriver.com>
Date: Wed, 18 Oct 2023 20:43:57 +0100
In-Reply-To: <EF291923-E5FC-46CC-9AB4-291695AFABC2@arm.com>
References: 
	<0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
	 <40ab5c11d917f68dc6115d24f2fd427cb4a1fd38.camel@linuxfoundation.org>
	 <EF291923-E5FC-46CC-9AB4-291695AFABC2@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 19:44:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61404

On Wed, 2023-10-18 at 15:32 +0000, Ross Burton wrote:
> On 18 Oct 2023, at 07:29, Richard Purdie via lists.yoctoproject.org <rich=
ard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
> >=20
> > On Wed, 2023-10-18 at 06:16 +0000, Pokybuild User wrote:
> > >    A build flagged for QA (yocto-4.3.rc1) was completed on the autobu=
ilder and is available at:
> > >=20
> > >=20
> > >        https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc1
> > >=20
> > >=20
> > >    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders=
/83/builds/6062
> >=20
> > There was one failure in the build, a serial login issue on ttyS1, so
> > an occurrence of our annoying 6.5 issue. This is the first time we've
> > seen it with the workaround applied.
> >=20
> > The question is to proceed with rc1 in testing, or apply the upstream
> > fixes and try an rc2 with that? I'm torn=E2=80=A6
>=20
> I=E2=80=99d say we should proceed with RC1 whilst testing upstream fixes.
>=20
> If they manage to shake out all of the failures then we can decide
> whether to spin another RC with the fixes in, or just release with
> what with have - with copious release notes obviously.=20

Lets run with this approach, I agree. I am running test builds in the
background and we'll see how reliable the upstream fix is. I think
moving forward with rc1 as is makes sense.

Cheers,

Richard

