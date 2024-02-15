Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF15CC4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 17:57:41 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.25197.1708019858726489431
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 09:57:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b6XEDGZB;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2906773c7e9so895083a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 09:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708019858; x=1708624658; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2T0coStblxguFx/p8OSowH6sG2BpnTWVSECMAzo4/E=;
        b=b6XEDGZBBK/5nHGeU4DP0VI+eh0zW8SiAugV7KWX4BSXM5SsknuXP/lBNyO6Rv/nQ9
         Z574315yjmaEpZMKMbKxI27N3WBGe6uIHOEO5NU8JPMJDE+tZmT4a06prlRamHjWqEKS
         RSgE+OCS0t1xgHCLLSo9Zfgm3y4pPa8uoPyqtOdUsfnGM/N1aGrEbuopSesoLeJxA9kF
         6kmHSldwksIk/6CsUY2cxlA+M61o6T1gNudVS9FV2YYi5VKN5WJKnzq+L2vTAHyQBl8X
         TBfHrRkUwujGqv7nWVt6sYewnA27VZuFefr/Bc64XvB2CxLq6X3L3ITDjGTBqB3dsTFI
         uz1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708019858; x=1708624658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2T0coStblxguFx/p8OSowH6sG2BpnTWVSECMAzo4/E=;
        b=YLBOKuzfsIZitmIMnW56L0B9C5Q2Ni5WEgOJXY1zGv0yAybBVAYZLlmlk38gQtXZtJ
         VZGnVNBOZjaLPQU1QQr7ersvSlsfINgMppldQCDMNxOm+MTE4My1omHEeJS7R09Pchki
         8rsIT7mmAtzStT8pUWElnD448sEzUfU5esExCxDVzsfDPoQuC43BF+xtyboZzQHweDjH
         AhkISVHoDUoPDCqYFKrwEO2TX/y4d78WzyR29Guykn2GRw1fHS8uhSUzKHB9Y85B3wnI
         7XzeoTY9HdxeC/SHr0/g+MvOtEsH6n993gi66Y4e7CSn8jAjFakE7ffiWaYURfsJr25p
         omXA==
X-Gm-Message-State: AOJu0YxPNpFIOhmyM8IPdLUZRgpIyYuYFDJ53zb9CNZbpZWZEpYnD26T
	M+GbVMspTYm5qlkpGcSuEYkgpIiySc2d4EO3Dc1Ngo5R4wKlKsDvLRwRf58i+CE868ZGONdyore
	ZTvV3VNwhq5NfyxSaKylBEd8BDiT35+xqghU=
X-Google-Smtp-Source: AGHT+IEOlVOz5v5yBJCFR+cMrwJLEySdGFq3xWoypbqFYMnu78L6bLE4jvRMq62NAtZB2/fg7IblYqR4sNkvNEVfDOU=
X-Received: by 2002:a17:90b:19c5:b0:298:a457:d1c2 with SMTP id
 nm5-20020a17090b19c500b00298a457d1c2mr2261710pjb.17.1708019857691; Thu, 15
 Feb 2024 09:57:37 -0800 (PST)
MIME-Version: 1.0
References: <20240215171506.2989385-1-joe.slater@windriver.com>
In-Reply-To: <20240215171506.2989385-1-joe.slater@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 15 Feb 2024 12:57:26 -0500
Message-ID: <CADkTA4PoT95O=VSj2w501vPct6f8A0PTL1njiP3MuXegmPA3Rw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/1] sanity-meta-security.bbclass:
 allow warning customization
To: yocto@lists.yoctoproject.org, joe.slater@windriver.com
Cc: randy.macleod@windriver.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 17:57:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62500

On Thu, Feb 15, 2024 at 12:15=E2=80=AFPM Joe Slater via lists.yoctoproject.=
org
<joe.slater=3Dwindriver.com@lists.yoctoproject.org> wrote:
>
> From: Joe Slater <joe.slater@windriver.com>
>
> Introduce META_SECURITY_SANITY_CHECK_WARNING variable which
> can be overridden, if desired.

The existence of the patch implies that there's a reason why the warning me=
ssage
isn't appropriate for your use case.

That's something that should be explained in the patch.

A knob to disable the warning if you know what you are doing has already be=
en
provided. So again, this patch implies that you want the warning, but want =
to
change the message .. it would be good to understand why.

Bruce

>
> Signed-off-by: Joe Slater <joe.slater@windriver.com>
> ---
>  classes/sanity-meta-security.bbclass | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/classes/sanity-meta-security.bbclass b/classes/sanity-meta-s=
ecurity.bbclass
> index f9e2698..95180aa 100644
> --- a/classes/sanity-meta-security.bbclass
> +++ b/classes/sanity-meta-security.bbclass
> @@ -1,10 +1,15 @@
>  addhandler security_bbappend_distrocheck
>  security_bbappend_distrocheck[eventmask] =3D "bb.event.SanityCheck"
> +
>  python security_bbappend_distrocheck() {
>      skip_check =3D e.data.getVar('SKIP_META_SECURITY_SANITY_CHECK') =3D=
=3D "1"
>      if 'security' not in e.data.getVar('DISTRO_FEATURES').split() and no=
t skip_check:
> -        bb.warn("You have included the meta-security layer, but \
> -'security' has not been enabled in your DISTRO_FEATURES. Some bbappend f=
iles \
> -and preferred version setting may not take effect. See the meta-security=
 README \
> -for details on enabling security support.")
> +        bb.warn(e.data.getVar('META_SECURITY_SANITY_CHECK_WARNING'))
>  }
> +
> +META_SECURITY_SANITY_CHECK_WARNING ??=3D "\
> +You have included the meta-security layer, but 'security' has not been \
> +enabled in your DISTRO_FEATURES. Some bbappend files and preferred versi=
on \
> +settings may not take effect. See the meta-security README for details o=
n \
> +enabling security support."
> +
> --
> 2.25.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62497): https://lists.yoctoproject.org/g/yocto/messag=
e/62497
> Mute This Topic: https://lists.yoctoproject.org/mt/104377037/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

