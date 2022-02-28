Return-Path: <michael.ho@ieee.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 353FDC433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 11:35:45 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web10.18651.1646048143690691314
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 03:35:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ieee.org header.s=google header.b=YCQa8Hb5;
 spf=pass (domain: ieee.org, ip: 209.85.222.49, mailfrom: michael.ho@ieee.org)
Received: by mail-ua1-f49.google.com with SMTP id t25so5861928uaa.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 03:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rYFlb8QL3Equ79dDf81MA46O6SlApwmtEZOY2/4RXWQ=;
        b=YCQa8Hb5Y0ESei7c1YzzE9+beF9hWV1okALJZtYweZkn2Qioxq5atxdPKVgRmik/ij
         bQ5M/FlCe+rc4cuhC7poXnXVesrBAy7f6Gj3cvRQiN45mWXMklmw+O/9lYSOj7aXGqMk
         iRLAznkz0W4eIwkC5j9+LNrU4T7/K2BFQo3ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rYFlb8QL3Equ79dDf81MA46O6SlApwmtEZOY2/4RXWQ=;
        b=BgeayjMrx9wFYry8of6yBr+57ugxfabBjH+peSSMbwv/FveIgESmnHL0mFHnuNWzFF
         IAYHkRwU5lJHrQMMPKDjDXBpEYQSEEz5PtZUAynSgptC18lQP7HsRH4/Gvzx2ypr99/D
         esyStMpye9bFPYtMgqf2Zyb3HgbDJ8eE1mUBW9ZOFE8jRyxNwUsBmOzNh2rZqWOwFAuY
         3zmtMXNTkSIxDV8GIE9DACXAkxMGjabo1uWqlqk7qRYnTxPzZ7i/jSriDqC920V9P+41
         vIpGdfynapdorUDn1Llgcj/ju0qFID0zycRozfNauevwVY4kxzJMOV8sHiy5jDHYXS3b
         Y/Qg==
X-Gm-Message-State: AOAM5334KDLQoZwvztr3+vsgS49V9CIzSoV7yLYwJv+YI+Mc7zMnSKlN
	JyrWNcVUIBcFKOLUzwyhBDzxBZ5UXKsk8aImIUaQ9g==
X-Google-Smtp-Source: 
 ABdhPJw4eWKJ/cldEUE5B7ZiWm9Ku5rGL7r1gcAG5MxudZMQLK4DvhwIyTa72flWvqIkyj/q9O0y0/QEzX1OjScZ3Io=
X-Received: by 2002:ab0:70c7:0:b0:340:5421:a0c2 with SMTP id
 r7-20020ab070c7000000b003405421a0c2mr7281826ual.40.1646048142775; Mon, 28 Feb
 2022 03:35:42 -0800 (PST)
MIME-Version: 1.0
References: 
 <CANU8g8dNLaDXZ0WRnd-WuSXuL4Q-uL1KpTRW3wcYM5SLEZp++Q@mail.gmail.com>
In-Reply-To: 
 <CANU8g8dNLaDXZ0WRnd-WuSXuL4Q-uL1KpTRW3wcYM5SLEZp++Q@mail.gmail.com>
From: Michael Ho <michael.ho@ieee.org>
Date: Mon, 28 Feb 2022 12:35:32 +0100
Message-ID: 
 <CALpKvHp_vwsB2KqctLYZG40-Gk=6Ew=zs95P_fMMGuAEgqpxVA@mail.gmail.com>
Subject: Re: [yocto] Correspondance between Qt5 components and meta-qt5
 recipes
To: Perceval <perceval.arenou@bilberry.io>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d577f605d9127256"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 11:35:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56309

--000000000000d577f605d9127256
Content-Type: text/plain; charset="UTF-8"

Hi Perceval,

Just a rough guess, I think you want qtsvg in DEPENDS for svg support
and/or
qtbase in DEPENDS for gif support. I don't know of any mapping but the
recipes
seem to align quite clearly with the components. And I think you can ignore
setting
RDEPENDS manually.

