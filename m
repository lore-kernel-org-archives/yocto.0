Return-Path: <ashujoshi35@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80E2C54E58
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 06:20:28 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web10.14365.1710483621510013916
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 23:20:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Dy+XeYUn;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: ashujoshi35@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-7db26980225so580107241.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 23:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710483620; x=1711088420; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vWRM2P1omMo2ZIlZhhA8DA2fAUmnb9WC0/F0iXq1wTw=;
        b=Dy+XeYUnk8yn+yVSf1tW4gwyWj7qP6xGITnTRUBqp7ArleR8LVixWi1SkwyBVfBIkY
         IKJkuoCLVqV4W3r6EOvXcf4JHe4mTBYCWfFDSepnauBanCAiTHeXv7YKzOrpiy1/BmeT
         aPPDdvEMFFnYYgahVB3bmx/8+5OPhJALqaCKRvCA9WB38pAVe8J39NtyuLC4wz5H56Js
         Hs8mZwhddBIlitcHGR3Lwhsd4EO8CQZp6PG+W9EQ9Zs5ECYA1Ke4IdL2KipR13OdrDPx
         zOT+8V8kx7Q2nHQBSffZyGDW8mBqep/sdRMZNSNo0B76TyiWhUPezWWQpqV/Trz5qHWD
         +5Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710483620; x=1711088420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWRM2P1omMo2ZIlZhhA8DA2fAUmnb9WC0/F0iXq1wTw=;
        b=SF4xMUmUJ6OjBvkmzNqalRHilR/c0IoXuVZUkxZ3kn5V066OxtOOByBJ31i/vEdwLl
         8l8ZJAa0fXq60D6PX0AI9K0pHxUuv9tO7by+T/DoZafklByvva9wnUt+cZDoX7wUJC8z
         y+Q6s4FPXetsCvPV9yM4s1UoLZnSVoKR7L1eLL/d7TZ0DuF/43tWEEZzf2cq8ghuwPhA
         rQfM5/FaV9hjR8Nh+92Qh9gQYKn55XqYq1zSm4WBj0ClYcwfEpBcV70PUY2E9yHNxfm6
         sba6AnywzTmF8cnfn/K8kX022r9edM0I7nR95hdd2uSbQ2ZsX3EROD3jhlRI79Coqt/m
         6qng==
X-Gm-Message-State: AOJu0YyQCBNkkcwiAr3+Pgd+YXdAJ+peU+8LEissdU8o2dPFXPHvQudh
	U2DvhowNVkZ1nvuwQxts22epBZH/hT/vcw6T0dAl/jJr+M9Vv8rj5Dn3L+J9l1xSepu5m4fgOYZ
	hTLdORF5tKldC9Zrgi3cxQGeAg7M=
X-Google-Smtp-Source: AGHT+IG/YfxhDxvabOngTmFHFwmpRrGXyVbSz3MvYCe242rGyIuQ8JHkAGiGmyP316BvgpG4pThwmxO1mJzsySX8bkU=
X-Received: by 2002:a05:6102:441c:b0:476:c8:420 with SMTP id
 df28-20020a056102441c00b0047600c80420mr2688597vsb.15.1710483620466; Thu, 14
 Mar 2024 23:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
 <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com> <CANx9H-AQ3i-AHzzyGGOoTqbJPCmRpCSF8a8CzqsT=fti_kpxfw@mail.gmail.com>
In-Reply-To: <CANx9H-AQ3i-AHzzyGGOoTqbJPCmRpCSF8a8CzqsT=fti_kpxfw@mail.gmail.com>
From: Ashu Joshi <ashujoshi35@gmail.com>
Date: Fri, 15 Mar 2024 11:50:09 +0530
Message-ID: <CAKjBKDOAkciZQkVV9eBEOBHSDbzbHzT2Hey_45KSnHknRVVgDw@mail.gmail.com>
Subject: Re: [yocto] No module named pkgconfig
To: Tim Orling <ticotimo@gmail.com>
Cc: yocto@lists.yoctoproject.org, ross.burton@arm.com
Content-Type: multipart/alternative; boundary="00000000000097993c0613ad00ea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 06:20:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62765

--00000000000097993c0613ad00ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Added DEPENDS +=3D "python3-pkgconfig python3 python3-pip"

but still face the same error. I can see its recipe in meta-python. Also,
in the work directory recipe-sysroot/usr/lib pkgconfig directory is there
with multiple .pc files. I can also see pkgconfig in
recipe-syysroot/usr/lib/python3.8/site-packages/pkgconfig. pkgconfig here
has _pycache_  directory, __init__.py and pkgconfig.py
Still setup.py is not able to find pkgconfig

On Thu, Mar 14, 2024 at 11:59=E2=80=AFPM Tim Orling <ticotimo@gmail.com> wr=
ote:

