Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.849.1616441417287003626
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 12:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=NisvIs5H;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6FEE738C0636
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 19:30:16 +0000 (UTC)
Received: by mail-ua1-f44.google.com with SMTP id b10so5914085uap.4
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 12:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HLla6N2HARDNDgrtwbUoQHLVQ7HFlhSgUtWLwCKJgSI=;
        b=NisvIs5Hj83ExhnxHJOqJ1icFE9mfsxTA3UBi591hUT2eCjT2nneulyT4nWsCwGaTm
         5RjE6QOuEaEXGY3BZXvOZ15RfMMxJgjAXa5//XJ+M3w8FpgwYph18wluHvGbkbfatKPJ
         ViY+9MtIW6Dk5gVkr9akD1KMJL+fD8qJm5+e/hvTt9TkwwZaylXmwXGN4u+w3r6qu0Qm
         ywDMy2M7EbayHzVDHVifS+xcSxNf6jGwe8xhgAsxtpC0E6XSJLiHyFTKvhGc/aqso6OJ
         3CNQhT7LEVS1pijGsVjEps1FhCJyGlbvfY2rBNBR1nXpvwPVUb2XR1A53ifk2xkpPwhy
         YFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HLla6N2HARDNDgrtwbUoQHLVQ7HFlhSgUtWLwCKJgSI=;
        b=WvJrpzxcjd5ViDaa2mkILkKJBPflFickhSWILD8LG6WFA4C4N5I59P1JtRI4h1W13V
         OUJWLZgjnfupRCXBcZ8/essugfjvO89VfULVKYEUFsoQcUwDO2CFHFU7pxPVlWkdPwGx
         Ai6NUOVEZ7DrMdMDfLRx4eza7ydKot6soPxn75boc2HivN0j30vlsPy8EUtyRzqpD9qU
         ky8qUieFJJKKG6mjei8hTPsGe3Wk8XsunbUH0jLCJaUCMHa1ijgW1tXai835klPaIevP
         9Ezx6Re+zlzQHUJZoUbIsshP2QGAlzNrX4aykyvHMi60E4Hj8ETTue4WfKRDQdV02h8D
         l/Aw==
X-Gm-Message-State: AOAM5305WFAXhwLNLYtxbaAfLAJeytOVS1zfvJlEQ0dQA2wCLWL6ybm2
	OcTEriCoYy7QrmhVxxxPgLibVactSKdBMi6Fmz6uRA==
X-Google-Smtp-Source: ABdhPJzgiOQtkG6y+b/fWVzvDmnX4uHt/VDkz+Q418oEow4ovG8EXh2QcjmXXbonMIhTCI6S5ew6x44/RevWatnOV9g=
X-Received: by 2002:ab0:45f1:: with SMTP id u104mr1202523uau.57.1616441415446;
 Mon, 22 Mar 2021 12:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
 <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com> <55dc5940-fb02-4db0-75bb-835f70ff908b@gmail.com>
In-Reply-To: <55dc5940-fb02-4db0-75bb-835f70ff908b@gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 22 Mar 2021 20:30:04 +0100
Message-ID: <CA+4=imbHctrn=PtnJ9fBQVtmLpMNoDuvJLbFzuLmoyGSkSFJWg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Trevor Woerner <twoerner@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joshua,

Le lun. 22 mars 2021 =C3=A0 19:24, Joshua Watt <jpewhacker@gmail.com> a =
=C3=A9crit :
>
>
> On 3/22/21 9:59 AM, Yann Dirson wrote:
>
> Hi Trevor,
>
> Le lun. 22 mars 2021 =C3=A0 15:47, Trevor Woerner <twoerner@gmail.com> a=
 =C3=A9crit :
>
> On Mon 2021-03-22 @ 02:42:12 PM, yann.dirson@blade-group.com wrote:
>
> This supports both the 2GB and 4GB versions of the board.  This is not
> done with 2 different machine definitions since only u-boot has to
> change between those two configurations, but with a NANOPIM4_HW variable
> to set in local.conf.
>
> Traditionally in meta-rockchip this is done using two separate machine f=
iles
> with all the common things factored into a common include file. See
> tinker-board and tinker-board-s as well as all the rock-pi-4* definition=
s for
> examples.
>
> I would prefer if the same thing was done here.
>
> Damned that was how I did my first patch, I just felt it was much
> better this way :(
>
> Digging up that original commit re rerolling.
>
>
> Wouldn't it be useful to have a standard way to specify such hardware
> variants, that
> would be recognized as such by the layer index ?
>
> FWIW, I'd rather u-boot could automatcially detect what variant of the b=
oard it's running on and do the right thing (usually, just selecting the pr=
oper DTB from the FIT image). The only reason I did not do this on the rock=
-pi-4 is because there doesn't appear to be a way for u-boot to detect whic=
h variant it's on :/

Wait, it's only the dtb used by u-boot which is different in this
case, the kernel uses a single dtb for both variants.
Those probably get embedded inside the bootloader, in any case they
are not those embedded in the fitImage.

 #include "rk3399-nanopi4-u-boot.dtsi"
-#include "rk3399-sdram-ddr3-1866.dtsi"
+#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"

I have no clue how easily the two boards could be told one from the
other (let alone if that can be done safely),
and I feel that would rather be uboot-side work, rather than something
to be solved on the yocto side.

>
>
>
>
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