Typically the RDEPENDS do not need to be done manually and it is handled
auto-magically [1]. When the packaging is done, the task scans the elf
headers to
find what libraries are depended on. i.e. It'll see if your app depends on
the
qtsvg lib. From there, it determines automatically which package provides
that
lib and adds it to the rdeps of the package data. Adding to RDEPENDS
manually
is normally only needed if you have something the scanner cannot pick up on
automatically. (eg. shell scripts that have dependencies, dynamically
injected
libs, etc).

Been awhile since I did anything with qt5, pretty sure the libs are linked
in a
normal sense that the scanner will detect the rdepends automatically.

[1]
https://www.yoctoproject.org/docs/3.1/overview-manual/overview-manual.html#automatically-added-runtime-dependencies

Kind regards,
Michael

On Sun, Feb 27, 2022 at 3:38 PM Perceval <perceval.arenou@bilberry.io>
wrote:

> Hello everyone,
>
> I don't know if it is the right place or if my question belong more in the
>
>    - openembedded-architecture mailing list.
>
>
>
> I'm trying to build an image with my Qt5 based application. I know which
> Qt5 component I need to build and to run my application but I'm struggeling
> to understand what are the corresponding recipes to put in DEPENDS and
> RDEPENDS according to the components I use.
>
> For example: if I want to build a graphical application with image display
> support I would need (if I understand correctly):
> for svg support: qtsvg in RDEPENDS
> but for gif support: qtbase in DEPENDS with  PACKAGECONFIG_append = "gif"
> in a qtbase_%.bbappend
> It is a little bit confusing for me.
>
> My question is:
> Is there any documentation or table mapping Qt5 components or libraries
> and the corresponding recipe in the meta-Qt5 layer (with the correct
> PACKAGEGROUP to set if needed)?
>
> Thank you very much,
> Have a great day,
>
> --
> *Perceval ARENOU*
> Embedded Software Engineer
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56299):
> https://lists.yoctoproject.org/g/yocto/message/56299
> Mute This Topic: https://lists.yoctoproject.org/mt/89429215/3618434
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> michael.ho@ieee.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d577f605d9127256
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Perceval,</div><div><br></div>Just a rough gu=
ess, I think you want qtsvg in DEPENDS for svg support and/or <br>qtbase in=
 DEPENDS for gif support. I don&#39;t know of any mapping but the recipes<b=
r>seem to align quite clearly with the components. And I think you can igno=
re setting<br>RDEPENDS manually.<br></div><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr">Typically the RDEPENDS do not need to be done manually and it is=
 handled <br>auto-magically [1]. When the packaging is done, the task scans=
 the elf headers to <br>find what libraries are depended on. i.e. It&#39;ll=
 see if your app depends on the <br>qtsvg lib. From there, it determines au=
tomatically which package provides that <br>lib and adds it to the rdeps of=
 the package data. Adding to RDEPENDS manually <br>is normally only needed =
if you have something the scanner cannot pick up on <br>automatically. (eg.=
 shell scripts that have dependencies, dynamically injected <br>libs, etc).=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Been awhile since I did a=
nything with qt5, pretty sure the libs are linked in a <br>normal sense tha=
t the scanner will detect the rdepends automatically.</div><div dir=3D"ltr"=
><br></div><div dir=3D"ltr">[1] <a href=3D"https://www.yoctoproject.org/doc=
s/3.1/overview-manual/overview-manual.html#automatically-added-runtime-depe=
ndencies">https://www.yoctoproject.org/docs/3.1/overview-manual/overview-ma=
nual.html#automatically-added-runtime-dependencies</a> <br></div><div dir=
=3D"ltr"><br><div>Kind regards,</div><div>Michael<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 27, =
2022 at 3:38 PM Perceval &lt;<a href=3D"mailto:perceval.arenou@bilberry.io"=
>perceval.arenou@bilberry.io</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Hello everyone,<div><br></div>=
<div>I don&#39;t know if it is the right place or if my question belong mor=
e in the=C2=A0<ul><li style=3D"color:rgb(51,51,51);font-family:&quot;Helvet=
ica Neue&quot;,Helvetica,Arial,sans-serif;box-sizing:border-box;display:inl=
ine-block">openembedded-architecture mailing list.</li></ul><span style=3D"=
background-color:rgb(245,245,245);color:rgb(51,51,51);font-family:&quot;Hel=
vetica Neue&quot;,Helvetica,Arial,sans-serif">=C2=A0</span></div><div><font=
 face=3D"Helvetica Neue, Helvetica, Arial, sans-serif" color=3D"#333333"><b=
