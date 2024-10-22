Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21E44D1CDC3
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 09:11:04 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.14232.1729588250584275659
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Oct 2024 02:10:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Chg03fza;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so5723164e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 02:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729588249; x=1730193049; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CHyp5oaQrm2rV48rXzwXHT8AiLf0jOF/rbJ39pV9BYQ=;
        b=Chg03fzaFhwrxlHtcaLveljQMfz8zxWBUWLFIKJ/Fffc6eBOaRjjLlxs8+4HwVrplC
         QJsBc1BhmDR4JyIgKKFSyN9FXgtvIbtdUBe/Mbj1KEoImN9l9XCAg+/PTEitZea1F9a2
         /Fp4+Q4+NaKTYRSY11IeID7C5d2StDClqoCT7ypzsg5BnqWgcXokLCgqzxr6PMbK1/SC
         Wb8OCiCBknHWSSES7wU1pBuCpDqjAXlIWOb5ganmZa2/FhXOo1yM9thM2f+bzYdlkan6
         IiN14RkmxiAG3eSFtf/l+MxaFwysnHUT/twI8rPtE31BExP2RbF6WMOiJ/2TeFKV63Y3
         v4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729588249; x=1730193049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CHyp5oaQrm2rV48rXzwXHT8AiLf0jOF/rbJ39pV9BYQ=;
        b=Ak4lYZPxn+tK6v4F+91a7tun4CatImS1c7n2gLaQpcEDdNAb9Lh+zdbMCes+pWh0c6
         GPDZT6UEf+Fbo9DkL/Ss0nFB8taTLlXfzVJ+UxIrZdQh2tqDcD7RgGT7ZXfHWiZ5ek6/
         BLaf1DFjQVIfQtN4rHFEWNaeDF8F7tnMgaIe26Z2Vsq9xmRJIi32YnThzYMzaK+jv4km
         wFSVOEMx3mndOkYQDrZ9TzPca+4Ec+QvKFWcLBfh0+FzXjMEHc+3cpHoc3zxsHsuQibf
         G3JnRtpHwhMTBPJDwO6mQbzb/IITMXZiX7+o9Rk0t3sB3gAyi8Wc5LbVAmN+R/nGCE96
         M1yQ==
X-Gm-Message-State: AOJu0YyppjCeteUMvWyn5tmDJzzo+Sfi+8H4pPacZ5GOkz3XXcKsyH3t
	NWeHWhT/JmfDcfHStjrDgoeke7xyRgzd4SK4uWWbo1x5KhdpfiMXPfxLInC5UWkQWo9E6If9mfu
	QUY9dxe8g+pnVRhD3AOa9Aczt3YJHIQ==
X-Google-Smtp-Source: AGHT+IEsHeqnvuZNv3faSYIikovXiOKVDQS1q1jzvT2LEbIgTTpTRO/1WwZ1RTFn8C/+NJUxuKm3DvBl2EWYy18podo=
X-Received: by 2002:a05:6512:b01:b0:539:e776:71f2 with SMTP id
 2adb3069b0e04-53a154d04a7mr7409863e87.52.1729588248300; Tue, 22 Oct 2024
 02:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <PAXPR10MB52772C5FC76FBDCB1FF4341599432@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj83XvvQdzDWyHEL90PpYi1QbsfR1VMOT2BGgHsLWqtZXQ@mail.gmail.com> <PAXPR10MB5277BD134A82CC1BBC53DF32994C2@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <PAXPR10MB5277BD134A82CC1BBC53DF32994C2@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Oct 2024 11:10:36 +0200
Message-ID: <CANNYZj_whK0M5UnBRMoJWH818fcL2MuvEj-OfxivrcAtRuu=ig@mail.gmail.com>
Subject: Re: [yocto] Strange problem when extending the linux-firmware package
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 09:11:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64080

I guess your firmware-specific package contains a symlink to something
in the 'main' linux-firmware package? This is where the dependency
comes from. Then you need to figure out why it goes to the main
package and not to the specific one.

Check what goes where in ${WORKDIR}/package-split/. Then again use
bitbake -e to see the rules for FILES for various packages.

Alex

On Tue, 22 Oct 2024 at 11:07, Matthias Klein <matthias.klein@optimeas.de> w=
rote:
>
> Hello Alex,
>
> I have made a small step forward.
>
> Even without my customization, some packages are =E2=80=9Cbroken=E2=80=9D=
 in terms of dependencies.
> The cause lies in generated links for which messages appear in log.do_pac=
kage:
>
> DEBUG: Executing python function package_fixsymlinks
> ...
> DEBUG: linux-firmware-qcom-vpu-1.0 contains dangling link /usr/lib/firmwa=
re/qcom/vpu/vpu20_p4.mbn
> DEBUG: target found in linux-firmware
> ...
>
> This changes the dependencies in the ipk files:
> Depends: linux-firmware, linux-firmware-qcom-license
> Source: linux-firmware_20240909.bb
>
> Normal packages have no dependency on linux-firmware:
> Depends: linux-firmware-rtl-license
> Source: linux-firmware_20240909.bb
>
> In an older scarthgap with linux-firmware version 20240312 much less of t=
hese links were recognized as =E2=80=9Cdangling=E2=80=9D.
>
> Do you have any idea why the mechanism with the links no longer works pro=
perly and leads to the dependencies on linux-firmware?
>
> Best regards,
> Matthias
>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Alexander Kanavin <alex.kanavin@gmail.com>
> Gesendet: Montag, 21. Oktober 2024 12:16
> An: yocto@lists.yoctoproject.org; Matthias Klein <matthias.klein@optimeas=
.de>
> Betreff: Re: [yocto] Strange problem when extending the linux-firmware pa=
ckage
>
> You need to run 'bitbake -e linux-firmware' and check how RDEPENDS is for=
med.
>
> Alex
>
> On Mon, 21 Oct 2024 at 10:33, Matthias Klein via lists.yoctoproject.org <=
matthias.klein=3Doptimeas.de@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> >
> >
> > a few months ago I added Bluetooth firmware via a linux-firmware_%.bbap=
pend file with the following line:
> >
> >
> >
> > FILES:${PN}-rtl8723 +=3D =E2=80=9C ${nonarch_base_libdir}/firmware/rtl_=
bt/rtl8723*.bin=E2=80=9D
> >
> >
> >
> > I had added the linux-firmware-rtl8723 package to my image. Until a few=
 days ago, this worked wonderfully.
> >
> > Since about October 18 or 19, adding the files ${nonarch_base_libdir}/f=
irmware/rtl_bt/rtl8723*.bin causes all firmware packages to end up in the i=
mage.
> >
> > In a way that is unexplainable to me, the package linux-firmware-rtl872=
3 seems to get a dependency on linux-firmware, which causes all firmware pa=
ckages to end up in the image.
> >
> >
> >
> > Does anyone have any idea what is happening here?
> >
> >
> >
> > Best regards,
> >
> > Matthias
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#64058):
> > https://lists.yoctoproject.org/g/yocto/message/64058
> > Mute This Topic: https://lists.yoctoproject.org/mt/109128695/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > [alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

