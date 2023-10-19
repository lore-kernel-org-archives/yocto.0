Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8065DCDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 15:59:11 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web10.31930.1697731150700134211
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 08:59:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EbL5rUnZ;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6c4a25f6390so5294641a34.2
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 08:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697731150; x=1698335950; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cIQA5VfGDLsNGWkvBbMaOYIFlAB/Jko/YZFz/oGKBtw=;
        b=EbL5rUnZ1+wQx6iK5Bm8uGiivcz1hO5aff5/ZOMHIiOB/NwgbWJk6v6sD3RZuCFbzE
         WvZ4KwMvMjFKuUDJn5ckqu0MXYe4rWgnWInxvpgSrW1G4rzQ8PkSJkBwNB81CA915TkI
         2XHIMR+plSARP7wBQeR/ySbkvl/CsO19FcaWJo1e7XmzqN99nmphlbOl8JQHnRa0G80C
         R6Ea44NJCpFMYF2xosKFV7G4fThEAyXEV6xjjtbOP47zK0M+hQbCSJk2yA1jVIsuBsIc
         lyQuP5Fn0OuFEMKi3kS1umnXoV1iqFpoupHfs3QfaRG90+mu6xoLviaGIP3WfC4i9AKS
         z+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697731150; x=1698335950;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cIQA5VfGDLsNGWkvBbMaOYIFlAB/Jko/YZFz/oGKBtw=;
        b=LIBu88q94kR1h5hjz2YOoSYQAcHG2yCdoZIjuYiRdLF3/Yr+7HxuqYeBVrjFhFDvbW
         1xQnLFpCaUMMxIkQBbGb2Ym+fj4MYyFZA6GHDgE+pwuyTn9D0oxUVA9m5h1Sw2DF9sgX
         JaRp06Zx86H6wi6FL4TUG4sNxz6qVliqDtf931KucsF0y/Agu1J4BOgciQC7PHs0mejF
         0aZfUab/7Alm2WGWi6xUv0DCfe21yk6GqsmT5NHEfnzVwtKXsz5yLt25zkDZu0TsMDO5
         L/LxdwL9g4kpy0sYmDOAtFoLDZRsIKiaQy9kfvVSnepnw1pVojHwpHDckgoTGO+eu1L4
         vkcQ==
X-Gm-Message-State: AOJu0YyMjjXm10raeRrT12kSCfUSjkeLFqwLGanoaaAI92MPWX546DF2
	VVkHAoDif4EIEp6OxP6CZCZuTQ1LaYQP6SAkjyY=
X-Google-Smtp-Source: AGHT+IFgNUmnxcGYA4li+l/UA6W/BuIz5u9nKmL1KjWHELi16NyCcIbbQI/gNhlpQmxKR6UfJN4GT4haY+ZXL/e5lGU=
X-Received: by 2002:aca:2817:0:b0:3b2:f192:5a6b with SMTP id
 23-20020aca2817000000b003b2f1925a6bmr2503803oix.16.1697731149839; Thu, 19 Oct
 2023 08:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <cXNw.1697728876995550500.flRW@lists.yoctoproject.org>
In-Reply-To: <cXNw.1697728876995550500.flRW@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Thu, 19 Oct 2023 17:58:58 +0200
Message-ID: <CAB3asfiCcAnVPjHYCJU5UU1yCdu2nHDwbVhnfn3EnqvZJ+j6Vg@mail.gmail.com>
Subject: Re: [yocto] Run generated executable in cmake recipe #cmake
 #kirkstone #make #native #yocto
To: Darek Konopka <kono6886@kettering.edu>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001c43a4060813d619"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 15:59:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61421

--0000000000001c43a4060813d619
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Darek

Making the recipe compiling for cross and native and adding a DEPENDS from
cross to native seems to be the cleanest and most Yocto-ish way to me.

Alternatively this patch would allow to run cross compiled executables with
Qemu in the cmake project
https://git.yoctoproject.org/poky-contrib/commit/?h=3Dadrianf/devtool-ide&i=
d=3D6c63df973d9530ecabc9480f8ba2aba3ff93952f.
But that's not the most common approach.

It's also possible to hack a cmake script which allows to pass a native
tool-chain file for B. But this approach needs some hacks because cmake is
designed to work with one tool-chain file only. I did that for a special
use case, but I'm not aware of a public example.

Regards,
Adrian



Darek Konopka <kono6886@kettering.edu> schrieb am Do., 19. Okt. 2023, 17:21=
:

