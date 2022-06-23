Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6316BC43334
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 01:29:55 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.2410.1655947794724849421
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 18:29:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IGMiZJXU;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id y14so22557671qvs.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 18:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6FaMj2BTpnCivNCEmQzpPmXOlYqGtxBM4fNO4+9wvo8=;
        b=IGMiZJXUx6Jvf3/IfPDcUdFL3Vipr4wUwRe+mdGEnkPqNZkyF334wBqt1o58Rf55tc
         DLWtMga/VM9KPiPXwoR//bwGfyIX6X+Vr/sBkpsHJzpCSH4jnrswgrKJnK04BZjTG4yx
         gRbfNxrMFhjn9YEd5TNi+neDAL6tHrUmR2NS3dFP+VBnSvsNYFC6RgOHk0P6h8jcxkAT
         3p9EWLT9o9+2KS4IIdseNSL8TsjGXDEsqiMQwLZETKHqFSb8VWWMR4OsgYAox602YNIS
         KX+ieWpyrW1mYBStFGi5+hFk8rn9V63mk3Atmm9u+eRCzr6erPFNMRIBW73KGqSOZFfk
         yd9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6FaMj2BTpnCivNCEmQzpPmXOlYqGtxBM4fNO4+9wvo8=;
        b=j6dZLoHblzMzbWY+TU8ItHfwJ7eZdHRgqpFWSglYjWoegTZ5ocaWnv4p0jU5aegIhH
         mUtNu/F/KTZAUj6cGLUqURy2A97HXJ4DE6OhlZVPY2XzP7j8MjzuYNapEH311mw44/oX
         o2iGvyLVdUXM08rGxdsADIT28JCIrKjZz2vIjo7paxk4j9a5vY2+ATgtir/vaz6JMYtI
         T/iajG8xxmMtx5sRhlMEApBFq2BeIYnUvp+rK1Ga1TGra9xZ20wMnT/NiIzpO1djXsdc
         xuaG0YXspP52MncYTuQ6Cf2Px3W7lkhVyxLub3ba2YFSHlC1V3ZqA1fqCNNZWcbIv97S
         EeRA==
X-Gm-Message-State: AJIora/wjffgU1QQcaNl0n8oG5ktBhp3c9TuGvvQlzBKcDyM9ECQBMph
	K6T+n4BbgKYJM6hpIf9HkZJbOYxvy8wxWXV2OgA=
X-Google-Smtp-Source: 
 AGRyM1ugOxBf3IqI+pBgwcicxNAQgZT+RmFwWMmE49Sa4IewfO9S7u5js8YF3KmoIimE3KNZMTptO6FyAUAjx4/PLHc=
X-Received: by 2002:ac8:7d4f:0:b0:304:e3af:9309 with SMTP id
 h15-20020ac87d4f000000b00304e3af9309mr5827180qtb.634.1655947793732; Wed, 22
 Jun 2022 18:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <hCzM.1655928385036906321.hS1G@lists.yoctoproject.org>
In-Reply-To: <hCzM.1655928385036906321.hS1G@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Jun 2022 06:48:10 +0530
Message-ID: 
 <CAMKF1sqGwua2WeveC4DGnr6k9=Fov0UR0pG3nsDpVp+-kSdmnw@mail.gmail.com>
Subject: Re: [yocto] LInker Errors: Cannot find crti.o/crtbeginS.o. No such
 file or directory. #honister #make #yocto
To: douglas.cooper1@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000319b805e213640d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 01:29:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57379

--0000000000000319b805e213640d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 23, 2022 at 1:36 AM <douglas.cooper1@gmail.com> wrote:

> Hello. Im trying to write a recipe for an autoconf based project. Ive
> managed to resolve most of the include and linker issues with the excepti=
on
> of the subject error. The files in question exist at <sysroot>/usr/lib64
> and <sysroot>/usr/lib64/${TARGET_SYS}/10.3.1 and those paths appear to be
> on the file search path with sysroot set as expected. Any help would be
> appreciated.
>

It=E2=80=99s linker cmdline which is interesting here please post it and th=
at will
help to see further

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57377):
> https://lists.yoctoproject.org/g/yocto/message/57377
> Mute This Topic: https://lists.yoctoproject.org/mt/91929966/1997914
> Mute #honister:https://lists.yoctoproject.org/g/yocto/mutehashtag/honiste=
r
> Mute #make:https://lists.yoctoproject.org/g/yocto/mutehashtag/make
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000000319b805e213640d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jun 23, 2022 at 1:36 AM &lt;<a href=3D"mailto:dougl=
as.cooper1@gmail.com">douglas.cooper1@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><p>Hello. Im trying to write a recipe for an au=
toconf based project. Ive managed to resolve most of the include and linker=
 issues with the exception of the subject error. The files in question exis=
t at &lt;sysroot&gt;/usr/lib64 and &lt;sysroot&gt;/usr/lib64/${TARGET_SYS}/=
10.3.1 and those paths appear to be on the file search path with sysroot se=
t as expected. Any help would be appreciated.</p></blockquote><div dir=3D"a=
uto"><br></div><div dir=3D"auto">It=E2=80=99s linker cmdline which is inter=
esting here please post it and that will help to see further=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><p dir=3D"auto"></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57377): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57377" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57377</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91929966/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91929966/1997914</a><br>
Mute #honister:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashta=
g/honister" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/g/yocto/mutehashtag/honister</a><br>
Mute #make:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/ma=
ke" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/make</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000000319b805e213640d--

