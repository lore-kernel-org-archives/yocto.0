Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F1A8EB64D7
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 09:39:03 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.3953.1687772333200180281
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 02:38:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=jIZv/MWJ;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: quaresma.jose@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-76547539775so261971585a.3
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 02:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687772332; x=1690364332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RyGHU/D41Tv+BsBdbQAG5ylvrHzccttMTUrxfOUmgd8=;
        b=jIZv/MWJMXTJ84wOws2Z0ca8m3wjGaY0mpWX0E0rs5P28JkOqwKJaGtxpO3tA6+IAt
         6LeRyYXLtHSA1bDtjocqPBRXT06RrjnT45c5e0LWJurIbUdC/R1lu/C/xj8dVTcPtqIr
         Ifhvsdirsy3uLeDGPjE3hNhXLbmXvYzWhwU18I+0xMFaLYJP69gzqekokAD8g10rOD47
         iJd5OQrhMAl3bjPHlq+ZPr5YoUFZyXhSQauwsNnSUHqWEcb8HZ3Uoa4aZoArxskKfhPz
         6NzxVwrEYzf0bPvPM2T2Ej5AFzO9cHosPJ5jiqgYIWCxEVquGnr0+AiGfQiFVrN+OStA
         hUAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687772332; x=1690364332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RyGHU/D41Tv+BsBdbQAG5ylvrHzccttMTUrxfOUmgd8=;
        b=YZptxId1p0yjrMkwJxFcz/vgcmZGAUskxX8vweAO6u9Yw1jvQ11+o4Xn6Myy3m0Ehj
         2vJO3ZYprerBNYzyRCHkInhTyQJpiY1mcPkirJZQwK/wz/i3q6JjIhjhUh57lQvd9enb
         PRdKplx8MgVvYXf+PGoDd1t+sARn/lqOu7squm+28S0bKXISmTpt6LSRjfeXqPqbx5y7
         RzifTCqKA3DJx8FArHSfDBwTZDbHMkmRuAw7ele2qSj4YFv+FZHlWAssIGFOMy0ycb1Q
         VD4Ownd3jLlFcIFAzKV5U0Mi8GWzk/+jUYCnnjUTXDh9qzkxufL6cK7XiQ7wGpZ/vtgF
         mM/g==
X-Gm-Message-State: AC+VfDwMW9IDYRv0R8o9zsedHzOAtVdAKC1i+mZilex85hInISgHat6A
	WlQIEjF5TeOdMAFvbIZMOT9jGfqMwhdQnpeE9dE=
X-Google-Smtp-Source: ACHHUZ7CbHUfou5q3xlBXrlSApIJCeSrKpJIrxymOd1l+SGD44Ru1Pb/k2i/LOANZ6Wz1inGk8MMMRwbfopZIb9BnZI=
X-Received: by 2002:a05:620a:2445:b0:765:446a:3bff with SMTP id
 h5-20020a05620a244500b00765446a3bffmr13862593qkn.6.1687772332070; Mon, 26 Jun
 2023 02:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <295f.1687705561082738712.NH3Z@lists.yoctoproject.org>
In-Reply-To: <295f.1687705561082738712.NH3Z@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 26 Jun 2023 10:38:41 +0100
Message-ID: <CANPvuR=1tsaEm7U5O87HtyuEMi4RBYj9b49uQWbec+-7w+C5pQ@mail.gmail.com>
Subject: Re: [yocto] #gcc Is it possible to have Yocto Build go with distcc?
To: mwen@ambarella.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000050991c05ff051ecd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 09:39:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60444

--00000000000050991c05ff051ecd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can use the icecc which is very similar to distcc.

https://www.openembedded.org/wiki/Using_IceCC

Jose

<mwen@ambarella.com> escreveu no dia domingo, 25/06/2023 =C3=A0(s) 16:06:

> Hi
>
> As you know Yocto Build is time consuming, we'd like to check with you to
> see if there is any way to have Yocto Build go with distcc as we have
> multiple build servers shared by the office members. If going with distcc=
,
> they can be effectively leveraged.
> We did some try, but hit below error immediately. :(
>
>    ljiang@shbuild10 13:25:50
> :/daily_build/yocto/yocto_daily/ambarella/out/yocto_out/cv72_gage$ make
> ipcam_config
>
> /usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3:
> DeprecationWarning: Using or importing the ABCs from 'collections' instea=
d
> of from 'collections.abc' is deprecated since Python 3.3, and in 3.10 it
> will stop working
>
>   from collections import Mapping
>
> ERROR: Error running gcc  --version: distcc[3226461] (main) CRITICAL!
> distcc seems to have invoked itself recursively!
>
> distcc[3226460] ERROR: compile (null) on localhost failed with exit code
> 111
>
>
>
> make: *** [/daily_build/yocto/yocto_daily/ambarella/build/bin/yocto/
> inc-yocto-build.mk:96: kconfig-native] Error 1
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60435):
> https://lists.yoctoproject.org/g/yocto/message/60435
> Mute This Topic: https://lists.yoctoproject.org/mt/99770227/5052612
> Mute #gcc:https://lists.yoctoproject.org/g/yocto/mutehashtag/gcc
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000050991c05ff051ecd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can use the icecc=C2=A0which is very similar to distcc=
.<br><br><a href=3D"https://www.openembedded.org/wiki/Using_IceCC">https://=
www.openembedded.org/wiki/Using_IceCC</a><br><br>Jose</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">&lt;<a href=3D"mailt=
o:mwen@ambarella.com">mwen@ambarella.com</a>&gt; escreveu no dia domingo, 2=
5/06/2023 =C3=A0(s) 16:06:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi=C2=A0<br><br>As you know Yocto Build is time consuming, we&#3=
9;d like to check with you to see if there is any way to have Yocto Build g=
o with distcc as we have multiple build servers shared by the office member=
s. If going with distcc, they can be effectively leveraged.<br>We did some =
try, but hit below error immediately. :(<br><br>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100)">=C2=A0 =C2=A0ljiang@shbuild10 13:25:50 :/da=
ily_build/yocto/yocto_daily/ambarella/out/yocto_out/cv72_gage$ make ipcam_c=
onfig</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100)">/usr/lib/python3/dist-packages/html5lib/_tr=
ie/_base.py:3: DeprecationWarning: Using or importing the ABCs from &#39;co=
llections&#39; instead of from &#39;collections.abc&#39; is deprecated sinc=
e Python 3.3, and in 3.10 it will stop working</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100)">=C2=A0 from collections import Mapping</spa=
n></p>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100);background:yellow">ERROR: Error running gcc=
=C2=A0 --version: distcc[3226461] (main) CRITICAL! distcc seems to have inv=
oked itself recursively!</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100);background:yellow">distcc[3226460] ERROR: co=
mpile (null) on localhost failed with exit code 111</span><span style=3D"fo=
nt-size:14pt;font-family:MingLiU-ExtB,serif;color:rgb(31,56,100)"></span></=
p>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100)">=C2=A0</span></p>
<p style=3D"margin:0px"><span style=3D"font-size:14pt;font-family:MingLiU-E=
xtB,serif;color:rgb(31,56,100)">make: *** [/daily_build/yocto/yocto_daily/a=
mbarella/build/bin/yocto/<a href=3D"http://inc-yocto-build.mk:96" target=3D=
"_blank">inc-yocto-build.mk:96</a>: kconfig-native] Error 1</span></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60435): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60435" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60435</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99770227/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99770227/5052612</a><br>
Mute #gcc:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/gcc=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yoc=
to/mutehashtag/gcc</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--00000000000050991c05ff051ecd--

