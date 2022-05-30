Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D792C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 12:41:30 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.36177.1653914484030601615
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 05:41:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nFEEW0GX;
 spf=pass (domain: gmail.com, ip: 209.85.208.181,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id q1so11503376ljb.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 05:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nAjb2l+l7xwkxdCF4GPacky7nQ25cLcS4LfcHeYVVx4=;
        b=nFEEW0GXR8emA+okypxRSTP+s6s+EAqwhX01TISsI1u2B+2G+llCxz68JcYly+XlXw
         7lhBN+tOXM6DmxSk/d8b93etYQp1DkPx+bm67fD44oS3ZGWkgTsVw9W3w7s8fJsrGpw4
         8nekmKvJBeTpdpbgqjrsIAUj/8ki6DlR5nzqanDxSYO2juHN6hc5IlXkgFiJ6SQFUFY0
         FOzsVEEcCTN61TpbDDBBUtWQD4xNiy3ld5AJmpIBAQBY6KxiB3jGm2okzVeOViZjJRvy
         qkVfV4u8wjMivZZGA8J1V5b31Ri8vRYYbwWxniW29TcmL2p/59j+t5NHcYIdqJUCKxWr
         Utbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nAjb2l+l7xwkxdCF4GPacky7nQ25cLcS4LfcHeYVVx4=;
        b=CN+RnDBcaL9pyxcPXI6ggH2EPG0XLfsCQ9kfeyD2zk9gTWXb/YkHZM+dkffivHn05X
         qnXBhC6Fd8hrNll9hK+7sFmgYSnzgJum6pbgre8UKzVzBoXaShWgMRqD8/kDfNLOlN4C
         Y4GTKA5s3iGnAa7TDaP+PQDFcgpHzUFeGJsPhR+mH3HjTr2ECjku/Ev0+oEZN/snPXqx
         sa9avqqPyqorS+5Rsis8h3ErZl1Z0qZ4LQWoy/aP5797iUNz1J9Ku9b3dEivS4xVx8xB
         oXslH91iKIxtLuuRS23vAxrQue/4v+BGqdyQFw9qNvxsdQg9SYDr+rLxIsBE4ZuNg8oc
         qtBA==
X-Gm-Message-State: AOAM531gILQVJ32ZnORQDA0/1Mjp17V+AX3UkbO+hLwydSdnokfLamKJ
	6iLtJ0AE7iqD53vA/oY7D2zjPvEWdKii7KQTDOU=
X-Google-Smtp-Source: 
 ABdhPJxOznulD0pvzKS5SO7mwrlhpT4KPJojaaahOh87Q8WsnZlTfZSbSGgYRzP/fY9fPxx+uJllMUnqtqCAoKGVJTY=
X-Received: by 2002:a2e:a812:0:b0:255:4aaf:c1fc with SMTP id
 l18-20020a2ea812000000b002554aafc1fcmr5546545ljq.257.1653914480746; Mon, 30
 May 2022 05:41:20 -0700 (PDT)
MIME-Version: 1.0
References: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
 <HE1PR08MB28592FED495F7FF57186CBE98BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj_MnNcJ327WuFsX9zXAxv6bMptu8U8O9qRYUuM2-21PgA@mail.gmail.com>
 <HE1PR08MB28596B6A4B9DCBBEB237EFF58BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
In-Reply-To: 
 <HE1PR08MB28596B6A4B9DCBBEB237EFF58BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 30 May 2022 14:41:09 +0200
Message-ID: 
 <CANNYZj85VSgYZY7ZVL0ybj_9h=qjO96L+c3t8QQP0ZuKoqU09Q@mail.gmail.com>
Subject: Re: [yocto] How to modify an existing file from an optional recipe?
To: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 12:41:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57216

Then you should look at something like ROOTFS_POSTPROCESS_COMMAND,
which runs an extensible set of functions after the rootfs for a
target image has been formed through package install in do_rootfs.

Alex

On Mon, 30 May 2022 at 14:31, Cardenas Jose Antonio (JCARDENA)
<JoseAntonio.Cardenas@niko.eu> wrote:
>
> I can't. The file that i'm trying to modify is a configuration file of a =
service that is built with its recipe and in my "optional" recipe what i'm =
trying to do is change a parameter of that configuration file.
>
> -----Mensaje original-----
> De: Alexander Kanavin <alex.kanavin@gmail.com>
> Enviado el: lunes, 30 de mayo de 2022 13:59
> Para: Cardenas Jose Antonio (JCARDENA) <JoseAntonio.Cardenas@niko.eu>
> CC: yocto@lists.yoctoproject.org
> Asunto: Re: [yocto] How to modify an existing file from an optional recip=
e?
>
> CAUTION: This email originated from outside the organization. Do not clic=
k on links or open attachments unless you recognize the sender and know the=
 content is safe.
>
> I'd say it's better to modify the original recipe, can you do that?
>
> Alex
>
> On Mon, 30 May 2022 at 13:39, Cardenas Jose Antonio (JCARDENA) <JoseAnton=
io.Cardenas@niko.eu> wrote:
> >
> > Yes, indeed. It's a hack to be able to run some tests. Does the "image =
post processing task" that you comment related with SDK_POSTPROCESS_COMMAND=
?
> >
> > Regards.
> >
> > -----Mensaje original-----
> > De: Alexander Kanavin <alex.kanavin@gmail.com> Enviado el: lunes, 30
> > de mayo de 2022 13:29
> > Para: Cardenas Jose Antonio (JCARDENA) <JoseAntonio.Cardenas@niko.eu>
> > CC: yocto@lists.yoctoproject.org
> > Asunto: Re: [yocto] How to modify an existing file from an optional rec=
ipe?
> >
> > CAUTION: This email originated from outside the organization. Do not cl=
ick on links or open attachments unless you recognize the sender and know t=
he content is safe.
> >
> > You can do this with a postinst scriptlet, or with an image post proces=
sing task, but generally this looks like a hack regardless of how you do it=
. What is the file for, and why does it need to be replaced?
> >
> > Alex
> >
> > On Mon, 30 May 2022 at 13:23, Cardenas Jose Antonio (JCARDENA) <joseant=
onio.cardenas@niko.eu> wrote:
> > >
> > > Hi all,
> > >
> > >
> > >
> > > I have a recipe that is built only with the SDK that modifies the con=
tent of an existing file in the rootfs by doing =E2=80=9Cinstall -m 644 ${W=
ORKDIR}/my_file ${D}${sysconfdir}/my_file=E2=80=9D but this command is retu=
rning next error:
> > >
> > >
> > >
> > > Error: Transaction check error:
> > >
> > >   file /etc/my_file between attempted installs of
> > > my_recipe-1.0-r0.7.armv7ahf_neon and
> > > initial_script-1.0-r155.1.armv7ahf_neon
> > >
> > >
> > >
> > > I have seen that the best practice to modify an existing file is to c=
reate a .bbappend but this modification would be done for all builds, not o=
nly for the SDK. So what would be the best way to do this?
> > >
> > >
> > >
> > > Regards.
> > >
> > > Jose
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#57211):
> > > https://lists.yoctoproject.org/g/yocto/message/57211
> > > Mute This Topic: https://lists.yoctoproject.org/mt/91428591/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > > [alex.kanavin@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >

