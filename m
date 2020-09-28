Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.27660.1601258881783318804
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 19:08:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o2y4dHRo;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: martin.jansa@gmail.com)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B502138C0858
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 19:08:00 -0700 (PDT)
Received: by mail-ej1-f52.google.com with SMTP id q13so6307284ejo.9
        for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 19:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=xNgfuvRRgKlIKYdOtUhbebcNpr5tr6nphufGdMsPTaM=;
        b=o2y4dHRo1QiYYUENTZWTSBPWu0TIE/w+gmDwxT3WEXAz/BF5HvDKVg8RWThpTi17sU
         xpLlavUn+iX9Sx9Ldw+5dgFyHJbKn/oOOR09UtTUdErdk0Hw+yNutB8XJsTESrv2oetD
         YLL2gMUvopuuqRL4c4mP4BI1oEBVGlNUgEn5HGVz/WDcagcx2OP15jaUoCycfT9E1RN/
         rU9TXEiJ3ZWLtFC4KfNR+C++E4W/u06lY/A9B3luGySDwPc5XaNpvv4tlUjiW1AmIqDY
         +/1u6KOYQec7Uzrmy8Tgmlt3sudQjEfYIaYGWfLI5StC4jFuQ39dd5KE05FbwKnjkmRv
         B+kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=xNgfuvRRgKlIKYdOtUhbebcNpr5tr6nphufGdMsPTaM=;
        b=qE/uRCoATfdmxsWEGSxrudGurN47TNCZzVBTIPwzRJAaUEnZn6ZKmpYxF6k7ouv+JP
         pLi2eHSHDzba/OuSGfAHlkyv0GtoKCJT4SQ1m15Pgb/tBdKLWAIUO9gWIIMumfk9zuH7
         7YNcpRMmc3B+gBURqPenr9wPzxdM3mvC0tBkQjDBcl3t7H82w7GawqQzC6ozpSWV53fe
         LZ8jWO1iy9qylNSuhp2VeoDyQKXgUrDCczj8sAC5w9RwWQ4/zcMtzoGBsWkEe9GGbwja
         7eNqVxUI9gJOvrLabE5IwKUviQs1vb43aPp9USePgNmqsIUv25UMO05hlYGDEiRomVcK
         RLSg==
X-Gm-Message-State: AOAM530eMPJ/WCOjn91Di8Zfk5WccN+mWOF+dnZ0ymTtbreVNhsq7MUS
	w+oeLb+Mvm0YsCyvI/vJZgL7mKssih6YWEyVRWNTFrKQ6F0=
X-Google-Smtp-Source: ABdhPJw0lXlVOGTtYJiwobXwByeGD9/zrK+x9rcsWnJu9IFnAKTgEAYnSRYnVddToNG9bIwBU8PUAR7fgpfqnb8qUIM=
X-Received: by 2002:a17:906:4b18:: with SMTP id y24mr13305648eju.471.1601258878912;
 Sun, 27 Sep 2020 19:07:58 -0700 (PDT)
MIME-Version: 1.0
References: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl>
In-Reply-To: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 28 Sep 2020 04:07:47 +0200
Message-ID: <CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail.com>
Subject: Re: [yocto] poky-dunfell-23.0.2: WARNING: Your host glibc verson (2.32) is newer than that in uninative (2.31). Disabling uninative so that sstate is not corrupted.
To: Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000abcac805b05622f1"

--000000000000abcac805b05622f1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For uninative you can just use latest dunfell with
https://git.openembedded.org/openembedded-core/commit/?h=3Ddunfell&id=3D0f=
01fb2286335dd0da0c7be3f56c36a0fced3e42

For dpkg you can just try latest, but I'm not seeing it failing with
glibc-2.32 in ubuntu-20.04, something else might be wrong/different in you=
r
setup.

On Sun, Sep 27, 2020 at 11:02 PM Robert <pwr@iae.nl> wrote:

> Hello list,
>
> The warning in the subject has turned into an error.
>
> I'm building a Yocto project based on poky-dunfell-23.0.2
>
> I get this error:
> ERROR: dpkg-native-1.19.7-r0 do_compile: oe_runmake failed
>
> | ../../../dpkg-1.19.7/lib/compat/strsignal.c: In function
> =E2=80=98test_strsignal=E2=80=99:
> | ../../../dpkg-1.19.7/lib/compat/strsignal.c:71:10: error: =E2=80=98sys=
_siglist=E2=80=99
> undeclared (first use in this function)
> |    71 |   return sys_siglist[s];
>
> I found the reason for this error:
> Release notes of glibc 2.32:
> https://sourceware.org/pipermail/libc-announce/2020/000029.html
>
> * The deprecated arrays *sys_siglist*, _sys_siglist, and sys_sigabbrev
>   are no longer available to newly linked binaries, and their declaratio=
ns
>   have been *removed* from <string.h>.  They are exported solely as
>   compatibility symbols to support old binaries.  All programs should us=
e
>   strsignal instead.
>
>
> To solve it I could downgrade the glibc library version of my system
> (general consensus on forums is that, that is a bad idea).
> Other option:
> In the master branch I find a recipe for dpkg 1.20.5, can I simply upgra=
de
> the dpkg version (1.19.7) in the dunfell release with the master branch
> version (1.20.5)?
> Could it break anything and how do I know it will solve my problem? Othe=
r
> then try it.
> Or is there another solution?
>
> uname -rmo
> Linux 5.4.64-1-MANJARO  x86_64 GNU/Linux
>
> Thanks,
> Robert.
>
>
>=20
>
>

--000000000000abcac805b05622f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For uninative you can just use latest dunfell with<div><a =
href=3D"https://git.openembedded.org/openembedded-core/commit/?h=3Ddunfell&=
amp;id=3D0f01fb2286335dd0da0c7be3f56c36a0fced3e42">https://git.openembedded=
.org/openembedded-core/commit/?h=3Ddunfell&amp;id=3D0f01fb2286335dd0da0c7be=
3f56c36a0fced3e42</a><br></div><div><br></div><div>For dpkg you can just tr=
y latest, but I&#39;m not seeing it failing with glibc-2.32 in ubuntu-20.04=
, something else might be wrong/different in your setup.</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Sep 2=
7, 2020 at 11:02 PM Robert &lt;<a href=3D"mailto:pwr@iae.nl">pwr@iae.nl</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
  

    
  
  <div>
    Hello list,<br>
    <br>
    The warning in the subject has turned into an error.<br>
    <br>
    I&#39;m building a Yocto project based on poky-dunfell-23.0.2<br>
    <br>
    I get this error:<br>
    ERROR: dpkg-native-1.19.7-r0 do_compile: oe_runmake failed<br>
    <br>
    | ../../../dpkg-1.19.7/lib/compat/strsignal.c: In function
    =E2=80=98test_strsignal=E2=80=99:<br>
    | ../../../dpkg-1.19.7/lib/compat/strsignal.c:71:10: error:
    =E2=80=98sys_siglist=E2=80=99 undeclared (first use in this function)<=
br>
    |=C2=A0=C2=A0=C2=A0 71 |=C2=A0=C2=A0 return sys_siglist[s];<br>
    <br>
    I found the reason for this error:<br>
    Release notes of glibc 2.32:<br>
    <a href=3D"https://sourceware.org/pipermail/libc-announce/2020/000029.=
html" target=3D"_blank">https://sourceware.org/pipermail/libc-announce/2020=
/000029.html</a><br>
    <br>
    * The deprecated arrays <b>sys_siglist</b>, _sys_siglist, and
    sys_sigabbrev<br>
    =C2=A0 are no longer available to newly linked binaries, and their
    declarations<br>
    =C2=A0 have been <b>removed</b> from &lt;string.h&gt;.=C2=A0 They are
    exported solely as<br>
    =C2=A0 compatibility symbols to support old binaries.=C2=A0 All progra=
ms
    should use<br>
    =C2=A0 strsignal instead.<br>
    <br>
    <br>
    To solve it I could downgrade the glibc library version of my system
    (general consensus on forums is that, that is a bad idea).<br>
    Other option:<br>
    In the master branch I find a recipe for dpkg 1.20.5, can I simply
    upgrade the dpkg version (1.19.7) in the dunfell release with the
    master branch version (1.20.5)?<br>
    Could it break anything and how do I know it will solve my problem?
    Other then try it.<br>
    Or is there another solution?<br>
    <br>
    uname -rmo<br>
    Linux 5.4.64-1-MANJARO=C2=A0 x86_64 GNU/Linux<br>
    <br>
    Thanks,<br>
    Robert.<br>
    <br>
  </div>

<br>
<br>
<br>
</blockquote></div>

--000000000000abcac805b05622f1--
