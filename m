Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84B7E71D21
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 12:27:27 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.15897.1695990441264977807
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 05:27:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FwbgBJZn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-406618d0992so1947145e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695990440; x=1696595240; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zib+8BZ+XV+juswUECKQT6+1X4tCG/qRgy756v8+8hc=;
        b=FwbgBJZnDX/R0myLbXPAboAE29wSehbVbOClYUFCT81VXSeYRM2zDsF5nAze/ESr1v
         ySQh6DKqbkk7Y2dwmHYuYrtQbTuoH+HYhP8zUX6auvgOPNUG2vRC7VoGPpbxhMiwVKHZ
         xAbGgb7j6b4zpRyg0P0dJzf6A92LpRfWgQNkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695990440; x=1696595240;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zib+8BZ+XV+juswUECKQT6+1X4tCG/qRgy756v8+8hc=;
        b=SUdMhhiNVkz+Ahfze386k8PyuvJgJurpr2JRB5bCPuQ6JJPZKblyyhj1ii4dMPVCY9
         hWopnWNAtxncG/4pRBIJUBqhgedh6b0mYTovxFRmqWtZRSdvusgPZ5IELxi/bC3Df/mH
         qW9N1OM505b1ga0JF77lQNxH6GDzpCNpM2C9rcvl8eNRocp+MdrWyHnGs/0v8PYXz3Sg
         sYV2W2cGl8V2aGP3iMfSnd0CckYIEat3YG3wDQuvjOGYBqW2a+kKLE52J9cvItKGiaKy
         cT4VXiZuzLJ9sachypTkpwmqNPEGSvyhXY5B90olEYkEoEg0ne5Vx2t6gN7UBuZcfaSL
         1DqA==
X-Gm-Message-State: AOJu0Yzbj66wbUt+hsmt/7NYiMuhfhCPewHkIiD2JWzNZ8M8GQSkiBP0
	RGu1yZ3q971HxvpCKBe3tUsptA==
X-Google-Smtp-Source: AGHT+IH4+M6EbUFdpS8nrsQnOQkXQyJ9gYGi5DBAUiGdiSW4BkYdslzWzyM1n5EgMCDrDSQrluaoTQ==
X-Received: by 2002:a7b:c3d0:0:b0:404:732b:674f with SMTP id t16-20020a7bc3d0000000b00404732b674fmr4124083wmj.34.1695990439630;
        Fri, 29 Sep 2023 05:27:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:e99:47ca:3201:16b0? ([2001:8b0:aba:5f3c:e99:47ca:3201:16b0])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c248b00b003fefe70ec9csm1339630wms.10.2023.09.29.05.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 05:27:19 -0700 (PDT)
Message-ID: <ad1f866bf7b231ccd57f91f2f0a9256d18eb533f.camel@linuxfoundation.org>
Subject: Re: [Openembedded-architecture] Core workflow: sstate for all,
 bblock/bbunlock, tools for why is sstate not being reused?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "chris.laplante@agilent.com" <chris.laplante@agilent.com>, 
 openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, 
 ",openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>, Julien STEPHAN
 <jstephan@baylibre.com>
Date: Fri, 29 Sep 2023 13:27:18 +0100
In-Reply-To: <CANNYZj_16s-JuZAQ3pccnf-8Lb=yMQ1+a9FiU1abLXgORs70rw@mail.gmail.com>
References: 
	<CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
	 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
	 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
	 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
	 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
	 <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com>
	 <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
	 <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com>
	 <24b60007a669d075fa1e4ccd18980ada93714c7a.camel@linuxfoundation.org>
	 <CANNYZj-YBTN_yje-fyzp12YDF9XMaZSuMvLh6qA1H+9GEYEmfA@mail.gmail.com>
	 <7564ae2b6c036b10a35e8c9927c0ab2cf533f35c.camel@linuxfoundation.org>
	 <CANNYZj_16s-JuZAQ3pccnf-8Lb=yMQ1+a9FiU1abLXgORs70rw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 12:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61163

On Fri, 2023-09-29 at 14:06 +0200, Alexander Kanavin wrote:
> On Thu, 28 Sept 2023 at 18:49, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>=20
> > I'm curious to see what you find with analysis of bitbake-whatchanged.
>=20
> I've taken a look a the script. It obtains the current location of
> STAMPS_DIR, then runs this:
>=20
>         # Generate the new stamps dir
>         print("Generating the new stamps ... (need several minutes)")
>         cmdline =3D "STAMPS_DIR=3D%s bitbake -S none %s" % (new_stampsdir=
,
> args.recipe)
>=20
> Then it walks both trees, matching up file names with a regex:
>=20
> # Match the stamp's filename
> # group(1): PE_PV (may no PE)
> # group(2): PR
> # group(3): TASK
> # group(4): HASH
> stamp_re =3D re.compile("(?P<pv>.*)-(?P<pr>r\d+)\.(?P<task>do_\w+)\.(?P<h=
ash>[^\.]*)")
>=20
> Then there's some code that finds out what changed in the above
> between the two sets.
>=20
> I don't see a way to make it work: messing about with STAMPS_DIR like
> that isn't supported, and will either do nothing, or remove the
> original stamps. Also stamp filenames aren't really a 'public API',
> are they?
>=20
> Should the script simply be removed, or is there some better way to
> re-implement answering the 'what has changed' question in a way that
> doesn't flood the console with task hashes? I'd be glad to get
> suggestions for this.

I'd prefer to see some dedicated bitbake API used even if we need to
create/add it. tinfoil and some of the bblock/unlock work shows we can
get stamp data, the question would be how to get it without
"disturbing" the existing build.

By using dedicated API, we'd be able to control the console output.

Cheers,

Richard



