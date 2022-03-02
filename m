Return-Path: <menon.vinayak@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F0DC433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Mar 2022 06:29:47 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web09.4759.1646202586548827361
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 22:29:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YP6Fteep;
 spf=pass (domain: gmail.com, ip: 209.85.208.177,
 mailfrom: menon.vinayak@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id p20so907481ljo.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 22:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=D1Z0nEpQW3ljdC1U3/fVUbe/VAFSt4FJCrgkvjwZr+8=;
        b=YP6FteepQapFsLSLgj7DmaA6CC5a5NRK+wjj7grDXjPdKDU3ccTnnvTTuLS3EVmSLG
         bmu6dHyMhhhs8foc/V5MrIJLrCuqO2sGgdsv/bf75IxkV9um7K5guFAQ3bpOySDyGwZc
         OG+5338kW2qJSHJigHv6EoMTF5OtEz+qdh5+T9IS9bsMoswPFYIkpMRQ+cwE8gLqm0YJ
         QCQglOieFj3m/XxLuL2zv8OxV+w38PuAQUQb47uKV8cXgXQH3/D9Ait7yarxlfoE3dgc
         IlzXboxF35uenzgL2MFcUjXls3rgppUPZPP3qLOEQpxTgE24eWmIn8PbCFA3hYna/iag
         JVJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=D1Z0nEpQW3ljdC1U3/fVUbe/VAFSt4FJCrgkvjwZr+8=;
        b=7Og9ebIXKhDZkuNFDUFX6eALd/tgkJkFf1AlhfWb1d5ydB123U9S1uzwn88OlAQUTe
         Evj0CWDMvPAVrWv9yIc/Iraalc/OoZGRIOQ/2pgaTLfpsfPZK5L0UplO3oRIQs+IXY/V
         rEd7QMIzQroUesJZXbOx+Gxe0LDTukoU9cZXm1i5qNz+BCHacZ65dIinEo4NO/SfNoQ5
         n0Ve7B0pZS6cGsV6VZk4RLgPq4IhbDbMltpzoN5ZKwozHa9fbIn3PiI+eklMo9XLk6Td
         bp2xxpeP0+oypED/fPQJatinfadyTuztJGXw0i0QC9HabSb52qPyeNPoQJf6dJNrKTzT
         GyLw==
X-Gm-Message-State: AOAM533FZEFFaNllY/n1hyCveElZoOZsCkYWxSBk3Oxvs6jM9ULYEDDq
	1P3id1tafTeMZU9Zs1eMxFAGFzzUvK6gIZQH3H4=
X-Google-Smtp-Source: 
 ABdhPJz4sUNlXDRlDEaBrPUVqgnGe13NbzECmNtdIXT5T4aGU3uL+J23rOaUtygQfwfU3/YMfTDTNTnwhFGpm2lz2fM=
X-Received: by 2002:a2e:a305:0:b0:246:4233:3848 with SMTP id
 l5-20020a2ea305000000b0024642333848mr19025251lje.3.1646202584521; Tue, 01 Mar
 2022 22:29:44 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
 <19024.1646126763231751613@lists.yoctoproject.org>
 <CAH9dsRgmBt-Y-P0P+1o1u6RC2WqFXH03nURMnaDpZJjNH_nE0Q@mail.gmail.com>
In-Reply-To: 
 <CAH9dsRgmBt-Y-P0P+1o1u6RC2WqFXH03nURMnaDpZJjNH_nE0Q@mail.gmail.com>
From: Vinayak Menon <menon.vinayak@gmail.com>
Date: Wed, 2 Mar 2022 11:59:33 +0530
Message-ID: 
 <CAH9dsRgUsFarc+fvjcAo7ocekB7__eDWvWks8ej23A9EzPk--w@mail.gmail.com>
Subject: Re: [yocto] On managing debug and production builds
To: tomzy <tomasz.zyjewski@3mdeb.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Mar 2022 06:29:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56347

Add list. missed earlier.

On Wed, Mar 2, 2022 at 8:11 AM Vinayak Menon <menon.vinayak@gmail.com> wrot=
e:
>
> On Tue, Mar 1, 2022 at 2:56 PM tomzy <tomasz.zyjewski@3mdeb.com> wrote:
> >
> > Thanks Tomasz. I will check kas.
> >
> > No problem
> >
> > Yes, for selecting some of the packages I have created prod and debug i=
mage
> > recipes.But this did not work for the kernel as the kernel recipe is pi=
cked
> > as part of PROVIDERin machine conf.
> >
> > What are the difference there? You want to use different config on prod=
 and debug images?
> > Maybe add it as config fragments? Then you would need to add some globa=
l variable to
> > distinguish when use given .cfg file.
>
> Ya, and I am using exisitng IMAGE_FEATURE instead of the global var. I
> can use global var too.
> The only thing is that I am setting the global var from a conf and not
> image recipe.
>
> >
> > [1] https://docs.yoctoproject.org/singleindex.html#creating-configurati=
on-fragments
> >
> > SoI had to use 2 conf to have the
> > IMAGE_FEATURES (orany other var)set differently for prod and debug. Thi=
s is for
> > building the kernelrecipie differently for prodand debug. Setting the
> > IMAGE_FEATURES in the image recipe (and not inconf) causes2 problems. O=
ne is
> > that kernel and other bootloaders recipes are picked early via PROVIDER=
 in conf
> > and not as packages included in image recipe.
> >
> > Is that a problem?
>
> Ya you are right, that is not a problem as such. But I have seen in the y=
octo
> documentation that IMAGE_FEATURES are recommended to be set from conf.
> Is there any reason for such a recommendation ?
>
> >
> > Secondly,setting the var in the
> > image recipe breaks this command for e.g.
> > "bitbake base-image-prod.bbbase-image-debug.bb".
> >
> > Didn't you want to distinguish this to builds to be able to run `bitbak=
e base-image-prod` or
> > `bitbake base-image-debug`?
>
> Yes I want to distinguish, and as a developer I can give separate
> bitbake commands. But the
> thought was that later the user can issue commands the way they want.
> And if they use it in
> combined manner described above, expecting 2 images with different
> kernels, it does not work.
>
>
> >
> > Since the command parses the recipes only once for both image creation.
> >
> >
> > Nevertheless I would greatly recommend you to use kas. In simple .yml f=
ile you
> > could prepare different `local.conf` per configuration prod/debug.
>
> Sure, I will explore this.
>
>
> >
> > [2] https://kas.readthedocs.io/en/latest/userguide.html#project-configu=
ration
> >
> > Regards,
> > Tomasz =C5=BByjewski
> > Embedded Systems Engineer
> > GPG: 5C495EA3EBEECA59
> > https://3mdeb.com | @3mdeb_com
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56335): https://lists.yoctoproject.org/g/yocto/mess=
age/56335
> > Mute This Topic: https://lists.yoctoproject.org/mt/89469781/6783826
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [menon.vinaya=
k@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> vinayak



--=20
vinayak

