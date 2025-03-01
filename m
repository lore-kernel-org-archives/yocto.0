Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 764F5C021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 14:14:11 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.9318.1740838444858931813
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Mar 2025 06:14:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V0Ze9Laj;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6fd5f8f3e8eso4686147b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 06:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740838444; x=1741443244; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6XqobMMGsaas0VOD8hNgXSgtQEAeUZ/IvzDe4vyW6YY=;
        b=V0Ze9Laj8d/iXjXJNve1F/OS3wlB0zfmVuNK8OJRNYRACxNWmq/pE8DsvIg0ZJXKRP
         wBY9m4Eu5nY1B6jM2rcqUP7LE48K7VEpCsUAYCCxLXhL5googaLIYE0Bv3fNndP7Cx5n
         /YwgN1zURr7Ngt4OfYIfPntSfxFK0XtTl8UjByLvw4C4clIRZagl7sKcT4dsPH/2pvum
         O12rSHhyQ/dB2pj0tP8jy8c5ruGGaWPsX9+oTKCagy5g7/J5t2w6OxgU8Logsno5M0O+
         Ssa/xce5h/2k8QEzRqEvO3LgxvK2Zsr8u3SMZIOqd1CYP3Bq+zphjN87xWkMAvIwFTBG
         GFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740838444; x=1741443244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6XqobMMGsaas0VOD8hNgXSgtQEAeUZ/IvzDe4vyW6YY=;
        b=O/F0LSvm0C/BiFmmlev4qMjpWIDjGyfA7S0Ybkcfc+2GIweb54ZpacWLvhxS55ETPf
         mh658kOMsKU4YX5BLicZprPyXjodDecrzdeCbjAh+l1DBbN9g6ji/JvJgLAacOj5wq95
         7dEIx07C9EUus394kP8VIVVF+d07Ab6nTRm5URNt8dUybWlbWxf8BJ9J1gbexVODblEn
         bBsXd9ngweJ7jzqDMMcf2odXzZXfZeFUC7gW9ijvISOzADj6tV7vH/C1XlC1RRoncmYE
         GlfspMUkSQx+AFjDW07mbzRrfSPUXG7rwvLhafU/GzwBSsIGD1jCEiouswaP/1f5/EDf
         qhlA==
X-Gm-Message-State: AOJu0Yzoe9xbe5WpvaWTP3zhzMMPycr3qKo2wREwhHqn99Xz9yWKBjlb
	G9sYL9Wd73txReLU2SBJsRDDLYvp5RJho4b5vxm1feQqOYxKjVrhLUG/oL3SR3tcv4pRMMNGCsq
	aJZYTuG6nY+foYyoF/8AcW9cernCi7E/h
X-Gm-Gg: ASbGncva5Ddw9f1rE1IsLPn+cT2I7duzuTfYWmeov0v8sfisO22TwzdfXJq/IqEHKWg
	AdjOy3jOPx1M2Iw5FlTKktpylTpVF3juF4lDeY52TzTFHxR4BgxHa4DTWCdrtjHzrxn9dewHyIe
	5n6FI3FkGEyMC7YPhPz7y2Y7N6czYe
X-Google-Smtp-Source: AGHT+IE+b99TxNOQ1ro33VxC6wqRNltDThYnl0jPC9I8WUHQZYl8MoEpuN1R/9aKYCXb99lUqqnFmF8AURglRMSNOb8=
X-Received: by 2002:a05:690c:4b12:b0:6fb:9450:b0c3 with SMTP id
 00721157ae682-6fd4a02b0d8mr99434007b3.19.1740838443692; Sat, 01 Mar 2025
 06:14:03 -0800 (PST)
MIME-Version: 1.0
References: <PAYP264MB4108A21C7E8A696BEE78F47EE9C52@PAYP264MB4108.FRAP264.PROD.OUTLOOK.COM>
 <CANNYZj-J5=GDSG+V7Ae0n38eG3vmd0=kN4zBwoUeZiw4UFYPGg@mail.gmail.com>
