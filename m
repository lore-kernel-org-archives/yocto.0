Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3915.1619423012814765786
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 00:43:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=DnfNZOpi;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CCD6738C069E
	for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 07:43:31 +0000 (UTC)
Received: by mail-vs1-f46.google.com with SMTP id m2so974863vst.2
        for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 00:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0YxRGbwt4NiaFqfKG+8IU9dUydKf7rWuQfmDFutGdns=;
        b=DnfNZOpiiEz6R/BC4QbDcMbzvY5sZki8Dyt3C2Y4bbyy7RbWhfoyi0h12eEob5fZZf
         G2/a3YoOkz0b10oKsuY+fw59Onhw0TDGGDGflGouOFGUKwmzqbhf/3KvVWcvEGDTFS9w
         fmaWu1eBO97m8NhRN9qCfbo8RAp8vPHmdDmPFaZZF4TFYiyr5faleJ0i+3ph1qv0SppR
         k/L6A557dQ81EB7j0XcajnoCt2JDU4TSuPmofZJ6piiSV+I7x2Pga0RiIpmMr40BkP12
         WYh0hze5LU39g7LL+7hjnUh599aG7dmvP5n5f9YbR5q73TDNh8c2guCgVaYq8u5xFPeC
         PUdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0YxRGbwt4NiaFqfKG+8IU9dUydKf7rWuQfmDFutGdns=;
        b=UmPsr37piA0LeaMlgteaNRQu3p/3PtMgXaRJ1xlut3m36oVc0cJEbS2jEGtEz4aAey
         AkICVsSACvUvxREvUOcj/vsSVQGInRhaOWLKvr3z/6kVm5sIxvN56cC5Xe3sr02lucUb
         afPfNT14Tk15FvUNSY4ipfEsMRuzk4cqRGTSDGGC3abOLhfR6G5uEuU+lx224u0ymX9Z
         M/WBX+HtOeWUhaAEtq0YqOKxP7JL6beEiKcWyhQTCBKUcoUOCFrCpNG2wN0btO3BO4PX
         vdht7Zka/lKuhhNfXAmFwnDek8UC7fAMqDMcQrMrkVdS+CHq4wpD6b7Xa2KSrQEnUJXp
         OdYA==
X-Gm-Message-State: AOAM5302GYszmxUUhTvcmS+6GfAKoBq4orjpaHBpN0ccw9CI562Dqta6
	cejyel9OUsdHyqQpmccediGNnx2B7UqyoTwli+qIbw==
X-Google-Smtp-Source: ABdhPJyB14p3qYNRUewfch6oxzQ66aKmxau/o0kYMwpxP0Tw0nxvhJY+u8E2ftnXTeZIYlAU2i7P8nTykYAF6ni1Eo8=
X-Received: by 2002:a67:ecce:: with SMTP id i14mr2209745vsp.22.1619423010702;
 Mon, 26 Apr 2021 00:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210423165826.2229787-1-yann@blade-group.com> <4253bde9-d621-6477-6797-25ba4bdb2e23@gmail.com>
In-Reply-To: <4253bde9-d621-6477-6797-25ba4bdb2e23@gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 26 Apr 2021 09:43:19 +0200
Message-ID: <CA+4=imZn1nt8+OiVf_gRK1zp+=v8K5AM9Obes3v_dPPYQs=g5A@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v3 0/7] OP-TEE support for ARM and rk3399
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>, 
	Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 23 avr. 2021 =C3=A0 19:19, Joshua Watt <jpewhacker@gmail.com> a =C3=
=
=A9crit :
>
>
> On 4/23/21 11:58 AM, Yann Dirson wrote:
>
> From: Yann Dirson <yann@blade-group.com>
>
> Changes from v2:
>  - turn the DISTRO_FEATURE idea into separate RFC patches so as to allow
>    merging of basic support
>  - remove optee-os patch that proved unnecessary
>
> Changes from v1:
>  - fix last-minute typo in TFA_SPD setting, which led to optee not being=
 started
>  - use PACKAGECONFIG[optee] to simplify recipes as suggested on meta-arm=
 ml
>
> Yann Dirson (7):
>   trusted-firmware-a: include optee support when requested by
>     DISTRO_FEATURE
>   u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
>   optee-os: enable rk3399 support, including serial console support
>   RFC optee: new "optee" DISTRO_FEATURE to enable optee-os integration
>   RFC: optee: only enable the recipes when "optee" is included in
>     DISTRO_FEATURES
>   WIP nanopi-m4: declare OP-TEE presence in devicetree
>   WIP kernel config feature for OP-TEE activation
>
> In general, it seems like a lot of these changes should be in the upstre=
am recipes, not the meta-rockchip bbappends.

Generally speaking, I'd say yes, and it would be great if we are able
to do that.  But from what I've seen of op-tee integration,
it looks like vendor platforms usually have different ways of integrating =
it.

Eg. for tf-a, meta-ti does something completely custom, see
https://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/recipes-bsp/truste=
d-firmware-a/trusted-firmware-a_%25.bbappend

I'd think it would make sense to integrate something in meta-arm, if
more than one platform uses it,
or possibly if this is the "right way do do things that everyone
should use going forward".


> Also, the things that do belong in this layer need proper variable overr=
ides to keep the layer (mostly) Yocto project compliant.

After a quick review I can only see the optee patch in 3/7, do I miss
anything else ?
For this particular case, it did not seem crucial to restrict it,
especially as the patch has been applied upstream.  But
sure it wouldn't hurt to make it rk3399-conditional.

>
>  conf/machine/include/rk3399.inc               |  2 +
>  .../trusted-firmware-a_%.bbappend             | 14 +++++
>  recipes-bsp/u-boot/u-boot%.bbappend           |  9 ++++
>  .../0001-nanopi-declare-optee-presence.patch  | 30 +++++++++++
>  recipes-kernel/linux/files/bsp/tee.cfg        |  2 +
>  recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
>  ...399-enable-serial-console-by-default.patch | 52 +++++++++++++++++++
>  recipes-security/optee/optee%.bbappend        |  4 ++
>  recipes-security/optee/optee-os_%.bbappend    |  8 +++
>  9 files changed, 122 insertions(+)
>  create mode 100644 recipes-kernel/linux/files/0001-nanopi-declare-optee=
-presence.patch
>  create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg
>  create mode 100644 recipes-security/optee/files/0001-rk3399-enable-seri=
al-console-by-default.patch
>  create mode 100644 recipes-security/optee/optee%.bbappend
>  create mode 100644 recipes-security/optee/optee-os_%.bbappend
>
>
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
