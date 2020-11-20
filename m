Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web08.5409.1605961469012344547
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:24:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=VhcN9hmq;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 11:48:42 +0000
X-Sender: bounce+53643+51496+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 12599
X-Received: by 127.0.0.2 with SMTP id N84mYY3619394xsasFAmPmOz; Fri, 20 Nov 2020 03:47:32 -0800
X-Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51]) by mx.groups.io
 with SMTP id smtpd.web10.23512.1605869250696664500 for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 02:47:31 -0800
X-Received: by mail-ed1-f51.google.com with SMTP id r22so375755edw.6        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 02:47:30 -0800 (PST)
X-Gm-Message-State: wx05KrWwv3oEvO0loN3lTWKSx3618059AA=
X-Google-Smtp-Source: ABdhPJw+YxnFojJRXsMFStPn82k48ItEp11mGDHtx+CIejKLpJbtp81JrpFmaT5vSyiv3RemfHeKuyfqhStry3AKxtQ=
X-Received: by 2002:a05:6402:142f:: with SMTP id c15mr35338185edx.33.1605869249128; Fri, 20 Nov 2020 02:47:29 -0800 (PST)
MIME-Version: 1.0
References: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com> <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com>
 <CAEt6Nwr7j9vwthOXZ6rUUEjyMUh71ySRO5vwb=t3qoSrffTc8Q@mail.gmail.com>
In-Reply-To: <CAEt6Nwr7j9vwthOXZ6rUUEjyMUh71ySRO5vwb=t3qoSrffTc8Q@mail.gmail.com>
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Fri, 20 Nov 2020 12:47:17 +0200
X-OldMsgId: <CAJCbrz4cqwm55i8nbdRzGZ=c9Ds3FPdq8tjcE8CstxNBtb6sQw@mail.gmail.com>
Subject: Re: [yocto] yocto recipt from host ide
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605872852; bh=vhlP+lkGPdxAbf0VsqDJBaVEti4ik6AMThpsiwSWbGM=; h=Cc:Content-Type:Date:From:Subject:To;
 b=VhcN9hmqul9O759Kqs/daqQnPSjiXy0VkNaXvj4y/qXmfWUDXk18BFOsL7J1qOUJcs8 o+GjJhRmm+C3AvwQsPm1He5WFE/fa3qgNk7F3RB+8TJTOgTKn28KSPYPVnlbXnJ4OAvcB mtfMlSB2ABTXK066dAp5HTTJsAeuGe881xo=
Return-Path: bounce+53643+51496+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <580832b303aa413d9010ce5feae916bc@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="c2pGBStoRu0v0H1WmmDh"

--c2pGBStoRu0v0H1WmmDh
Content-Type: multipart/alternative; boundary="000000000000266dab05b48792ea"

--000000000000266dab05b48792ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {B255A1FE-E975-4D23-999A-A7A19E3F60E0}

Thanks for efforts but none of the instructions does job well till the end
(as many others that i've tried before). Main reasons :

1) For both: as i said, the project is with dependencies and cmake-based.
It means, that in my cmake i have find_package things, that should be
correctly resolved against stage sysroot (not against host!). It is
especially crucial for qt, since without proper configuration you will not
even be able to open project.

2) For qt:

2.1) there is no cmake override in setting, of course will not work. I've
already tried to add override from
<my_recipe>1.0.0-r0/recipe-sysroot-native but given cmake doesn't work for
me.
2.2) i've almost taken as granted that i should deal with device first,
but, as i said, i'm not even interest in the building of project, just 100=
%
correct symbols resolution. While i will need a device (maybe) for other
things like debugging in near future.
For resolution pitfalls you may found smth. like this:
https://bugreports.qt.io/browse/QTCREATORBUG-24269
and i just tired to explain how everything is wrong there in this regard,
so bug is closed

3) For vscode:
they don't seem to be even correctly deal with custom sysroot and given
instruction has nothing common with it. And seems there everything is wron=
g
as well:
https://github.com/microsoft/vscode-cpptools/issues/1575

So, i'm interested in answers from devs that have 100% working  environmen=
t
(preferably own one) that cover 100% symbol resolution issue. And it could
be just another IDE.


=D0=BF=D1=82, 20 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 09:33, Jose=
f Holzmayr <jester@theyoctojester.info>:

> Am Fr., 20. Nov. 2020 um 02:47 Uhr schrieb Khem Raj <raj.khem@gmail.com>=
:
> >
> > On Thu, Nov 19, 2020 at 1:48 PM Sergey Ivanov <icegood1980@gmail.com>
> wrote:
> > >
> > > Hi there.
> > > Could anyone share a good approach/documentation/etc on how to
> > > properly configure and use sysroot and sdk for a specific cmake -
> based c++ receipt
> > > to be able to build it from IDE (vscode, qtcreator) on linux host i.=
e.
> > >
> > > 1) ide's --sysroot will be taken from
> > >
> yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-=
sysroot
> > > 2) compilers and cmake (i believe) will be taken from
> > >
> yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-=
sysroot-native
> > > 3) no mix of includes from host will be taken into account during th=
e
> compilation
> > >
> > > If none of ide above could do this stuff, then please recommend your
> one
> > >
> > > For this moment i don't want run/debug the application right from id=
e,
> i just want to have all symbols be correctly resolved from there.
> > >
> >
> > does this help ?
> > https://www.ics.com/blog/configuring-qt-creator-yocto-development
>
> also, https://github.com/Wind-River/vscode-wrlinux/
>
> >
> > > --
> > > Kind regards,
> > > Sergey Ivanov
> > >
> > >
> > >
> >
> >
> >
>


