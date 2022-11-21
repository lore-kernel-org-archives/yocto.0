Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C6EC43217
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 16:48:48 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.44033.1669049323982360703
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 08:48:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BWoPRRQP;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id t10so15208202ljj.0
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 08:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SbXr3PBouHvH4fFCUci9PjNx9YbwKyvkVBI+h87vn8E=;
        b=BWoPRRQPKaZCY/WA/ROfRUS7sJNw67qx4hbwUiq76d4uyGsX0yly4rSwx/mvFcZV09
         oRAmtJJYO8JGgKNwM+RwWyQTwJV8MyWqzv9R4jh8+FawBEo9ftMOOGo4gVB4ubo2BKpa
         lL7vhkY4mmGuxW+IeCaq92TtAiwCDtYj+RWe39YY0SYg6VtD6dYMq5tD9mNOHiu7omXI
         XleXaIWbm8vWWrSjkO5fCwzyDEIUE0LOFJ9glHHcuSSUxc8MRAPmCgL+4owVc0o5r2n1
         bt/tQAy8PBKBvjpIaMsnRu2cO9VIMbGF7B19uOxpJsW8lSBeiraAa66jZYn6SLQolgHY
         oAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SbXr3PBouHvH4fFCUci9PjNx9YbwKyvkVBI+h87vn8E=;
        b=qFelKyDCgiAtl9srV/nuV3oACSFW3L6ersm8eJ2gmNTBeEtAmsRe8A+/C1dc69KqGW
         Gnbw09mXemC3cI6TAyZZMap+vNDUaCNC5YnEnOzTNDjsrMRlXUKERmaaT0BLzGsMHosp
         T00nXROJUOSQ4Y4ET7wvgF+Tm2s6EeIFIn6quYvimXDEts16C14JoznlzwAAXEFmau6b
         hGL/prgAkcJ1i1Os0EkxqHeNO+xIJdNrdQGnAvb+YHnWd5kLeDtZJRKfVq/ewHDVTP3n
         mhRO/FvedLtccRLisOLNEAkOohjxF3cDV5tt57qZz1vu1bVB4B71hzy8IoZRMJEFHhcr
         40Jw==
X-Gm-Message-State: ANoB5pnnZfYHN2CqqYpb6uImJhV/aeyGcpdPLh2/ab5eJNd+h+pqa0Zr
	NDAWtDnT/nRuD49Ec15bwV3Pz/drsmc0oR955Pw=
X-Google-Smtp-Source: AA0mqf53jcwPWdR4eZKJaKMVdo3P3Z3Wyb/2PZgp+1n89MwSBLAyOM+D1hO4Dzej4b0Lw9SQuoZ2l+1mGiYxadWf2I8=
X-Received: by 2002:a2e:be8a:0:b0:26f:c081:9aed with SMTP id
 a10-20020a2ebe8a000000b0026fc0819aedmr5997729ljr.222.1669049322053; Mon, 21
 Nov 2022 08:48:42 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj_4dYa5=-svn-gHioAPfzTxGTE3wJAw+XUueFxVOrHAOA@mail.gmail.com>
 <24762.1669045082837771574@lists.yoctoproject.org>
In-Reply-To: <24762.1669045082837771574@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Nov 2022 17:48:31 +0100
Message-ID: <CANNYZj_Nn0vA+sOQV+Faj-r5AQZT=Qsduh1y=oyJw0Su7ayHmA@mail.gmail.com>
Subject: Re: [yocto] Apply Patching #dunfell #patch #yocto #raspberrypi #linux
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f4229d05edfdd302"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 16:48:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58606

--000000000000f4229d05edfdd302
Content-Type: text/plain; charset="UTF-8"

In this case I have no idea unfortunately. Does a regular kernel work?

Alex

On Mon 21. Nov 2022 at 16.38, Nikita Gupta <nikitagupta2509@gmail.com>
wrote:

> Hello Alex,
> Sorry for late reply. Actually i madert- image by setting the preferred
> virtual/kernel type.
> PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi-rt"
>
> and bake the recipe for following target.
> bitbake core-image-base
>
> I got my image successfully and it is booting up, but it is not taking
> user input from my keyboard. Why is it happening?
>
> Thanks in Advance
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58603):
> https://lists.yoctoproject.org/g/yocto/message/58603
> Mute This Topic: https://lists.yoctoproject.org/mt/94645313/1686489
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #raspberrypi:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f4229d05edfdd302
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">In this case I have no idea unfortunately. Does a regular=
 kernel work?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div>=
<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon 21. Nov 2022 at 16.38, Nikita Gupta &lt;<a href=3D"mailto:nikitagupta=
2509@gmail.com">nikitagupta2509@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,20=
4,204)">Hello Alex,=C2=A0<br>Sorry for late reply. Actually i madert- image=
 by setting the preferred virtual/kernel type.=C2=A0<br>PREFERRED_PROVIDER_=
virtual/kernel =3D &quot;linux-raspberrypi-rt&quot;<br>=C2=A0<br>and bake t=
he recipe for following target.<br>bitbake core-image-base=C2=A0<br><br>I g=
ot my image successfully and it is booting up, but it is not taking user in=
put from my keyboard. Why is it happening?<br><br>Thanks in Advance
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58603): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58603" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58603</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94645313/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94645313/1686489</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Mute #patch:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/p=
atch" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/patch</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Mute #raspberrypi:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehas=
htag/raspberrypi" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/mutehashtag/raspberrypi</a><br>
Mute #linux:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/l=
inux" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/linux</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f4229d05edfdd302--

