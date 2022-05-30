Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C376C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 11:59:30 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web08.35771.1653911964935950240
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 04:59:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OK/T5ytW;
 spf=pass (domain: gmail.com, ip: 209.85.167.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id s6so426072lfo.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 04:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CMjTcLm/1bJ40dOVoyDIntV5xVvNFoVQPYpBZQ2S4ms=;
        b=OK/T5ytWVDZBk7XCFNKCAGm+WZ3dSU9+j+bMH9As+FSCwGzzRAELOm/ULm6e7YFdwo
         icQGzDOz2nmHg0rsEahAGrfZcRqkGlMsJdod7PJAM43q70FbUtF/wzVQapJ0jLKX+9B2
         RWMQ1brhs4HdQW9RAgKnaMy59x0XsYfTAFM6NdxTeyu9OKFslEzECGcfGJyFZY6HOffk
         fFkjOJAaGJdS9AoeTt9Y/lVu5u7kfyvLXWDh8VlCjSUAlaxndTKBw8zw3B2M0A4IMXOG
         dj/1niJzUh7m7gyfjqgb+e4bTJvk+oy79Z1dbOXXnXxedBM5D4pQvD7YSrOcUJxcLOt4
         2boQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CMjTcLm/1bJ40dOVoyDIntV5xVvNFoVQPYpBZQ2S4ms=;
        b=gpotLbji+iti9p+dNZCiXzRST9Gk1qiR+BZujdXJZrJx8sZ10JGf1MjjFPaA9eB6VZ
         iE5x6rHyG+hp9+wt9+6/vTMZ9VRso4Qvg2fLkSg9xpdD195KaI7j32xFxkVR4UZDbE3t
         B7v5W40mbGaklHP6DAxFOvRIOzm4guqb/TqGYSWB+82uL3rNj4LOJOV3tIo3CzeVn+Tr
         g8I1m8yAQCFAP01JRbDXLxEC/RL5W29m7EH6weCO10kTDF1BlqCfWDcpClQXVbG4FkMt
         1UrXcuWDrTDI05gMf/1BQpeGaluxFoNrJMXsL/+a7eC1VSTKZTt8ZiYVwKH3FogIrpVj
         g5eA==
X-Gm-Message-State: AOAM531mdRGJZIhoL3p2xzoBy33UTYob5tEkcvka3gd4ocyw7uqZPa6U
	v6z2dABJ3gDRtF5hKNvAMTiksPjgZxbJ5jtsO88=
X-Google-Smtp-Source: 
 ABdhPJzLkjHoktpooxl8Ip3IMKL+JymKfC6yzILcKytySzY1ZEOfSql/90QGb1bElMTiF0cyWcHC7j2yo8/jTyRIGqA=
X-Received: by 2002:a05:6512:2348:b0:478:5ad6:af37 with SMTP id
 p8-20020a056512234800b004785ad6af37mr33776329lfu.26.1653911962987; Mon, 30
 May 2022 04:59:22 -0700 (PDT)
MIME-Version: 1.0
References: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
 <HE1PR08MB28592FED495F7FF57186CBE98BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
In-Reply-To: 
 <HE1PR08MB28592FED495F7FF57186CBE98BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 30 May 2022 13:59:11 +0200
Message-ID: 
 <CANNYZj_MnNcJ327WuFsX9zXAxv6bMptu8U8O9qRYUuM2-21PgA@mail.gmail.com>
Subject: Re: [yocto] How to modify an existing file from an optional recipe?
To: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 11:59:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57214

I'd say it's better to modify the original recipe, can you do that?

Alex

On Mon, 30 May 2022 at 13:39, Cardenas Jose Antonio (JCARDENA)
<JoseAntonio.Cardenas@niko.eu> wrote:
>
> Yes, indeed. It's a hack to be able to run some tests. Does the "image po=
st processing task" that you comment related with SDK_POSTPROCESS_COMMAND?
>
> Regards.
>
> -----Mensaje original-----
> De: Alexander Kanavin <alex.kanavin@gmail.com>
> Enviado el: lunes, 30 de mayo de 2022 13:29
> Para: Cardenas Jose Antonio (JCARDENA) <JoseAntonio.Cardenas@niko.eu>
> CC: yocto@lists.yoctoproject.org
> Asunto: Re: [yocto] How to modify an existing file from an optional recip=
e?
>
> CAUTION: This email originated from outside the organization. Do not clic=
k on links or open attachments unless you recognize the sender and know the=
 content is safe.
>
> You can do this with a postinst scriptlet, or with an image post processi=
ng task, but generally this looks like a hack regardless of how you do it. =
What is the file for, and why does it need to be replaced?
>
> Alex
>
> On Mon, 30 May 2022 at 13:23, Cardenas Jose Antonio (JCARDENA) <joseanton=
io.cardenas@niko.eu> wrote:
> >
> > Hi all,
> >
> >
> >
> > I have a recipe that is built only with the SDK that modifies the conte=
nt of an existing file in the rootfs by doing =E2=80=9Cinstall -m 644 ${WOR=
KDIR}/my_file ${D}${sysconfdir}/my_file=E2=80=9D but this command is return=
ing next error:
> >
> >
> >
> > Error: Transaction check error:
> >
> >   file /etc/my_file between attempted installs of
> > my_recipe-1.0-r0.7.armv7ahf_neon and
> > initial_script-1.0-r155.1.armv7ahf_neon
> >
> >
> >
> > I have seen that the best practice to modify an existing file is to cre=
ate a .bbappend but this modification would be done for all builds, not onl=
y for the SDK. So what would be the best way to do this?
> >
> >
> >
> > Regards.
> >
> > Jose
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#57211):
> > https://lists.yoctoproject.org/g/yocto/message/57211
> > Mute This Topic: https://lists.yoctoproject.org/mt/91428591/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > [alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