--
Kind regards,
Sergey Ivanov




--000000000000266dab05b48792ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {9D1CD413-3C7C-4CA5-8CAE-1A052C12EFB8}

<div><div>Thanks for efforts but none of the instructions does job well till=
 the end (as many others that i&#39;ve tried before). Main reasons :<br><br>=
</div><div>1) For both: as i said, the project is with dependencies and cmak=
e-based. It means, that in my cmake i have find_package things, that should =
be correctly resolved against stage sysroot (not against host!). It is espec=
ially crucial for qt, since without proper configuration you will not even b=
e able to open project.<br><br></div><div>2) For qt: <br><br>2.1) there is n=
o cmake override in setting, of course will not work. I&#39;ve already tried=
 to add override from=C2=A0 &lt;my_recipe&gt;1.0.0-r0/recipe-sysroot-native =
but given cmake doesn&#39;t work for me.<br></div><div>2.2) i&#39;ve almost =
taken as granted that i should deal with device first, but, as i said, i&#39=
;m not even interest in the building of project, just 100% correct symbols r=
esolution. While i will need a device (maybe) for other things like debuggin=
g in near future.=C2=A0 <br></div><div>For resolution pitfalls you may found=
 smth. like this:<br><a href=3D"https://bugreports.qt.io/browse/QTCREATORBUG=
-24269">https://bugreports.qt.io/browse/QTCREATORBUG-24269</a><br></div><div=
>and i just tired to explain how everything is wrong there in this regard, s=
o bug is closed<br><br></div><div>3) For vscode:<br></div><div>they don&#39;=
t seem to be even correctly deal with custom sysroot and given instruction h=
as nothing common with it. And seems there everything is wrong as well:<br><=
a href=3D"https://github.com/microsoft/vscode-cpptools/issues/1575">https://=
github.com/microsoft/vscode-cpptools/issues/1575</a><br><br></div><div>So, i=
&#39;m interested in answers from devs that have 100% working=C2=A0 environm=
ent (preferably own one) that cover 100% symbol resolution issue. And it cou=
ld be just another IDE.<br></div><br></div><br><div class=3D"gmail_quote"><d=
iv class=3D"gmail_attr">=D0=BF=D1=82, 20 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3=
. =D0=B2 09:33, Josef Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.i=
nfo">jester@theyoctojester.info</a>&gt;:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Am Fr., 20. Nov. 2020 um 02:47 Uhr schrieb Khem Raj &=
lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; On Thu, Nov 19, 2020 at 1:48 PM Sergey Ivanov &lt;<a href=3D"mailto:ice=
good1980@gmail.com">icegood1980@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi there.<br>
&gt; &gt; Could anyone share a good approach/documentation/etc on how to<br>=

&gt; &gt; properly configure and use sysroot and sdk for a specific cmake - =
based c++ receipt<br>
&gt; &gt; to be able to build it from IDE (vscode, qtcreator) on linux host =
i.e.<br>
&gt; &gt;<br>
&gt; &gt; 1) ide&#39;s --sysroot will be taken from<br>
&gt; &gt; yocto-root/build/tmp/work/aarch64-poky-linux/&lt;my_recipe&gt;1.0.=
0-r0/recipe-sysroot<br>
&gt; &gt; 2) compilers and cmake (i believe) will be taken from<br>
&gt; &gt; yocto-root/build/tmp/work/aarch64-poky-linux/&lt;my_recipe&gt;1.0.=
0-r0/recipe-sysroot-native<br>
&gt; &gt; 3) no mix of includes from host will be taken into account during =
the compilation<br>
&gt; &gt;<br>
&gt; &gt; If none of ide above could do this stuff, then please recommend yo=
ur one<br>
&gt; &gt;<br>
&gt; &gt; For this moment i don&#39;t want run/debug the application right f=
rom ide, i just want to have all symbols be correctly resolved from there.<b=
r>
&gt; &gt;<br>
&gt;<br>
&gt; does this help ?<br>
&gt; <a href=3D"https://www.ics.com/blog/configuring-qt-creator-yocto-develo=
pment">https://www.ics.com/blog/configuring-qt-creator-yocto-development</a>=
<br>
<br>
also, <a href=3D"https://github.com/Wind-River/vscode-wrlinux/">https://gith=
ub.com/Wind-River/vscode-wrlinux/</a><br>
<br>
&gt;<br>
&gt; &gt; --<br>
&gt; &gt; Kind regards,<br>
&gt; &gt; Sergey Ivanov<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div><br><br>-- <br><div class=3D"gmail_signature">Kind regard=
s,<br>Sergey Ivanov</div>

--000000000000266dab05b48792ea--

--c2pGBStoRu0v0H1WmmDh--
