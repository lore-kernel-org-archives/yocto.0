Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FFDBC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 01:21:58 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web08.3083.1632878517245746313
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 18:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E/9dBTc6;
 spf=pass (domain: gmail.com, ip: 209.85.166.179,
 mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id i13so1056867ilm.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 18:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EYlzof8iyCNdtoQt1AkJCWFUEfJcv6I2qEVglGhlTHc=;
        b=E/9dBTc6odH7CYIZe01lljS9M4YtSvA+Ir5BnKY07VH+f8UQ4/LKBubCdDJDDgNlYI
         a5daSbEfU/9qhi9odGT+cB6zwb8nfSE2i2jcOlRyDbNdkBQSlXOCm3tkG9tNgp5PrGF9
         zmNTY5gOmMMBa1RAbFlUYKvQymzAqqofdfmzCz4y7gAreJmBssU97GYqBL9f6fgRqTf7
         N/iAo5udGANGPRl+WAknZCmnWM6bydiNno1qrQGHoBkT46FcUgcvqjzTktM2SCqTa2EN
         CWDRA+PWbOjEyMi+urkAC+RXNY/XEZ/P7JtWz1YzGnewSHrwB+ANZKaYyPXZt6x+pbc6
         oa4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EYlzof8iyCNdtoQt1AkJCWFUEfJcv6I2qEVglGhlTHc=;
        b=KJ3JY/yDuxT9DjGScKWURTrrc5dIzy7p1lpONyIA9Yf+fMqoKMFF99+A/Lu6C+k4Nd
         uS1kArXU5txx1gORfQ/jstjqP0YcDzO1kRpP9fviHwXTrwwXGwL37Yrb2XvlIKZ7CCQ7
         HS8Mwo5qh/8rW2YA+ORzLszz55gIASlhv+k5FgjCQZhRppqUnJxLLFpTcEpqVrhihKNr
         pqzz0Dn3VZzNkA6BvEG1KHJ/fY26PTTAcw+KCDSYju/3TMlWYoTbEAYEUuvWCestgN/O
         ykcr2ff4BJ6PHbAeC7C9QClvZw9d5A7NmLpUBkkFz9SnvbCCz/Ox4F9NrMY+Lfr+y3j4
         ETqA==
X-Gm-Message-State: AOAM532eYuIPPOGbKgPTp2jBUcF7DIepOXJvmcfk617NyaKgLvEdS0ML
	Eyfej35e/Sbmu6PKuVzsSRNm5RJnTvKI5MKUcp39456tz1w=
X-Google-Smtp-Source: 
 ABdhPJy89dvvn3Mor3i+q70kllcHHs08LNk9i0tp3u4MMMwHyq/gmxKoUQmJSr/XIjJIzYzeCKkd7GOmDe87kdPYJ04=
X-Received: by 2002:a05:6e02:20c7:: with SMTP id
 7mr6700879ilq.118.1632878516405;
 Tue, 28 Sep 2021 18:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <D8593103-F731-447D-96B1-40DA4BD326AE@keylevel.com>
In-Reply-To: <D8593103-F731-447D-96B1-40DA4BD326AE@keylevel.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 28 Sep 2021 18:21:45 -0700
Message-ID: 
 <CANx9H-D7kB8HHWQOsECKGVUCsC-wpK_OfhOAhPaB5_NCntgrfw@mail.gmail.com>
Subject: Re: [yocto] Enabling tk for Python tkinter module
To: Chris Tapp <opensource@keylevel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ee8db705cd182778"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 01:21:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54900

--000000000000ee8db705cd182778
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 28, 2021 at 2:58 PM Chris Tapp <opensource@keylevel.com> wrote:

> I am trying to get PySimpleGUI running on an RPi4 using meta-raspberrypi
> with hardknott.
>
> I have created a recipe for PySimpleGUI and added the following to my
> local.conf:
>
> PACKAGECONFIG_pn-python3 =3D =E2=80=9Ctk=E2=80=9D
> IMAGE_INSTALL_append =3D " python3 python3-modules python3-pysimplegui tk=
"
>
> However, the tkinter module fails to load, reporting =E2=80=9CNo module n=
amed
> _tkinter=E2=80=9D, with a note above saying that Python may not be config=
ured for
> Tk.
>
> Looking on the target, /usr/lib/libtk.8.so is present.
>
> It looks as if there is something else I need to do to get Python to buil=
d
> correctly, but I=E2=80=99m out of ideas ;-)
>

You need to add =E2=80=9Ctk=E2=80=9D to the package config for python3
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/p=
ython/python3_3.9.6.bb#n110

