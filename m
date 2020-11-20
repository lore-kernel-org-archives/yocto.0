Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.23512.1605869250696664500
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 02:47:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CRiS4jmL;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: icegood1980@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id r22so375755edw.6
        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 02:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ezYUbgY8UhsdSeQYdaj0wjJK2kxpt8v0wNxYzNzZ6Eg=;
        b=CRiS4jmLpaClEhW1K7E1sOY0PV6utMpBXPuNNm3GId/uEc5jTg6Pqj4NmAhgfy+RNa
         kVB3tKe9BPqsaBJhjsyHZV0MnIew3p4w6cSkElis9JuJ/7BA5AtsFj6374S061OA97bR
         33liNsoJF6fyIutqKowxljMI8AMx/PLuerTFGtWyh3huP7+GhBGgJfd31+Kixf6VWIPd
         B0Du8ImStOBO0rJpxk+5DQH9b1d5a8r2MN0F6bH+D50JeCjhNvKPETrWNHWEEGLOM5Au
         g4mlyAPqV8mCGdgE52ro+DHpLtRFCRJJ+dJqdgNgGILpJIMCgtt17agpy6e6tkRM4RFe
         KWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ezYUbgY8UhsdSeQYdaj0wjJK2kxpt8v0wNxYzNzZ6Eg=;
        b=b/4iagySjV8xP73H9JVreQq/ocxIFtdQ0UudE5vZSWOY0be6VC1pvjveLCb33d1juD
         wgy7iXJ0/xH1NYcL2sbilCFyAaoHLxaQRzs29GTCNDAU4XyEb4SBNYnkvxmmvU9DIofI
         DCDcpZp22nqfS8pI6hZDFicbjFpX7ARzjJKlhQBIAcjTIhcHl4uJ3DF3AIwKwA4b4Och
         RucitzvUYRNmOWCSaLy/zwtlPEiajPl1ckx46mATZuaXghqFgfUbNNTFMKnKr6m1Ngye
         THisbMXF53GelI7cI8CWDYeEtBE4hIjbPV6X2TleF8uYHCoHl9DF2AEXUqwv4RJfct42
         VnCQ==
X-Gm-Message-State: AOAM530tyqEcU5wIi7cwMOTph+OaLoyHIWZHXAU/MNu1cAk5JyU6KYLH
	4TemFDHKJ2q9xCDD+lqD1ftIINRSPs/eNLTWgZ8=
X-Google-Smtp-Source: ABdhPJw+YxnFojJRXsMFStPn82k48ItEp11mGDHtx+CIejKLpJbtp81JrpFmaT5vSyiv3RemfHeKuyfqhStry3AKxtQ=
X-Received: by 2002:a05:6402:142f:: with SMTP id c15mr35338185edx.33.1605869249128;
 Fri, 20 Nov 2020 02:47:29 -0800 (PST)
MIME-Version: 1.0
References: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
 <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com> <CAEt6Nwr7j9vwthOXZ6rUUEjyMUh71ySRO5vwb=t3qoSrffTc8Q@mail.gmail.com>
In-Reply-To: <CAEt6Nwr7j9vwthOXZ6rUUEjyMUh71ySRO5vwb=t3qoSrffTc8Q@mail.gmail.com>
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Fri, 20 Nov 2020 12:47:17 +0200
Message-ID: <CAJCbrz4cqwm55i8nbdRzGZ=c9Ds3FPdq8tjcE8CstxNBtb6sQw@mail.gmail.com>
Subject: Re: [yocto] yocto recipt from host ide
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000266dab05b48792ea"

--000000000000266dab05b48792ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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
> >=20
> >
>


--=20
Kind regards,
Sergey Ivanov

