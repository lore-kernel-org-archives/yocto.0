Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5E4FC433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 15:48:36 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.12706.1647359314964884195
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 08:48:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nXQczwyE;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id v15so15821613qkg.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 08:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=n2iqpu6nSNYNdW5hNymYRHjftte76rj2QD5bhW1fuc4=;
        b=nXQczwyEQ4olbNDQgZGerOQJieaX561NnOgD+D1Jv4HPx3mJf5GAhOOaL/4PNU4sqy
         8myfOrv3omlL6uYnOYmHIt9s6iidw2awbGPoNUl2FOiJ5qbysEmVeqzqLbj+ph7CiQiq
         Z72ztrsm3pyyQa8F5yyVZCBTDv1xk6QEoM0OS9G/+WavcboGT9ZHARvKn6OljUeXvU/6
         qfq1K4Q1RmqXzQ8r/oFZQaC6ajKwVh/z8ekNrDmrrPyaC7oDi0X/kpWu7fRXktwP+QbJ
         eyhXphi5hPXNcA5JP0PYQBAQqXRhmzcpnOuJhKBBzU/t0jY0R4/rW6k/z+tZReyAb4aL
         Kpzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=n2iqpu6nSNYNdW5hNymYRHjftte76rj2QD5bhW1fuc4=;
        b=mnVyfC4QxskZYljgH252shT8mo2rtcwHPeJtBRA90t2kwjLV3LPzjZmkxSn2yXT2J6
         LgANsq+cBazMKbjY6s+Vu9tAftetZg0g4yRvetUN3d5vZkap7Xg+Pg2P7b9dvcfcbbJ4
         cJNj+Hw/IplyduYNMuBuQ3Nvz8Ub1p47JlxypxQG18Ri9uQwSzpO4MSHAiTkZRb/Nko5
         uohTD7ZBucBivDOcl64J73Bpu+TgjNQBLV0C9oVz48Ggs+QknSO8+nlmRscu2JvPGr62
         M/Vto8dZe3esG045LClItPXXTy1vjzCfwqvYOngM98XpI/wWGglV26yj4asUmGLyJdnK
         Ea+A==
X-Gm-Message-State: AOAM5316KOvr+h5j6ntmXxzfrqccHyNp7jx9ic1aAjRoNNmzm++BgCBg
	+1H39nvc80bDTgfhyGbwAAhHdlci2zNOsoQLh8Q=
X-Google-Smtp-Source: 
 ABdhPJxMeP5Pv6P6/KsVE9v3QYL8xcRlASLdK4iols/t3j7wEubeeJgInz8TgbaldDKq+L4Tj3oeb4bHdrtyAsAo95I=
X-Received: by 2002:a05:620a:4626:b0:67d:1857:cdd2 with SMTP id
 br38-20020a05620a462600b0067d1857cdd2mr17971319qkb.227.1647359313914; Tue, 15
 Mar 2022 08:48:33 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMKF1spMMwNFeAcZK1oMvyG1FCkGqgKXANFs6062dAEUYkPeBA@mail.gmail.com>
 <MADEUP.16DC88BC30F2844B.24049@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16DC88BC30F2844B.24049@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 15 Mar 2022 08:48:07 -0700
Message-ID: 
 <CAMKF1soUhSpRsLMeMfE6G-BNQjLMPEcNeJ7YawAo_ML7x0o6JA@mail.gmail.com>
Subject: Re: [yocto] configuration fragments
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 15:48:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56444

if you are using linux-yocto for kernel then it is surely supported ,
so as long as it is added to kernel recipe it should work ok.

On Tue, Mar 15, 2022 at 3:58 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
> When you say:
>
> " you might have to look into this kernel recipe and ensure that it has e=
nabled merging configs feature from kernel"
>
> Are you talking about inheriting from "kernel-yocto" in order to work wit=
h configuration fragments ?
>
> Thanks,
> Steve
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Monday, March 14, 2022 4:13 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] configuration fragments
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems netwo=
rk.
>
> Please treat the email with caution, especially if you are requested to c=
lick on a link, decrypt/open an attachment, or enable macros.  For further =
information on how to spot phishing, access =E2=80=9CCybersecurity OneSpace=
 Page=E2=80=9D and report phishing by clicking the button =E2=80=9CReport P=
hishing=E2=80=9D on the Outlook toolbar.
>
>
> On Mon, Mar 14, 2022 at 12:57 PM Monsees, Steven C (US) via lists.yoctopr=
oject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > Under my aarm64 platform ../recipes-core/images I have a file =E2=80=9C=
aiox-swdebugfs.inc=E2=80=9D
> >
> >
> >
> > Which basically contains:
> >
> >
> >
> > EXTRAPATHS_prepend :=3D "$(THISDIR}/files:"
> >
> > LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698=
e0bcf8506ecda2f7b4f302"
> >
> > SRC_URI +=3D file://aiox-swdebugfs.cfg
> >
> >
> >
> > I include this in my aiox-swdebugfs.bb like so: =E2=80=9Crequire aiox-s=
wdebugfs.inc=E2=80=9D
> >
> >
> >
> > It does not appear to apply my configuration fragments=E2=80=A6
> >
> > (CONFIG_SCHED_TRACER, CONFIG_TRACER, etc. for additional perf support)
> >
> >
>
> these are some config files for doing what ? from what it looks like, thi=
s inc file is adding a kernel config fragment if so then it should be appen=
ded too kernel recipe so if aiox-swdebugfs.bb is kernel recipe then you are=
 doing it right, but then you might have to look into this kernel recipe an=
d ensure that it has enabled merging configs feature from kernel. Otherwise=
 these cfgs wont be processed.
>
> >
> > I have the exact same implementation working under my intel platform.
> >
> >
> >
> > Can someone tell me what I might be doing wrong, or how I can get my co=
nfiguration fragments to be applied properly ?
> >
> > Any ideas why it might work properly under one architecture and not on =
the other ?
> >
> >
> >
> > Thanks,
> >
> > Steve
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56440): https://lists.yoctoproject.org/g/yocto/messag=
e/56440
> Unfollow This Topic: https://lists.yoctoproject.org/unft/89782695/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

