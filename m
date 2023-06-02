Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BDE4C7EE29
	for <webhook@archiver.kernel.org>; Fri,  2 Jun 2023 20:10:39 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.5620.1685736633490936114
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Jun 2023 13:10:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=N+tvNqFq;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-30ae141785bso2446894f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 13:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685736632; x=1688328632;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zYrUpZORSOZvpgO6AnmNF/aHWCIVCI/VfkC1u0gIzs=;
        b=N+tvNqFqBSuYMDRmwF03upmqChn1D0hC2rVySIwIKPUDJdFgggZte8h3EqwNiUEHjg
         4JIs0aXMxRy0TmGjWTyjkbIdd9S09UPcKKcqZyJmmF5v9kwRFbZMs56dzpdrtqG4J9R0
         N52Z2qv4XGq2uSAgIDAEpzkewV0+akv1eXQXw+YeNZH/8zjR/VQKeFpce4x2kYGbymL9
         71OqNM/tZbGiGzdXGpG0sbYGzrMLragCPlVRnPjxfHhZiED41NYPiflD4LZSomRoGq9F
         fNLwX9uT84uZev3o21FDQEKYSKxbDlN+TDVAN5lMyQE5lofWlmBqJRBOK/VjDPk/R5bO
         nghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685736632; x=1688328632;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3zYrUpZORSOZvpgO6AnmNF/aHWCIVCI/VfkC1u0gIzs=;
        b=U86jneSN8sEuDF84vtWNIYprHXrzBIDc4a/oGCWGQzxLF+sTxjnN4c7nkwb4Tha3cd
         AubBzWJgqhNJ0DZ4OfaFlIs48EIJZVYWUcchp6QF3IixZT7oNEU5ZWH0z9R/DDB6o3vs
         DooYeoIQmEJh5IoqeGZ7Xufd3gEqhLWLXdTKUjdv9rroqyknWDUPkL9quWw0DcuVwLsf
         FxMli4NKUjjW1yQdZqU4DNOa7ijxUq/BD5u2r0KNJoL+2fS6/LusS0lE+MlDGrYhKolS
         yEhzaHhOxR4puV9me+WQgpWBrX4ghTtkcBGop6xnybgBDRCA0J5Pi248kQ08bDOkJxGV
         zz5A==
X-Gm-Message-State: AC+VfDxTG3DbP0mtx/hSj7iV5r1IjLoIHpFMv7ADbqh9YxFkz5ciKo8W
	qqL8yJsiW0BsSflN221mcvA=
X-Google-Smtp-Source: ACHHUZ6t4zfvxbyxSiy51jP13pODLlkjQbcKrFaYQkizLR2g21RRWsfSHYyUbB8Y0OKP4SiZLn7ljQ==
X-Received: by 2002:a5d:4fcf:0:b0:30a:dee9:1332 with SMTP id h15-20020a5d4fcf000000b0030adee91332mr709207wrw.67.1685736631761;
        Fri, 02 Jun 2023 13:10:31 -0700 (PDT)
Received: from nbadrian1.lan.ffah.ch ([2a02:169:59a6:0:4a42:edcd:e65c:4e9b])
        by smtp.gmail.com with ESMTPSA id e10-20020a5d500a000000b0030ae4350212sm2518646wrt.66.2023.06.02.13.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 13:10:31 -0700 (PDT)
Message-ID: <c95d683751feba2f24bcbd9288a05e9ae755aac7.camel@gmail.com>
Subject: Re: [yocto] Register out-of-tree fetcher with devtool
From: adrian.freihofer@gmail.com
To: "Weihmann, Konrad (Avnet Embedded)" <Konrad.Weihmann@avnet.eu>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 02 Jun 2023 22:10:30 +0200
In-Reply-To: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
References: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 20:10:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60166

On Fri, 2023-06-02 at 04:47 +0000, Weihmann, Konrad (Avnet Embedded)
wrote:
>=20
>=20
>=20
> Hi all,
> =C2=A0
> we do have an out-of-tree fetcher that I would like to make use of
> with devtool, for instance for upgrade checking.
> Within our recipes the fetcher is registered by this workaround
>=20
> python () {
> =C2=A0=C2=A0=C2=A0 import foo
> =C2=A0=C2=A0=C2=A0 bb.fetch2.methods.append(foo.FooFetcher())
> }
Hi Konrad

Is there a specific reason why you need to fetch at the time of
parsing? Or would it be possible to override the do_fetch task?

Regards,
Adrian

> =C2=A0
> Which isn=E2=80=99t the nicest possible solution still does the trick.
> =C2=A0
> But that doesn=E2=80=99t work for devtool, as it seems to not take any bu=
t
> oe-core lib-paths into consideration.
>=20
> For devtool check-upgrade-status <recipe with above code snippet>
>=20
> I get something like =E2=80=9Cno handler for foo://=E2=80=A6 found=E2=80=
=9D.
>=20
> Is there any way to register this out-of-tree fetcher module so
> tinfoil/devtool can =E2=80=9Csee=E2=80=9D them?
> =C2=A0
> Cheers
> Konrad
> =C2=A0
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60162):
> https://lists.yoctoproject.org/g/yocto/message/60162
> Mute This Topic: https://lists.yoctoproject.org/mt/99280594/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Adrian Freihofer
Gschwaderweg 29
8610 Uster
+41 76 503 37 98