>
>
> On Thu, Mar 14, 2024 at 11:21=E2=80=AFAM Ross Burton <ross.burton@arm.com=
> wrote:
>
>> On 14 Mar 2024, at 14:40, ashujoshi35 via lists.yoctoproject.org
>> <ashujoshi35=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Trying to install wirepas_gateway package from pypi. It fails with
>> error no module named pkgconfig. Below is the error
>> >
>> > File "setup.py", line 17, in <module>
>> > |     import pkgconfig
>> > | ModuleNotFoundError: No module named 'pkgconfig'
>> >
>> > SUMMARY =3D "Recipe to install Python PiP Package wirepas_gateway"
>> > LICENSE =3D "Apache-2.0"
>> > LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e=
9f4d8"
>> >   inherit pypi setuptools3
>> > PYPI_PACKAGE =3D "wirepas_gateway"
>> > SRC_URI[md5sum] =3D "941a4407513445c64f16b57a1474fc43"
>> >
>> > It is not able to locate pkgconfig. tried to export the path as found
>> in one of the link using below, even that didn't worked out:
>> > export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"
>> >
>> > Any idea how to make pkgconfig available to the setup.py file
>> >
>>
>> That=E2=80=99s python code trying to import pkgconfig, so you=E2=80=99ll=
 need to DEPEND
>> on python3-pkgconfig (there=E2=80=99s a recipe for that in meta-python).
>>
>>
> `devtool add <url to the git repository or pypi tarball>`
> should have caught the dependency and mentioned it. It only knows about
> what has already been built, however.
>
>
>> Ross
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#62763):
>> https://lists.yoctoproject.org/g/yocto/message/62763
>> Mute This Topic: https://lists.yoctoproject.org/mt/104927594/924729
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> ticotimo@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--00000000000097993c0613ad00ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Added DEPENDS +=3D &quot;python3-pkgconfig python3 python3=
-pip&quot;<div><br></div><div>but still face the same error. I can see its =
recipe in meta-python. Also, in the work directory recipe-sysroot/usr/lib p=
kgconfig directory is there with multiple .pc files. I can also see pkgconf=
ig in recipe-syysroot/usr/lib/python3.8/site-packages/pkgconfig. pkgconfig =
here has _pycache_=C2=A0 directory, __init__.py and pkgconfig.py</div><div>=
Still setup.py is not able to find pkgconfig</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 14, 2024 at 1=
1:59=E2=80=AFPM Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticoti=
mo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 14, 2024 at 1=
1:21=E2=80=AFAM Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com" targ=
et=3D"_blank">ross.burton@arm.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 14 Mar 2024, at 14:40, ashujoshi35 via =
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;ashujoshi35=3D<a href=3D"mailto:gmail.co=
m@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.or=
g</a>&gt; wrote:<br>
&gt; <br>
&gt; Trying to install wirepas_gateway package from pypi. It fails with err=
or no module named pkgconfig. Below is the error<br>
&gt; <br>
&gt; File &quot;setup.py&quot;, line 17, in &lt;module&gt;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0import pkgconfig<br>
&gt; | ModuleNotFoundError: No module named &#39;pkgconfig&#39;<br>
&gt; <br>
&gt; SUMMARY =3D &quot;Recipe to install Python PiP Package wirepas_gateway=
&quot;<br>
&gt; LICENSE =3D &quot;Apache-2.0&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dcb6bb17b0d0cca18833907=
4207e9f4d8&quot;<br>
&gt;=C2=A0 =C2=A0inherit pypi setuptools3<br>
&gt; PYPI_PACKAGE =3D &quot;wirepas_gateway&quot;<br>
&gt; SRC_URI[md5sum] =3D &quot;941a4407513445c64f16b57a1474fc43&quot;<br>
&gt; <br>
&gt; It is not able to locate pkgconfig. tried to export the path as found =
in one of the link using below, even that didn&#39;t worked out:<br>
&gt; export PKG_CONFIG =3D &quot;${STAGING_BINDIR_NATIVE}/pkg-config&quot;<=
br>
&gt; <br>
&gt; Any idea how to make pkgconfig available to the setup.py file<br>
&gt;=C2=A0 <br>
<br>
That=E2=80=99s python code trying to import pkgconfig, so you=E2=80=99ll ne=
ed to DEPEND on python3-pkgconfig (there=E2=80=99s a recipe for that in met=
a-python).<br>
<br></blockquote><div><br></div><div>`devtool add &lt;url to the git reposi=
tory or pypi tarball&gt;`</div><div>should have caught the dependency and m=
entioned it. It only knows about what has already been built, however.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Ross<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62763): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62763" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62763</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104927594/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/104927594/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--00000000000097993c0613ad00ea--