Add the following to your distro|site|local.conf (or a python3_%.bbappend)

PACKAGECONFIG:append:pn-python3 =3D =E2=80=9C tk=E2=80=9D

( replace : with _ if you are on old release that doesn=E2=80=99t support t=
he new
override syntax)

(This assumes you have meta-oe in your bblayers.conf so you can build tk,
which it sounds like you do)

This is because the _tkinter .so built by python3 is dynamically loaded
only if present
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/p=
ython/python3/python3-manifest.json#n1161

=E2=80=94Tim =E2=80=9Cmoto-timo=E2=80=9D Orling


> I=E2=80=99ve found a few bits on the internet that seem related, but they=
 haven=E2=80=99t
> helped me get things going:
>  https://www.mail-archive.com/yocto@yoctoproject.org/msg18232.html
>  https://www.yoctoproject.org/pipermail/yocto/2014-July/020547.html
>
> Any pointers on where to look would be appreciated.
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54893):
> https://lists.yoctoproject.org/g/yocto/message/54893
> Mute This Topic: https://lists.yoctoproject.org/mt/85935979/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ee8db705cd182778
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Sep 28, 2021 at 2:58 PM Chris Tapp &lt;<a href=3D"m=
ailto:opensource@keylevel.com">opensource@keylevel.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-col=
or:rgb(204,204,204)">I am trying to get PySimpleGUI running on an RPi4 usin=
g meta-raspberrypi with hardknott.<br>
<br>
I have created a recipe for PySimpleGUI and added the following to my local=
.conf:<br>
<br>
PACKAGECONFIG_pn-python3 =3D =E2=80=9Ctk=E2=80=9D<br>
IMAGE_INSTALL_append =3D &quot; python3 python3-modules python3-pysimplegui=
 tk&quot;<br>
<br>
However, the tkinter module fails to load, reporting =E2=80=9CNo module nam=
ed _tkinter=E2=80=9D, with a note above saying that Python may not be confi=
gured for Tk.<br>
<br>
Looking on the target, /usr/lib/<a href=3D"http://libtk.8.so" rel=3D"norefe=
rrer" target=3D"_blank">libtk.8.so</a> is present.<br>
<br>
It looks as if there is something else I need to do to get Python to build =
correctly, but I=E2=80=99m out of ideas ;-)<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You need to add =
=E2=80=9Ctk=E2=80=9D to the package config for python3</div><div dir=3D"aut=
o"><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta=
/recipes-devtools/python/python3_3.9.6.bb#n110">http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/python/python3_3.9.6.bb#n110=
</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">Add the following t=
o your distro|site|local.conf (or a python3_%.bbappend)</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">PACKAGECONFIG:append:pn-python3 =3D =E2=80=
=9C tk=E2=80=9D</div><div dir=3D"auto"><br></div><div dir=3D"auto">( replac=
e : with _ if you are on old release that doesn=E2=80=99t support the new o=
verride syntax)</div><br></div><div dir=3D"auto">(This assumes you have met=
a-oe in your bblayers.conf so you can build tk, which it sounds like you do=
)</div><div dir=3D"auto"><br></div><div dir=3D"auto">This is because the _t=
kinter .so built by python3 is dynamically loaded only if present=C2=A0</di=
v><div dir=3D"auto"><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.c=
gi/poky/tree/meta/recipes-devtools/python/python3/python3-manifest.json#n11=
61">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtoo=
ls/python/python3/python3-manifest.json#n1161</a></div><br></div><div dir=
=3D"auto">=E2=80=94Tim =E2=80=9Cmoto-timo=E2=80=9D Orling</div><div dir=3D"=
auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bor=
der-left-color:rgb(204,204,204)"><br>
I=E2=80=99ve found a few bits on the internet that seem related, but they h=
aven=E2=80=99t helped me get things going:<br>
=C2=A0<a href=3D"https://www.mail-archive.com/yocto@yoctoproject.org/msg182=
32.html" rel=3D"noreferrer" target=3D"_blank">https://www.mail-archive.com/=
yocto@yoctoproject.org/msg18232.html</a><br>
=C2=A0<a href=3D"https://www.yoctoproject.org/pipermail/yocto/2014-July/020=
547.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org=
/pipermail/yocto/2014-July/020547.html</a><br>
<br>
Any pointers on where to look would be appreciated.<br>
<br>
--<br>
<br>
Chris Tapp<br>
<a href=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensource@key=
level.com</a><br>
<a href=3D"http://www.keylevel.com" rel=3D"noreferrer" target=3D"_blank">ww=
w.keylevel.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54893): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54893" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54893</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/85935979/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
85935979/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000ee8db705cd182778--

