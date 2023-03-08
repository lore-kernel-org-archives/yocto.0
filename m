Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B5E0C678D5
	for <webhook@archiver.kernel.org>; Wed,  8 Mar 2023 10:09:40 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.3584.1678270178617260368
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Mar 2023 02:09:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=google header.b=dcfz5RaA;
 spf=pass (domain: gherzan.ro, ip: 209.85.215.176, mailfrom: andrei@gherzan.ro)
Received: by mail-pg1-f176.google.com with SMTP id y19so9282736pgk.5
        for <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 02:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.com; s=google; t=1678270178;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ok2/nBRgbVABCoHshpKZappz1y1eWe3S6TRtnzmaEzQ=;
        b=dcfz5RaAqqDorLVuIe+UO/xBIeFGP9bYYwR13Hp0nrN8Q3v1tOqSOIAan/oSxbz45M
         34zJBm0zefoaIgTL3yXWCLQg+pa/ukbhUaUhyhqm4vOg24MM79mMPqFbH3dsM9CeboHP
         R8DdwjkN8QyBf+Nuz6BRprKhazGyqlLb+HGnZKRoo0b5yPFxCJ8ur59refRQGVYzbzRA
         ZK2WcH1cKFadi9MMKozx9srenrHuel6jrnZCi0rgPaYh2WxPRLy8gS/hf7zj9KqgI2z7
         ZdfxMIF0b7MZBdgLsV2LfEqHcTia3YWS8n9MmsHvp5+soR0CVf/WdyMbrJNauHP8XJgm
         LXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678270178;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ok2/nBRgbVABCoHshpKZappz1y1eWe3S6TRtnzmaEzQ=;
        b=kEj+rkTQvl6bPVAWViJGNGyGMU72IFrVy5N7qQAsFk9qqQ7RFZjot/B26ynGlQ6AYb
         8oyLvBSwsimf2NP88aRam2pADnQj3Thnkmgrhm8F0DpkvPtP9HMx4Op1MIEeWeE9F7WR
         AifgmiwWgGujHjcXjBSNo7vhuClhzfVTLHzDXX9MuiryHlv7UaoCkQSNpt3478vml5f4
         yJzXS6KIiaVV3Uq1CdaejTUc9byeF6BW8iUv9MD3n2xJF8v8HIpm2Iv8OohynH+qEpvE
         XUtz6lxkrBK524D2IROMTxSK6Vx+Qr+bmYwUMGoSMuiYMPte0n3BJSxCoiBTsx0i2Wpl
         vJew==
X-Gm-Message-State: AO0yUKXsGYYzTzeIUqzonqKml5pXpunAbPOjAPuVIaJMPtqBCmBnYGUD
	X85g87oSVXQmDqIPLuKasDrlDciOajZbc9NwaCHiuQ==
X-Google-Smtp-Source: AK7set/Rh3cuFntQQJX3O+NJaxT3OP1L9iEaBKgw7/gQjdTfDEBWypNRoDZHJ/2lV/laiSqjA8X7EuX6buMWFma0wP8=
X-Received: by 2002:a63:3504:0:b0:502:fd15:2ad6 with SMTP id
 c4-20020a633504000000b00502fd152ad6mr6506669pga.2.1678270177782; Wed, 08 Mar
 2023 02:09:37 -0800 (PST)
MIME-Version: 1.0
References: <OaQ6.1678222088687535044.x2D8@lists.yoctoproject.org>
In-Reply-To: <OaQ6.1678222088687535044.x2D8@lists.yoctoproject.org>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Wed, 8 Mar 2023 10:09:01 +0000
Message-ID: <CAK18fxHvwBJibi6e7MXsnESg760h5myYepRJLk+vuySRRdUmnA@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Enable Libcamera
To: sebastianpetersen84@yahoo.dk
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c8c3ae05f660b995"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 10:09:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59364

--000000000000c8c3ae05f660b995
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 7, 2023 at 8:48=E2=80=AFPM punctuation via lists.yoctoproject.o=
rg
<sebastianpetersen84=3Dyahoo.dk@lists.yoctoproject.org> wrote:

> Dear community,
>
> I am using yocto for my embedded image for a compute module 4. A camera
> sensor is connected to the CM4 and the camera module is loaded correctly =
as
> I can use v4l2-ctl to write frames.
>
> However, libcamera is not able to find the camera when I use the "cam -l"
> app.
> I include libcamera using:
>
> IMAGE_INSTALL +=3D "libcamera"
>
https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.html#e=
nable-raspberrypi-camera-v2

This might help.

> Am I missing something? I haven't been able to find any documentation on
> libcamera in yocto.
>
> Kind regards
>
--
Andrei

--000000000000c8c3ae05f660b995
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 at 8:48=E2=80=AFPM pu=
nctuation via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.=
org</a> &lt;sebastianpetersen84=3D<a href=3D"mailto:yahoo.dk@lists.yoctopro=
ject.org">yahoo.dk@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><p>Dear community,<br><br>I am usi=
ng yocto for my embedded image for a compute module 4. A camera sensor is c=
onnected to the CM4 and the camera module is loaded correctly as I can use =
v4l2-ctl to write frames.=C2=A0</p>
<p>However, libcamera is not able to find the camera when I use the &quot;c=
am -l&quot; app.<br>I include libcamera using:</p>
<p>IMAGE_INSTALL +=3D &quot;libcamera&quot;<br></p></blockquote><div><a hre=
f=3D"https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.h=
tml#enable-raspberrypi-camera-v2">https://meta-raspberrypi.readthedocs.io/e=
n/latest/extra-build-config.html#enable-raspberrypi-camera-v2</a></div><div=
><br></div><div>This might help.</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><p>Am I missing something? I haven&#39;t been able to find any=
 documentation on libcamera in yocto.</p>
<p>Kind regards</p></blockquote><div>--<br></div><div>Andrei <br></div></di=
v></div>

--000000000000c8c3ae05f660b995--

