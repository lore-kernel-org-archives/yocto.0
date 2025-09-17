Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20D96CAC59A
	for <webhook@archiver.kernel.org>; Wed, 17 Sep 2025 22:33:07 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.43.1758148383811529917
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Sep 2025 15:33:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BnmJsM4G;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45ed646b656so2463055e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 15:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1758148382; x=1758753182; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D7tMaHV6pb8E88PTghCJg8R+To4kHvkTgSdsB5gzwR8=;
        b=BnmJsM4GKOWCcDO4GcPbB+4i92plA+xtqy6zIzdT0tqGQzCtnwuPn+p1PQT5uENZ83
         Br0Z6yD8uD/fkAGz4lwUQv0sme3NFWGN/7pHNcs269iGIfTmA2J9u1/CIAxpOTIjqYmK
         6QaJgIje9MadV6HCuNXNbHi0Ojh+At58SxjVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758148382; x=1758753182;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D7tMaHV6pb8E88PTghCJg8R+To4kHvkTgSdsB5gzwR8=;
        b=wKEFaWKLDjOrDC0w2do+b0AiBShtI1Qs3arKQ7erwX1HsmwIMlcO7Kp0lemfJ2zVXe
         q2RWotf4HYrRSMKVeB6NysY/okoJuVd0pm92kL3mj8Mu13HDYNRUlmpg4+GEyBSECaB7
         klQO3Um8FpFp3bckv+OLxo/IwLIDc4HPHBnWYX8AKK0fFIDFn9Dsx54O4CE74sUpe3Xa
         B0RJAkKLOmbxdW8XF0hV7R2DWaMyHATQxQ5WZuzWB312KawKIwLyha2468xXw6tLpczr
         XEvSvGEfepCmzLUCAKDrQu6Pu796RvEGfyiI1iTMSTUT4vSH1eTokTh45RYeExutEmHJ
         4uvA==
X-Forwarded-Encrypted: i=1; AJvYcCUXBVmwuco7rKdPL33Q1KDLvP7PUWfP4Mv59jyXhXuEFH5FKA26FsZG/bkkV1yVOZwNwCDBGA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwzRXih9DiuyENvxudLzwoHNGx5Vx9p/r2mB23SLnyEz3YeJaRU
	7QUSzTyRST+cR/fCIK8CCfW6D2dEk3bHl+I9CcDmY87p69aSt5u7FoxI6rvkoA3wMc8=
X-Gm-Gg: ASbGncsO+Dz+G5+Lj+1SVESwHKXsIxAONLuLQn55dC646T46a+qR2R0tLTJzGubn/iL
	PYXLDG48cvvMprjt+Ao+umAsSqzOlOGU0R+dAi+YxINm1+r9LJBSS6LuM3+4QK9627duwHYzeI4
	96cr4EKfngNf8MPeYbB1cb6qkt6UETnHyUl5zeg1Rn3e5qhaq0djZbzVJvkNwUGWVqDDIT6Fk2b
	/22O9FLEDOCIpeIDzEbYKsgxcGF/UNrZPi3V5EEvm9qn5WZ/gn3+a5ypJ73rcvOsoZ+aUqVJbvD
	v74FLUx/pRcgRtKRY41AhlIeD0Sp/qIb3kWTweSe5XshmhNcADeiEAcCbXDs0ZCud3vGv7QBxHf
	In00RPcekVODrdLNKUfUfZD9wSOfPQF4+fioCnxw/1ypbDdhWkWKNzh/3DM9d2+Jtqri2fE5Jiw
	s7Cm/DxlHB9gIoBywwVxtTduEYmgsqUzisUOuWAFvp
X-Google-Smtp-Source: AGHT+IFG2c89QdEDMDXUM22Gx2k53J/jpvMBP0ypr+bCXl57xcgaL9E23pRArkICL9RFOFjRAx/dwg==
X-Received: by 2002:a05:600c:444c:b0:45b:47e1:ef69 with SMTP id 5b1f17b1804b1-46207897e75mr35767555e9.36.1758148381988;
        Wed, 17 Sep 2025 15:33:01 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a42a:bde0:2db0:730d? ([2001:8b0:aba:5f3c:a42a:bde0:2db0:730d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4613e754140sm52342115e9.21.2025.09.17.15.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 15:33:01 -0700 (PDT)
Message-ID: <e47db6c5eab25b2614139d9c33fe7e253962ceb8.camel@linuxfoundation.org>
Subject: Re: [bitbake-devel] [yocto] Documentation around adding custom
 fetchers to layer
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "seth.raymond@matrixspace.com" <seth.raymond@matrixspace.com>, 
 bitbake-devel <bitbake-devel@lists.openembedded.org>
Date: Wed, 17 Sep 2025 23:33:00 +0100
In-Reply-To: <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com>
References: <tEoU.1758053094260077183.1RYf@lists.yoctoproject.org>
	 <9EEFEABC-1B2A-4C76-B0CC-0E0CADAEB744@arm.com>
	 <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 22:33:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65853

On Wed, 2025-09-17 at 11:19 +0200, Alexander Kanavin via lists.openembedded=
.org wrote:
> On Wed, 17 Sept 2025 at 11:15, Ross Burton via lists.yoctoproject.org
> <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
> > > I'm not seeing any documentation on how to add a custom fetcher to a =
layer, and the fetchers in poky don't provide enough information on how to =
register these fetchers. Is this functionality supported, or will we have t=
o fork poky and keep it up-to-date to add a new fetcher?
> >=20
> > This is a bitbake issue, so I=E2=80=99ve copied in the bitbake list.
> >=20
> > There=E2=80=99s no standard way to add out-of-bitbake fetchers, as you =
say you need to add the fetcher instance to bb.fetch2.methods.
> >=20
> > I guess you might be able to write a do_fetch prefunc that creates an i=
nstance of your fetcher and adds it to the list, but I would not be surpris=
ed if there were more places where that would be needed.
> >=20
> > python use_my_fetcher() {
> > =C2=A0 bb.fetch2.methods.append(MyFetcher())
> > }
> > do_fetch[prefuncs] +=3D =E2=80=9Cuse_my_fetcher=E2=80=9D
>=20
> To be honest, I was going to say that custom fetchers are not
> supported. Doing that would fragment the ecosystem and make people
> invent all kinds of private magic in their builds, and subvert the
> promises that standard fetchers make.
>=20
> Perhaps it would help to step back and look at what this customer
> fecher does. Can we see its source? Or an extended description of how
> the password manager is used, what data it takes and produces, and how
> that data is used in actual fetching? Then we'd think of how to do
> this with regular fetchers.

I'm struggling with time/bandwidth so I'll just mention what I can
remember without digging too much.

There have been cases of successfully injecting extra fetchers from the
metadata, particularly if you do it from the global class code,
probably in an event handler. I think some of the early npm/node/crate
code did this (I don't remember which) before we merged things into
bitbake itself.

There was an open bug for making it easier to define new fetchers from
the metadata and we did get most things working. Sadly I can't spot the
bug. The one area that was problematic was AUTOREV since that happened
before you could inject the fetcher in the class code in some cases. We
never did work out an API which would allow AUTOREV to work and allow a
general API.

Cheers,

Richard




