Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00085C77B7C
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 09:28:54 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web11.54693.1683797329898900180
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 02:28:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ciRz+Xxz;
 spf=pass (domain: gmail.com, ip: 209.85.222.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-77d46c7dd10so40309047241.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 02:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683797329; x=1686389329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BLigVLvibUhJc87K/npZWAUuOZqXNkQVwqlAN6OvGS8=;
        b=ciRz+XxzfPHRt/tr2Vz2SC/o6mNj13tJ7R+ntJN9+WbiHDif0l9w0+uxOWVUt5VwFH
         00E7wCcKheH1ArXRmooL4ho7uoquRW5Ec3iLpFDMDzhaz8uyA2IYQEU3DlzOX0PBj6pe
         554biHmN09Pp3IF+wKxYC40rlCUrGLo+IHfsIuEqjSOtq5ZgyzAvCuK+YIZECt5/R4B6
         UVHJfff7YAK5dNM5TntRlX0cTqXeVkoCkHZoeNwbim24arWEgWaMcj2X+Fpg7LICERVW
         S+H2kvEuXiFnNlwgBxnFL/ct2hOm5qAVs+P29pjnzEQHzC1X7+kLBqlMFFhbc0v+k0Oa
         XJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683797329; x=1686389329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BLigVLvibUhJc87K/npZWAUuOZqXNkQVwqlAN6OvGS8=;
        b=Uf5XetgrFUgxzDakODzqKz75pnqmAfhMrsHVO3R3MsTWrJTw5RBHz6hJlah+LjGwXg
         BBzf8mok+dUC/F5OTzsBpTi3lHS5CR+F6ylDtoTV67NujwTYH/XeA3TXtiSr63YNwhVS
         h6syTO+ZX+oRLWI6T8JadnDPcQapl0vaXK42L9TOEiqgPm+An2MOkHzmAkIzqVMYMZcv
         YKxl5oZJkosTz3HWOFiG8nyClvMlsb0r673iwA8FZ9CgyJbqBkGFJZhZWYB2BAlmDFdr
         U8MNr2mNajZNXKX71rIyhjr2Ve/pWoVDlCDkZGfIXcW7cLB88VoPd6eLZvplA7UOFkL6
         +/KQ==
X-Gm-Message-State: AC+VfDzQbSvVFPKXaHwcLnrnCw6RnLV5ifAFsrcUBrHSuBOGueRm5Nnc
	oPwQW5TC9X4e3b3m31IMmYzWATbWSjuA2lGIM5g=
X-Google-Smtp-Source: ACHHUZ6cUgmILJ/EjsGbgKy7gx0TEqSMwiOzFKCdo7YFW2pPMNR76mpsy5QV5vMAW/mE9/5faM4pme+fb4AmTAs0B3w=
X-Received: by 2002:a1f:bf49:0:b0:44f:e32a:148 with SMTP id
 p70-20020a1fbf49000000b0044fe32a0148mr6695466vkf.8.1683797328768; Thu, 11 May
 2023 02:28:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230511085319.4147-1-tomasz.dziendzielski@gmail.com>
 <CANPvuRkzNbE+q6Tg4ope=8xGRMkenfe5LErqdZrTnRUBoKAhbA@mail.gmail.com> <CAJkqNs1qj06=COjTWMjgtNeO3LNR=cqQyy4LDnbV82Q7=o510A@mail.gmail.com>
In-Reply-To: <CAJkqNs1qj06=COjTWMjgtNeO3LNR=cqQyy4LDnbV82Q7=o510A@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 11 May 2023 10:28:30 +0100
Message-ID: <CANPvuRnpmHnyVBsTUrS5=SKj+S0_1rwBXT1z0vThy-oss+RMGQ@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH] bazel-native: Allow build from sstate-cache
To: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a7b68b05fb679d0e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 09:28:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59985

--000000000000a7b68b05fb679d0e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com> escreveu no dia
quinta, 11/05/2023 =C3=A0(s) 10:15:

> Hi Jose,
> >Why not use the something inside the bitbake TMPDIR, if it is temporary
> the correct place will be in TMPDIR.
> I wanted to keep the same directory as it was before, but you're right
> TMPDIR/bazel will be better place. I'll send second patch.
>

The default bibtake config is TMPDIR ?=3D "${TOPDIR}/tmp" so in this case i=
t
will be the same directory
but note that this is not always true and the TMPDIR can be changed in some
distros configs, in this cases it will be stored somewhere else.

Jose


> Best regards,
> Tomasz Dziendzielski
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000a7b68b05fb679d0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Tomasz Dziendzielski &lt;<a href=3D"m=
ailto:tomasz.dziendzielski@gmail.com">tomasz.dziendzielski@gmail.com</a>&gt=
; escreveu no dia quinta, 11/05/2023 =C3=A0(s) 10:15:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi =
Jose,<br><div>&gt;Why not use the something inside the bitbake TMPDIR, if i=
t is temporary the correct place will be in TMPDIR.<br></div><div>I wanted =
to keep the same directory as it was before, but you&#39;re right TMPDIR/ba=
zel will be better place. I&#39;ll send second patch.</div></div></div></bl=
ockquote><div><br>The default bibtake config is TMPDIR ?=3D &quot;${TOPDIR}=
/tmp&quot; so in=C2=A0this case=C2=A0it will be the same directory</div><di=
v>but note that this is not always=C2=A0true and the TMPDIR can be changed=
=C2=A0in some distros configs, in this cases it will be stored=C2=A0somewhe=
re else.</div><div><br></div><div>Jose</div><div><br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div><b=
r></div><div>Best regards,</div><div>Tomasz Dziendzielski</div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000a7b68b05fb679d0e--