> Hello all,
>
> So I have a cmake project that uses an executable generated from a cmake
> subproject.
> My architecture is as such
>     =E2=94=9C=E2=94=80=E2=94=80 ProjectA
>           =E2=94=9C=E2=94=80=E2=94=80 projecta_1.0.bb
>           =E2=94=9C=E2=94=80=E2=94=80 files
>                =E2=94=9C=E2=94=80=E2=94=80 ProjectA
>                      =E2=94=9C=E2=94=80=E2=94=80 CMakeLists.txt
>                      =E2=94=9C=E2=94=80=E2=94=80  ProjectB
>                          =E2=94=9C=E2=94=80=E2=94=80 CMakeLists.txt
> My recipe is a standard recipe that inherits pkgconfig cmake
> The issue that occurs is that when manually building ProjectA natively it
> builds as expected, but when building it with yocto, during the do_compil=
e
> for ProjectA, it says it is missing the executable generated by ProjectB
> located in /usr/bin/ProjBEXE (this executable is needed in order to compi=
le
> ProjectA).
>
> What did work is creating a projectb-native recipe that runs cmake-native=
,
> and then have projecta depend on it, but I was wondering, is there a way =
to
> have projecta_1.0.bb build the executable and use it within its own
> cmake? Perhaps making projectB a package to have projectA use it?
> NOTE: I am using yocto kirkstone
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61419):
> https://lists.yoctoproject.org/g/yocto/message/61419
> Mute This Topic: https://lists.yoctoproject.org/mt/102062177/4454582
> Mute #native:https://lists.yoctoproject.org/g/yocto/mutehashtag/native
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #cmake:https://lists.yoctoproject.org/g/yocto/mutehashtag/cmake
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #make:https://lists.yoctoproject.org/g/yocto/mutehashtag/make
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000001c43a4060813d619
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Darek<div dir=3D"auto"><br></div><div dir=3D"auto">Mak=
ing the recipe compiling for cross and native and adding a DEPENDS from cro=
ss to native seems to be the cleanest and most Yocto-ish way to me.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Alternatively this patch would =
allow to run cross compiled executables with Qemu in the cmake project=C2=
=A0<a href=3D"https://git.yoctoproject.org/poky-contrib/commit/?h=3Dadrianf=
/devtool-ide&amp;id=3D6c63df973d9530ecabc9480f8ba2aba3ff93952f">https://git=
.yoctoproject.org/poky-contrib/commit/?h=3Dadrianf/devtool-ide&amp;id=3D6c6=
3df973d9530ecabc9480f8ba2aba3ff93952f</a>. But that&#39;s not the most comm=
on approach.</div><div dir=3D"auto"><br></div><div dir=3D"auto">It&#39;s al=
so possible to hack a cmake script which allows to pass a native tool-chain=
 file for B. But this approach needs some hacks because cmake is designed t=
o work with one tool-chain file only. I did that for a special use case, bu=
t I&#39;m not aware of a public example.</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Regards,</div><div dir=3D"auto">Adrian</div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">Darek Konopka &lt;<a href=3D"mail=
to:kono6886@kettering.edu" target=3D"_blank" rel=3D"noreferrer">kono6886@ke=
ttering.edu</a>&gt; schrieb am Do., 19. Okt. 2023, 17:21:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span style=3D"font-size:1rem;color:#313131;font-fam=
ily:-apple-system,&#39;Helvetica Neue&#39;;word-spacing:1px">Hello all, <br=
><br>So I have a cmake project that uses an executable generated from a cma=
ke subproject.=C2=A0</span>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">My a=
rchitecture is as such=C2=A0</div>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=
=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 ProjectA</div>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80<span style=3D"b=
order-color:#313131">=C2=A0</span><a style=3D"font-size:1rem;border-color:#=
4285f4;color:#4285f4" href=3D"http://projecta_1.0.bb/" rel=3D"noopener nore=
ferrer noreferrer" target=3D"_blank">projecta_1.0.bb</a><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files</div>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=
=94=80 ProjectA</div>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=E2=94=9C=E2=94=80=E2=94=80 CMakeLists.txt</div>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=E2=94=9C=E2=94=80=E2=94=80=C2=A0 ProjectB</div>
<div dir=3D"auto" style=3D"font-size:1rem;font-family:-apple-system,&#39;He=
lvetica Neue&#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 CMakeLists.txt</div>
<div style=3D"font-size:1rem;font-family:-apple-system,&#39;Helvetica Neue&=
#39;;word-spacing:1px;border-color:#313131;color:#313131">My recipe is a st=
andard recipe that inherits pkgconfig cmake</div>
<div style=3D"font-size:1rem;font-family:-apple-system,&#39;Helvetica Neue&=
#39;;word-spacing:1px;border-color:#313131;color:#313131">The issue that oc=
curs is that when manually building ProjectA natively it builds as expected=
, but when building it with yocto, during the do_compile for ProjectA, it s=
ays it is missing=C2=A0the executable generated by ProjectB located=C2=A0in=
 /usr/bin/ProjBEXE (this executable is needed in order to compile ProjectA)=
.=C2=A0</div>
<div style=3D"font-size:16px;font-family:-apple-system,&#39;Helvetica Neue&=
#39;;word-spacing:1px;border-color:#313131;color:#313131">=C2=A0</div>
<div style=3D"font-size:1rem;font-family:-apple-system,&#39;Helvetica Neue&=
#39;;word-spacing:1px;border-color:#313131;color:#313131">What did work is =
creating a projectb-native recipe that runs cmake-native, and then have pro=
jecta depend on it, but I was wondering, is there a way to have<span style=
=3D"border-color:#313131">=C2=A0</span><a style=3D"font-size:1rem;border-co=
lor:#4285f4;color:#4285f4" href=3D"http://projecta_1.0.bb/" rel=3D"noopener=
 noreferrer noreferrer" target=3D"_blank">projecta_1.0.bb</a><span style=3D=
"border-color:#313131">=C2=A0</span>build the executable and use it within =
its own cmake? Perhaps making projectB a package to have projectA use it?=
=C2=A0</div>
<div style=3D"font-size:1rem;font-family:-apple-system,&#39;Helvetica Neue&=
#39;;word-spacing:1px;border-color:#313131;color:#313131">NOTE: I am using =
yocto kirkstone</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61419): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61419" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank=
">https://lists.yoctoproject.org/g/yocto/message/61419</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102062177/445=
4582" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/mt/102062177/4454582</a><br>
Mute #native:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
native" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/mutehashtag/native</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/mutehashtag/yocto</a><br>
Mute #cmake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/c=
make" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/mutehashtag/cmake</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">ht=
tps://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone</a><br>
Mute #make:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/ma=
ke" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/yocto/mutehashtag/make</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" rel=3D=
"noreferrer noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.or=
g</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yocto=
project.org/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com=
" rel=3D"noreferrer noreferrer" target=3D"_blank">adrian.freihofer@gmail.co=
m</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000001c43a4060813d619--