In-Reply-To: <CANNYZj-J5=GDSG+V7Ae0n38eG3vmd0=kN4zBwoUeZiw4UFYPGg@mail.gmail.com>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Sat, 1 Mar 2025 15:13:50 +0100
X-Gm-Features: AQ5f1Jp_bebBoAtRvTdhdDNX6OoVUeUjsh8H9YfAcaaSLo4-HKQNII6iViEb8ls
Message-ID: <CAB3asfhKbAcTnc2ibCj49Ssvfm+btZwYvnV7cehbBsaBNRqHcw@mail.gmail.com>
Subject: Re: [yocto] SDK and what goes into it
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: thilo.cestonaro@thalesgroup.com
Content-Type: multipart/related; boundary="0000000000000cd41f062f4889e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 14:14:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64901

--0000000000000cd41f062f4889e3
Content-Type: multipart/alternative; boundary="0000000000000cd41e062f4889e2"

--0000000000000cd41e062f4889e2
Content-Type: text/plain; charset="UTF-8"

Hi Thilo

If you like to get one more layer of abstraction to what Alex already
suggested, there is also the devtool ide-sdk tool which can bootstrap the
SDK for you. If it gets called with --mode=shared it does exactly what Alex
suggests. If it gets called without this option it defaults to "modified
mode" which goes beyond what the shared mode does. The basic idea is to
offer all the advantages you can get with devtool modify, devtool build but
with the speed, convenience and IDE integration which you can get when
sourcing the tool-chain environment file from an eSDK. It also allows
developing your code completely independently from devtool and bitbake. The
related documentation is here:
https://docs.yoctoproject.org/dev/dev-manual/devtool.html#devtool-ide-sdk-configures-ides-and-bootstraps-sdks
.

So in general I think, a static SDK installer does not scale in many ways.
The issue with missing bits which you are describing here is just one such
example. Solving this at the root probably means sticking to the bitbake
environment which does not have such kinds of issues and limitations by
design. We are already at the point where the approach shared by Alex or
using devtool ide-sdk is on parity with using the environment created by
the eSDK installer.

Replicating a bitbake environment with access to a shared sstate cache is
still a bit harder than just installing an executable installer. But it's
covered by the documentation as well and this is getting simpler with each
release. One of the challenges is that there are many different ways a
bitbake environment can be set up.

Regards,
Adrian

Am Mi., 19. Feb. 2025 um 11:08 Uhr schrieb Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>:

> If I remember right, SDK construction doesn't use DEPENDS or RDEPENDS at
> all. Rather it takes the list of packages installed into an image,
> constructs a tree of their dependencies (which is not the same as
> RDEPENDS), adds -dev to everything in that list, and then that is what gets
> installed into the SDK.
>
> I generally recommend to not bother with standalone SDKs, and set up a SDK
> environment directly in the bitbake environment. Much more flexible and
> easier to maintain:
>
> https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-extensible-sdk
>
> Alex
>
> On Wed, 19 Feb 2025 at 10:51, Thilo C. via lists.yoctoproject.org
> <thilo.cestonaro=thalesgroup.com@lists.yoctoproject.org> wrote:
>
>> Classified as: {OPEN}
>>
>> Hi!
>>
>> I'm currently struggling to get a specific paket into the SDK of our
>> image.
>>
>> The situation is as follows.
>> We have a "library" which is generated code and header only. The code is
>> generated via a python module which is obviously a dependency of this
>> library but with the native part.
>>
>> As this library is header only, it does not appear in the rootfs, of
>> course.
>>
>> Now the SDK does not include the headers of this library and the python
>> module which is used for generating the code is not part of the SDK too.
>>
>> As I want to be able to build the headers only library via SDK, we need
>> the python module in the sdk.
>> As I want to be able to build the app, which needs the headers only
>> library, via SDK, we need the headers of this library in the sdk.
>>
>> I added the library recipe to the DEPENDS of the app. I added the native
>> part of the python module to the DEPENDS of the library and
>> RDEPEND:${PN}-dev onto the nativesdk part of the python module in the
>> libarry.
>> But nothing brings the wished result except adding TOOLCHAIN_HOST_TASK +=
>> nativesdk-......
>>
>> Is this really the only way to get the python module and the library into
>> the SDK or am I doing something completely wrong?!
>>
>> How does yocto determine via DEPENDS and RDEPENDS, what is going into the
>> SDK and what not?
>>
>>
>> Cheers,
>> Thilo
>>
>> *Thilo Cestonaro*
>>
>> *Embedded Software Engineer*
>>
>> Avionics / Training & Simulation / Switzerland
>>
>> *Thales*
>>
>> M: +41 (0) 79 536 56 48
>>
>> Thales Simulation & Training AG
>> Stauffacherstrasse 65
>>
>> 3014 Bern
>>
>> Switzerland
>>
>> *Find Thales on social media and at **www.thalesgroup.com
>> <https://www.thalesgroup.com/>*
>>
>>
>>
>>
>> {OPEN}
>>
>>
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64842):
> https://lists.yoctoproject.org/g/yocto/message/64842
> Mute This Topic: https://lists.yoctoproject.org/mt/111266978/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000000cd41e062f4889e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Thilo</div><div><br></div><div>If=
 you like to get one more layer of abstraction to what Alex already suggest=
