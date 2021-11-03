Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B012C433F5
	for <webhook@archiver.kernel.org>; Wed,  3 Nov 2021 18:16:19 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.304.1635963378438497253
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 11:16:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ekELFnQZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id o18so6842818lfu.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 11:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A5nDY+xE6S86LOLMB5LmcBFY4cwGHx1RWac+x+HFLh4=;
        b=ekELFnQZdPFCrMyXLrYyfczorCYNflT3qh4DCzQ+ipYzW8CaWeqkzpismHCAfHRzWO
         6ZHoYrEmyC12yriPbSpJs/YvF+bzvUTZlDh+dshgJ4Xybre7QmUwQtUD2ETKes22OkTw
         UyxnKljq7sPbOCH8BEa4bP3dKH4K+nOMZ3qKaHYBLd9dLBSwUlsg/kQuWEfp2MlK1sew
         HC2mjyGNKlCSNxN5i8F4ABU+vScVrPPC8WyQ4GdEBYKURYmvS6uxB2R1BvLy/dBe+2wV
         lhTlgCn6XjwQ9psvICy9C2PT4QH+fdSO/uMSVM6f0uuJMKVnvpQCYwTNpwJlQ3JY6Kzc
         gvMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A5nDY+xE6S86LOLMB5LmcBFY4cwGHx1RWac+x+HFLh4=;
        b=k5Kvo4AXLpM4cuGPEaIaB/5asPXBwyT5GXv9d/xr87Hrr0V0lihp30zj/jsCa6GB0J
         FMdPARbBinXrV0Fg2ixW6UXWD0pQOSgMvAwLTepTEX2jGyOWj5S8fql22zIuBnW0HpYu
         0stvvc9nD6VQxptocgcjGOPLrNgbVjBe+SGKt7moOzW+iW2fEEk7aFS+TY8CWuRjnzC7
         k3RVYbpphnBTigpTDGx/tCot6WEchk9SvpXGKr/T0hyFP5ZdE1XUac9uEhG+cnRPMqGI
         ywmvNW66sXUgg+ZyobD8Ix0dFmEA3GgqrCLh7G7k02Tea/t4LTa65C84781QS17dglef
         ilQA==
X-Gm-Message-State: AOAM533RFlA7YNHCzQMX/eTXe9e/J8mOocJnk5Fmi4xsQ2ms++zymHhw
	dLS3ckdxFmhKyhsfQYxzbMQ4qD0EiyauJftbh3w=
X-Google-Smtp-Source: 
 ABdhPJyOlF5eRiFH9kh3JzYf76M92JdRnFmU/zupWkzq0g0nFWN61CFz5/5bQS9YRW6Wn7AJFjgOU79rXGG22YqWJdM=
X-Received: by 2002:a19:f703:: with SMTP id z3mr12112614lfe.555.1635963376564;
 Wed, 03 Nov 2021 11:16:16 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B41AFD684614CC.20955@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B41AFD684614CC.20955@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 3 Nov 2021 18:16:05 +0000
Message-ID: 
 <CANPvuRkMPaA-0H+MWndye3MoiVE0nBMJ2KFBOpFm-kfLHfTLFw@mail.gmail.com>
Subject: Re: [yocto] how to handle third party licenses
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ecfb2805cfe667bf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Nov 2021 18:16:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55232

--000000000000ecfb2805cfe667bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steven,

Monsees, Steven C (US) via lists.yoctoproject.org <steven.monsees=3D
baesystems.com@lists.yoctoproject.org> escreveu no dia quarta, 3/11/2021
=C3=A0(s) 17:57:

>
>
> Looking for the proper Yocto way to handle third party software ported to
> Yocto and built into kernel=E2=80=A6
>
>
>
> I=E2=80=99m not having issues when I recognize the license as a generic l=
icense.
> But the license provided to us by the vendor is not part of the generic
> licenses list that you (Yocto) recognize.
>
>
>
> I was wondering if you could explain how to add a custom license to a
> recipe in yocto.
>
>
>
> The vendor has provided us with a generic license.txt file and I was able
> to add that to the our recipe. I do get a warning though which says:
>
>
>
> *WARNING: aiox-defaultfs-1.0-r0 do_rootfs: The license listed
> DataDeviceCorporation was not in the licenses collected for recipe acexpc=
i*
>
>
>
> Though the warning occurs, I can see the license.txt being saved inside
> the rootfs on our board and is saved under tmp/deploy/licenses/acexpci.
> I=E2=80=99ve been trying to get rid of this warning when the image builds=
, but I
> can=E2=80=99t seem to find anything in the manual or online. One solution=
 says :