--000000000000266dab05b48792ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for efforts but none of the instructions does =
job well till the end (as many others that i&#39;ve tried before). Main rea=
sons :<br><br></div><div>1) For both: as i said, the project is with depend=
encies and cmake-based. It means, that in my cmake i have find_package thin=
gs, that should be correctly resolved against stage sysroot (not against ho=
st!). It is especially crucial for qt, since without proper configuration y=
ou will not even be able to open project.<br><br></div><div>2) For qt: <br>=
<br>2.1) there is no cmake override in setting, of course will not work. I&=
#39;ve already tried to add override from=C2=A0 &lt;my_recipe&gt;1.0.0-r0/r=
ecipe-sysroot-native but given cmake doesn&#39;t work for me.<br></div><div=
>2.2) i&#39;ve almost taken as granted that i should deal with device first=
, but, as i said, i&#39;m not even interest in the building of project, jus=
t 100% correct symbols resolution. While i will need a device (maybe) for o=
ther things like debugging in near future.=C2=A0 <br></div><div>For resolut=
ion pitfalls you may found smth. like this:<br><a href=3D"https://bugreport=
s.qt.io/browse/QTCREATORBUG-24269">https://bugreports.qt.io/browse/QTCREATO=
RBUG-24269</a><br></div><div>and i just tired to explain how everything is =
wrong there in this regard, so bug is closed<br><br></div><div>3) For vscod=
e:<br></div><div>they don&#39;t seem to be even correctly deal with custom =
sysroot and given instruction has nothing common with it. And seems there e=
verything is wrong as well:<br><a href=3D"https://github.com/microsoft/vsco=
de-cpptools/issues/1575">https://github.com/microsoft/vscode-cpptools/issue=
s/1575</a><br><br></div><div>So, i&#39;m interested in answers from devs th=
at have 100% working=C2=A0 environment (preferably own one) that cover 100%=
 symbol resolution issue. And it could be just another IDE.<br></div><br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
=D0=BF=D1=82, 20 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 09:33, Jose=
f Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.info">jester@theyoct=
ojester.info</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Am Fr., 20. Nov. 2020 um 02:47 Uhr schrieb Khem Raj &lt;<a href=3D"ma=
ilto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; On Thu, Nov 19, 2020 at 1:48 PM Sergey Ivanov &lt;<a href=3D"mailto:i=
cegood1980@gmail.com" target=3D"_blank">icegood1980@gmail.com</a>&gt; wrote=
:<br>
&gt; &gt;<br>
&gt; &gt; Hi there.<br>
&gt; &gt; Could anyone share a good approach/documentation/etc on how to<b=
r>
&gt; &gt; properly configure and use sysroot and sdk for a specific cmake =
- based c++ receipt<br>
&gt; &gt; to be able to build it from IDE (vscode, qtcreator) on linux hos=
t i.e.<br>
&gt; &gt;<br>
&gt; &gt; 1) ide&#39;s --sysroot will be taken from<br>
&gt; &gt; yocto-root/build/tmp/work/aarch64-poky-linux/&lt;my_recipe&gt;1.=
0.0-r0/recipe-sysroot<br>
&gt; &gt; 2) compilers and cmake (i believe) will be taken from<br>
&gt; &gt; yocto-root/build/tmp/work/aarch64-poky-linux/&lt;my_recipe&gt;1.=
0.0-r0/recipe-sysroot-native<br>
&gt; &gt; 3) no mix of includes from host will be taken into account durin=
g the compilation<br>
&gt; &gt;<br>
&gt; &gt; If none of ide above could do this stuff, then please recommend =
your one<br>
&gt; &gt;<br>
&gt; &gt; For this moment i don&#39;t want run/debug the application right=
 from ide, i just want to have all symbols be correctly resolved from there=
.<br>
&gt; &gt;<br>
&gt;<br>
&gt; does this help ?<br>
&gt; <a href=3D"https://www.ics.com/blog/configuring-qt-creator-yocto-deve=
lopment" rel=3D"noreferrer" target=3D"_blank">https://www.ics.com/blog/conf=
iguring-qt-creator-yocto-development</a><br>
<br>
also, <a href=3D"https://github.com/Wind-River/vscode-wrlinux/" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/Wind-River/vscode-wrlinux/</a=
><br>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Kind regards,<br>Sergey Ivanov</div>

--000000000000266dab05b48792ea--