ed, there is also the devtool ide-sdk tool which can bootstrap the SDK for =
you. If it gets called with --mode=3Dshared it does exactly what Alex sugge=
sts. If it gets called without this option it defaults to &quot;modified mo=
de&quot; which goes beyond what the shared mode does. The basic idea is to =
offer all the advantages you can get with devtool modify, devtool build but=
 with the speed, convenience and IDE integration which you can get when sou=
rcing the tool-chain environment file from an eSDK. It also allows developi=
ng your code completely independently from devtool and bitbake. The related=
 documentation is here: <a href=3D"https://docs.yoctoproject.org/dev/dev-ma=
nual/devtool.html#devtool-ide-sdk-configures-ides-and-bootstraps-sdks">http=
s://docs.yoctoproject.org/dev/dev-manual/devtool.html#devtool-ide-sdk-confi=
gures-ides-and-bootstraps-sdks</a>.</div><div><br></div><div>So in general =
I think, a static SDK installer does not scale in many ways. The issue with=
 missing bits which you are describing here is just one such example. Solvi=
ng this at the root probably means sticking to the bitbake environment whic=
h does not have such kinds of issues and limitations by design. We are alre=
ady at the point where the approach shared by Alex or using devtool ide-sdk=
 is on parity with using the environment created by the eSDK installer.</di=
v><div><br></div><div>Replicating a bitbake environment with access to a sh=
ared sstate cache is still a bit harder than just installing an executable =
installer. But it&#39;s covered by the documentation as well and this is ge=
tting simpler with each release. One of the challenges is that there are ma=
ny different ways a bitbake environment can be set up.</div><div><br></div>=
<div>Regards,</div><div>Adrian</div></div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Am Mi., 19. Feb. =
2025 um 11:08=C2=A0Uhr schrieb Alexander Kanavin via <a href=3D"http://list=
s.yoctoproject.org">lists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div>If I remember right, SDK construction doesn&#39;t use DEP=
ENDS or RDEPENDS at all. Rather it takes the list of packages installed int=
o an image, constructs a tree of their dependencies (which is not the same =
as RDEPENDS), adds -dev to everything in that list, and then that is what g=
ets installed into the SDK.</div><div><br></div><div>I generally recommend =
to not bother with standalone SDKs, and set up a SDK environment directly i=
n the bitbake environment. Much more flexible and easier to maintain:</div>=
<div><a href=3D"https://docs.yoctoproject.org/sdk-manual/extensible.html#in=
stalling-the-extensible-sdk" target=3D"_blank">https://docs.yoctoproject.or=
g/sdk-manual/extensible.html#installing-the-extensible-sdk</a></div><div><b=
r></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 10:51, Thilo C. via <a hr=
ef=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproject.o=
rg</a> &lt;thilo.cestonaro=3D<a href=3D"mailto:thalesgroup.com@lists.yoctop=
roject.org" target=3D"_blank">thalesgroup.com@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<p style=3D"font-family:Calibri;font-size:10pt;color:rgb(0,0,0);margin:5pt;=
font-style:normal;font-weight:normal;text-decoration:none" align=3D"Left">
Classified as: {OPEN}<br>
</p>
<br>
<div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Hi!<br>
<br>
I&#39;m currently struggling to get a specific paket into the SDK of our im=
age.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
The situation is as follows.<br>
We have a &quot;library&quot; which is generated code and header only. The =
code is generated via a python module=C2=A0which is obviously a dependency =
of this library but with the native part.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
As this library is header only, it does not appear in the rootfs, of course=
.<br>
<br>
Now the SDK does not include the headers of this library and the python mod=
ule=C2=A0which is used for generating the code is not part of the SDK too.<=
/div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
As I want to be able to build the headers only library via SDK, we need the=
 python module in the sdk.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
