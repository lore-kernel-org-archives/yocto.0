Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.866.1615228769853417301
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Mar 2021 10:39:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=YBZlkNTr;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EE15A38C065C
	for <yocto@yoctoproject.org>; Mon,  8 Mar 2021 18:39:28 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so3651541pjb.2
        for <yocto@yoctoproject.org>; Mon, 08 Mar 2021 10:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MixarrIbVpxw8DzhwaudtyHbXvUY6h0WsrUN4n8LCcM=;
        b=YBZlkNTr573WAg4XV1JyrjmtcoO+z8LGRBFgZLjQ9OKzRXeiRpkL4vKcJ+7nsWTy2m
         1I/nzA1+M4hlQJ0hoGY//ExnCpZiH36R5TCrpb2v4SsRL2PEzk0VUouJxumdNYG4ezDM
         ye4Yzu956ooTa7gS7yvvIUyLd7vMaaY6OxfFXeLJS/HJ9odYfV+QF8PsSnraJ36yXi6Z
         eU7nEd5uR/EmG29cs1XEOhZhOdJuEaIvl4H0TfzRtbB1m4/HK49AOuXLIrPSmjZfocuF
         LWLi+1zcjucwq68jCzRp0FdiVYjF0jG+r9GEvdRGSk3fkANzSMw5gOvxU2t6pZmCb+gx
         RA1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=MixarrIbVpxw8DzhwaudtyHbXvUY6h0WsrUN4n8LCcM=;
        b=AqhDcnQVapqzhmeqVtt+Kc/YFn97jGylapAqu3XY50HICfunHDvG8rI3qnt+3pZDeK
         Mgg7VKZnBRpSnWJhstTl/21ixdqK7WEgkzAguMCdAGUFHdpxFBc9shhSsd/BL7SNErVd
         blwY1YNWSwIK9Y22X+zj0hh38afKz5jvyk0ac4rYkx2DdW/Ha84c6tqIwHjiiUEb8h1f
         L2F43iMVSYGkfpbT65c/Y4m2o7GxqxJG7v9Y0c/Oui4fkkEjXvda+6tmyoHd/68L3grJ
         PukfsZmVbt/gt1yG43+Qb3BE5koKiTLvzY+pCqpUg3nYfYal8sfOH3L2EfKWIkirc3Gt
         RZ4w==
X-Gm-Message-State: AOAM532MINQXndpmDOhKZSDH2CCWRu19ShTgfBObeix76pVRB2mrw9oj
	9yqHdj/FxIZqfVeO7nsd50PT+1V/3HRDcA==
X-Google-Smtp-Source: ABdhPJw4W20k25f8+c8AVPlwNGnuRlr6PxcXhAtYkFKLSNmR6OLwPAs++mp56ey4A6tdkMNvyZxAbQ==
X-Received: by 2002:a17:90a:5ae6:: with SMTP id n93mr237330pji.146.1615228767053;
        Mon, 08 Mar 2021 10:39:27 -0800 (PST)
Received: from ?IPv6:2601:646:9200:a0f0:e039:b4fe:1680:1244? ([2601:646:9200:a0f0:e039:b4fe:1680:1244])
        by smtp.gmail.com with ESMTPSA id y20sm10873576pfo.210.2021.03.08.10.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 10:39:26 -0800 (PST)
Subject: Re: [yocto] Remove *-dev packages from final image
To: Mauro Ziliani <mauro@faresoftware.it>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0635A4DC-DEF1-4901-AAD4-F9788168F9FF@getmailspring.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <4f4c9223-d912-ebce-b194-27a770391ff2@gmail.com>
Date: Mon, 8 Mar 2021 10:39:25 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <0635A4DC-DEF1-4901-AAD4-F9788168F9FF@getmailspring.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 3/8/21 3:59 AM, Mauro Ziliani wrote:
> Hi all.
> I'm in trouble to remove the *-dev packages from final image.
>=20
> I remove dev-pkgs and dbg-pkgs from EXTRA_IMAGE_FEATURES and=20
> IMAGE_FEATURES with lines
>=20
> IMAGE_FEATURES_remove =3D " \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dbg-pkgs \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev-pkgs \
> "
>=20
> EXTRA_IMAGE_FEATURES_remove =3D " \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dbg-pkgs \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev-pkgs \
> "
>=20
> But *-dev persists.
>=20
> I suppose there is some package-group which installs *-dev
>=20
> In the image recipe I includes
>=20
> require recipes-sato/images/core-image-sato.bb
> require recipes-fsl/images/fsl-image-multimedia-full.bb
>=20
> and I force a remove with
>=20
> IMAGE_INSTALL_remove =3D " \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 packagegroup-fsl-tools-gpu \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 imx-gpu-sdk \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 packagegroup-core-x11-sato-g=
ames \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 attr-dev \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 alsa-lib-dev \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 base-file-dev \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 connman \
> "
>=20
> Even if I remove alsa-lib-dev=C2=A0 I find it in the manifest.
>=20
> I'm working with a Krogoth
>=20
> Any idea?

you might find the dependency with bitbake -g <your-image> and=20
insepcting the generated dependecy files.

>=20
> Thanks all
>  =C2=A0=C2=A0 MZ
>=20
>=20
>=20
>=20
>=20
>=20
