Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3023FC4167D
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 12:28:41 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.184609.1698755315471758824
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 05:28:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UvyLNsHC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-507975d34e8so8115500e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 05:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698755314; x=1699360114; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SlQL2OHyy/Z1dMLWqG6Ih0KreCk//b+l4kfUpE6MN5s=;
        b=UvyLNsHCN9kOblY7GlrRzoarRzl5yQXx8L/hDyuNUv+9O7hVCp+fDzjOBGfipPytSN
         n7WPdAnAeZnMwv2ZH0S8+bxSdKO+gC18NuevWsmJITOdNbzJyaZ1yy3Urv9wpR6QOM4f
         J1Wtp/C3vn57W8EtVJEf+T9APHfZ3uMdjX7Sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698755314; x=1699360114;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SlQL2OHyy/Z1dMLWqG6Ih0KreCk//b+l4kfUpE6MN5s=;
        b=iFr0s9GX3A6w71DDRu9zV3XdhkjAQL3EdVd9gSQ2YnVYnkIGAn1ok4J+nTKwvFI6Cg
         XalPE3YstrkczzeGc131ASwbqY/4JdFlKtOykmlJUo4vTe3VvnU3MyPW0z42bFcbjQ19
         3WnKinAVan9CViq7wiXafZK8YPos1rDSnKbaItUDuysKAMeQhBQakbKy5Yap/osd6Nln
         Zxe20NzMWYxQKhjLoOsvn7ZBVYMeQgj3bPhaxuTFCDGheL4YpoC5apNu4BxxEuUdZIPt
         +2DUmn2L2F6aGOmSx1WhlkGE9M5ixnWd6hB5JyzAF8O+NB1x0lM71kzcGEkiH9NcUHfS
         lW9A==
X-Gm-Message-State: AOJu0YyTTE+JQwmzOSZmpmH+xWS+DOphbdGtKuI+T0kWlnmlADk3fFWZ
	Uv0AaMFlViU1Gt0t3Yw9dnGz+A==
X-Google-Smtp-Source: AGHT+IHmGL94wA7s7ObpYBkMVRa/Ejh/+ykqM/F4wys8hshWFjM31UKZnw0HSbRb7wesPuTkz2cZGQ==
X-Received: by 2002:a05:6512:1586:b0:509:1ecb:5a04 with SMTP id bp6-20020a056512158600b005091ecb5a04mr6286922lfb.19.1698755313588;
        Tue, 31 Oct 2023 05:28:33 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9850:4974:d357:58d5? ([2001:8b0:aba:5f3c:9850:4974:d357:58d5])
        by smtp.gmail.com with ESMTPSA id w21-20020a05600c475500b00403b63e87f2sm1656660wmo.32.2023.10.31.05.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 05:28:33 -0700 (PDT)
Message-ID: <7488045369ecd729ac3df2e526a74ee644fbcf26.camel@linuxfoundation.org>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, ",openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>, Julien STEPHAN
 <jstephan@baylibre.com>
Date: Tue, 31 Oct 2023 12:28:32 +0000
In-Reply-To: <CANNYZj_mjbH08rHoo0FzFihcax9zQ1zR6QRoEA3C_JOHG7P9kg@mail.gmail.com>
References: 
	<CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
	 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
	 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
	 <CANNYZj-JhGnGFRxaF0+Q_5Sqq76kAg1pSBBMka_xefuhMv6-vQ@mail.gmail.com>
	 <ea84079102bca429a6ae521d218118952a79f111.camel@linuxfoundation.org>
	 <1792EACC19CD8046.7262@lists.openembedded.org>
	 <CANNYZj_mjbH08rHoo0FzFihcax9zQ1zR6QRoEA3C_JOHG7P9kg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 12:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61525

On Tue, 2023-10-31 at 13:08 +0100, Alexander Kanavin wrote:
> On Mon, 30 Oct 2023 at 16:02, Alexander Kanavin via
> lists.openembedded.org <alex.kanavin=3Dgmail.com@lists.openembedded.org>
> wrote:
> > So here's what could be done:
> >=20
> > - esdk tools become symlinks in poky/scripts/esdk-tools/. esdk
> > environment script puts that in PATH, rather than some custom
> > esdk-specific location (the code to generate that can then be
> > dropped).
>=20
> This is now implemented (needs to be tested on AB).
>=20
> > - esdk tweaks to local.conf move into a dedicated include file, which
> > can be static and under version control, except for perhaps
> > METADATA_REVISION:poky =3D "4a1e0b9625729e422fcf24e632ee2a3c79f986d5" -
> > I need to check why is it there and how that is used.
>=20
> It's actually more complicated. The code to generate esdk-specific
> local.conf with all the tweaks has too much dynamic stuff in it which
> is subject to what various variables are set to. So I'm thinking of
> extracting that to a dedicated function, then attaching a bitbake task
> to that function.
>=20
> Then we can pull all of it together into 'devtool esdk <image>'
> command (or similar), which would enter the esdk environment directly
> via:
> - running 'bitbake <image> meta-ide-support'
> - running the above mentioned bitbake local.conf task to generate the
> esdk-specific local.conf
> - sourcing the environment script produced by meta-ide-support
> - rewriting PATH to provide only the curated esdk tools and not
> everything plus bitbake.
> - writing a custom devtool.conf similar to that of standalone esdk so
> that devtool can find bitbake and bitbake can use the esdk-specific
> local.conf
>=20
> And it would be tested in the same way standalone esdks are.
>=20
> Thoughts? Anything missing from the above list?

That sounds like a good way to handle this to me!

Cheers,

Richard