> Add *LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"* under
> conf/layer.conf, which does not resolve this warning.
>

You can add the generic *license.txt* provided by the vendor to
*${LAYERDIR}/custom-licenses/**vendor-lic-ID*

In conf/layer.conf add:
*LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"*

And in the recipe:

*SRC_URI +=3D "file://license.txt"*
*LICENSE =3D "**vendor-lic-ID**"*
*LIC_FILES_CHKSUM =3D "file://license.txt;md5=3Dxxxxxxxxxxxxxxxxxx"*


>
> I am currently building with Yocto zeus=E2=80=A6
>
>
>
> Thanks,
>
> Steve
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55231):
> https://lists.yoctoproject.org/g/yocto/message/55231
> Mute This Topic: https://lists.yoctoproject.org/mt/86797500/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000ecfb2805cfe667bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Steven,</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Monsees, Steven C (US) via <a href=3D"http:=
//lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;steven.monsees=3D<=
a href=3D"mailto:baesystems.com@lists.yoctoproject.org">baesystems.com@list=
s.yoctoproject.org</a>&gt; escreveu no dia quarta, 3/11/2021 =C3=A0(s) 17:5=
7:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-3642796200406300514WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Looking for the proper Yocto way to handle third par=
ty software ported to Yocto and built into kernel=E2=80=A6<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I=E2=80=99m not=
 having issues when I recognize the license as a generic license. But the l=
icense provided to us by the vendor is not part of the generic licenses lis=
t that you (Yocto) recognize.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I was wondering=
 if you could explain how to add a custom license to a recipe in yocto.<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal">The vendor has provided us with a generic license.tx=
t file and I was able to add that to the our recipe. I do get a warning tho=
ugh which says:
<u></u><u></u></p>
<p class=3D"MsoNormal"><i><u></u>=C2=A0<u></u></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:red">WARNING: aiox-defaultfs=
-1.0-r0 do_rootfs: The license listed DataDeviceCorporation was not in the =
licenses collected for recipe acexpci<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Though the warning occurs, I can see the license.txt=
 being saved inside the rootfs on our board and is saved under tmp/deploy/l=
icenses/acexpci. I=E2=80=99ve been trying to get rid of this warning when t=
he image builds, but I can=E2=80=99t seem to find
 anything in the manual or online. One solution says : Add <b>LICENSE_PATH =
+=3D &quot;${LAYERDIR}/custom-licenses&quot;</b> under conf/layer.conf, whi=
ch does not resolve this warning.</p></div></div></blockquote><div><br></di=
v><div><span style=3D"color:rgb(0,0,0)">You can add the=C2=A0</span>generic=
 <b>license.txt</b>=C2=A0provided by the vendor to=C2=A0<b style=3D"color:r=
gb(0,0,0)">${LAYERDIR}/custom-licenses/</b><b>vendor-lic-ID</b></div><div><=
b><br></b></div><div>In=C2=A0conf/layer.conf add:</div><div><b style=3D"col=
or:rgb(0,0,0)">LICENSE_PATH +=3D &quot;${LAYERDIR}/custom-licenses&quot;</b=
></div><div><b style=3D"color:rgb(0,0,0)"><br></b></div><div><span style=3D=
"color:rgb(0,0,0)">And in the recipe:</span></div><div><b>SRC_URI +=3D &quo=
t;file://license.txt&quot;<span style=3D"color:rgb(0,0,0)"><br></span></b><=
/div><div><b style=3D"color:rgb(0,0,0)">LICENSE =3D &quot;</b><b>vendor-lic=
-ID</b><b>&quot;</b></div><div><b>LIC_FILES_CHKSUM =3D &quot;file://license=
.txt;md5=3Dxxxxxxxxxxxxxxxxxx&quot;</b><br></div><div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gm=
ail-m_-3642796200406300514WordSection1"><p class=3D"MsoNormal">
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am currently building with Yocto zeus=E2=80=A6<u><=
/u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55231): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55231" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55231</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86797500/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86797500/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--000000000000ecfb2805cfe667bf--