As I want to be able to build the app, which needs the headers only library=
, via SDK, we need the headers of this library in the sdk.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
I added the library recipe to the DEPENDS of the app. I added the native pa=
rt of the python module to the DEPENDS of the library and RDEPEND:${PN}-dev=
 onto the nativesdk part of the python module in the libarry.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
But nothing brings the wished result except adding TOOLCHAIN_HOST_TASK +=3D=
 nativesdk-......<br>
<br>
Is this really the only way to get the python module and the library into t=
he SDK or am I doing something completely wrong?!</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
How does yocto determine via DEPENDS and RDEPENDS, what is going into the S=
DK and what not?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Cheers,<br>
Thilo</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3848107271422238409m_5522453245194460664Signature" style=3D"c=
olor:inherit">
<table id=3D"m_-3848107271422238409m_5522453245194460664table_0" cellspacin=
g=3D"0" cellpadding=3D"0" style=3D"margin-left:0pt;box-sizing:border-box;bo=
rder-collapse:collapse;border-spacing:0px">
<tbody>
<tr>
<td colspan=3D"2" style=3D"padding:3pt 0pt 1.5pt;width:360pt;height:28.3647=
px;box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(36,42,117)"><b>Thilo Cestonaro</b></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0.75pt 0pt;width:360pt;height:24.3713px;=
box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)"><b>Embedded Software Engineer</b=
></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0.75pt 0pt 7.5pt;width:360pt;height:56.9=
409px;box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)">Avionics / Training &amp; Simula=
tion / Switzerland</span></p>
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)"><b>Thales</b></span></p>
</td>
</tr>
<tr>
<td style=3D"border-top:2.25pt solid rgb(0,187,221);padding:7.5pt 0pt 3.75p=
t;width:360pt;height:38.5536px;box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)">M: +41 (0) 79 536 56 48</span></=
p>
</td>
<td style=3D"border-top:2.25pt solid rgb(0,187,221);padding:7.5pt 0pt 3.75p=
t;width:360pt;height:38.5536px;box-sizing:border-box">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:3.75pt 0pt 7.5pt;width:360pt;height:105.=
696px;box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)">Thales Simulation &amp; Training=
 AG<br>
Stauffacherstrasse 65</span></p>
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)">3014 Bern</span></p>
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,121,121)">Switzerland</span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border-top:2.25pt solid rgb(0,187,221);padding:1=
1.25pt 0pt 3pt;width:360pt;height:61.8301px;box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:10pt;color:rgb(121,118,118)"><img width=3D"160" height=3D"36"=
 style=3D"width: 160px; height: 36px; max-width: 100%; margin-top: 0px; mar=
gin-bottom: 0px;" src=3D"cid:ii_1951daa08b9f3ed25341"></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:5.25pt 0pt;width:360pt;height:36.3641px;=
box-sizing:border-box">
<p style=3D"margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;font-size:9pt;color:rgb(121,118,118)"><b>Find Thales on social media an=
d at
</b></span><span style=3D"font-family:Arial;font-size:9pt;color:rgb(5,99,19=
3)"><u><a href=3D"https://www.thalesgroup.com/" title=3D"https://www.thales=
group.com/" style=3D"color:rgb(5,99,193);margin-top:0px;margin-bottom:0px" =
target=3D"_blank">www.thalesgroup.com</a></u></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin-top:0pt;margin-bottom:0pt;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;colo=
r:rgb(0,0,0)">
<span style=3D"font-family:Arial;font-size:9pt;color:rgb(5,99,193)"><u><br>
</u></span></p>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
</div>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:rgb(0,0,0);margin:5pt;=
font-style:normal;font-weight:normal;text-decoration:none" align=3D"Center"=
>
{OPEN}<br>
</p>
</div>

<br>
<br>
<br>
</div></blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64842): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64842" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64842</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111266978/445=
4582" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111266978/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D"_blank">ad=
rian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000000cd41e062f4889e2--

--0000000000000cd41f062f4889e3
Content-Type: image/png; name="Outlook-gqchuj5j.png"
Content-Disposition: inline; filename="Outlook-gqchuj5j.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_1951daa08b9f3ed25341>
X-Attachment-Id: ii_1951daa08b9f3ed25341

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
--0000000000000cd41f062f4889e3--