r></font></div><div><font face=3D"Helvetica Neue, Helvetica, Arial, sans-se=
rif" color=3D"#333333">I&#39;m trying to build an image with my Qt5 based a=
pplication. I know which Qt5 component I need to build and to run my applic=
ation but I&#39;m struggeling to understand what are the corresponding reci=
pes to put in DEPENDS and RDEPENDS according to the components I use.</font=
></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif"><br></span></div><div><span style=3D=
"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif">For example: if I want to build a graphical application with i=
mage display support I would need (if I understand correctly):</span><br></=
div><div><font face=3D"Helvetica Neue, Helvetica, Arial, sans-serif" color=
=3D"#333333">for svg support: qtsvg in RDEPENDS=C2=A0</font></div><div><fon=
t face=3D"Helvetica Neue, Helvetica, Arial, sans-serif" color=3D"#333333">b=
ut for gif support: qtbase in=C2=A0</font><span style=3D"color:rgb(51,51,51=
);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">DEPEND=
S</span><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue=
&quot;,Helvetica,Arial,sans-serif">=C2=A0with=C2=A0 PACKAGECONFIG_append=C2=
=A0</span><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Ne=
ue&quot;,Helvetica,Arial,sans-serif">=3D &quot;gif&quot; in a qtbase_%.bbap=
pend</span></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;=
Helvetica Neue&quot;,Helvetica,Arial,sans-serif">It is a little bit confusi=
ng for me.=C2=A0</span><br style=3D"color:rgb(51,51,51);font-family:&quot;H=
elvetica Neue&quot;,Helvetica,Arial,sans-serif"></div><div><span style=3D"c=
olor:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif"><br></span></div><div><span style=3D"color:rgb(51,51,51);font-fa=
mily:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">My question is:=
</span></div><div><font face=3D"Helvetica Neue, Helvetica, Arial, sans-seri=
f" color=3D"#333333">Is there any documentation or table mapping Qt5 compon=
ents or libraries and the corresponding recipe=C2=A0</font><span style=3D"c=
olor:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif">in the meta-Qt5 layer=C2=A0</span><span style=3D"color:rgb(51,51=
,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">(wi=
th the correct PACKAGEGROUP to set if needed)?</span></div><div><br></div><=
div><font face=3D"Helvetica Neue, Helvetica, Arial, sans-serif" color=3D"#3=
33333">Thank you very much,</font></div><div><font face=3D"Helvetica Neue, =
Helvetica, Arial, sans-serif" color=3D"#333333">Have a great day,</font></d=
iv><div><font face=3D"Helvetica Neue, Helvetica, Arial, sans-serif" color=
=3D"#333333"><br></font>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><span=
 style=3D"background-color:rgb(255,255,255)"><b><font face=3D"arial, sans-s=
erif" color=3D"#741b47">Perceval ARENOU</font></b></span></div><div><span s=
tyle=3D"background-color:rgb(255,255,255)"><font face=3D"arial, sans-serif"=
 color=3D"#666666">Embedded Software Engineer</font></span></div><div style=
=3D"color:rgb(80,0,80)"><br></div></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56299): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56299" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56299</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89429215/3618=
434" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89429215/3618434</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:michael.ho@ieee.org" target=3D"_blank">michael.h=
o@ieee.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000d577f605d9127256--

