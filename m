Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81C93C636D3
	for <webhook@archiver.kernel.org>; Thu,  9 Feb 2023 18:45:59 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web11.25328.1675968350953023058
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Feb 2023 10:45:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nh9LtXzl;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: simonkbaby@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id b1so1974906pft.1
        for <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 10:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wpdH2VgAwFzQg8DyS17rf3xukJxiqSVeHjBu7MKozyc=;
        b=Nh9LtXzloz5uFZCIHBm8AlHllEykQLcbHwwX3W7HxmOkqhJNvVpyqeTbzmW6LMcrvR
         Uk3dUvK9N2YcRyhbd5JPKxG/AWXDU7MabO8FLoARtaKf7ly+6UBCoLcRL6cHO5rT4nyi
         nzZCO9LI7oxz+nbIPcPsiNoZKeP/XQhULCCmwykfEbEsyQxeEUb/qJ3PBKb23CWHABeJ
         cKnwZaI757NwlGr2p63X3WJ3vv1S7R/bo1+x4p85Waz3gYVqDRG0aVZWOhaC/EfaOjzW
         zOMdPDhwzwrwMm1Ue6Mb/P5Ki89wHWH8rc7psTeWU3pcM4aCLJRtKieulT9Xgo/35hXQ
         WjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wpdH2VgAwFzQg8DyS17rf3xukJxiqSVeHjBu7MKozyc=;
        b=inmDM6frYfWm7jP2zBfWOWN8vT1o5GF7P3W1rVeWW9MAG3i+zIXIPhUim35uwJ+Tfm
         LlpmCK2d2BDsaCy5VqY259ZYphPoara5l37uysr4q2lM09oFooMZ32EBeaHOJAnb2GaD
         WRC51LIlxvQP/h47XuiR1HAQ9nD8/xRxePGYzsFPQtzdR25Xer7zio9NT2HYPdQd9gAs
         a9yFaMOG7Bjh4avjzJq7UNSfcP7Hn2+Um/3T+tcfe2OGEeZ7EoiBsGi0MSpvlu46WuYW
         l8r70MUW6uDqlyQ40gPpf6SJOrDEOY7lBkTRZPQZRsQu+CSTtcZcjqwrKtb0faxdp2X2
         BLiw==
X-Gm-Message-State: AO0yUKW+qeGmcPqhVs5DWqI3vJANLqnfSVSOhAnthF3iESgV7m6Grelb
	bNRU0G/EH2fdX4On1Ze+z4UsRf15MXEKER3gTwW2RzCkYq4=
X-Google-Smtp-Source: AK7set94/rpq4h5mR69hCmOXvxIRVzKivWXJYkRDzLkxIBmTyz5ciGUHDZS9KS1ax0QsxuB2LJe2q/O+P+jg8g8yeoY=
X-Received: by 2002:a62:62c6:0:b0:596:106d:1fae with SMTP id
 w189-20020a6262c6000000b00596106d1faemr2481053pfb.37.1675968349722; Thu, 09
 Feb 2023 10:45:49 -0800 (PST)
MIME-Version: 1.0
References: <39760b676a3d2a628a446e3031724b53c8941a88.camel@linuxfoundation.org>
 <32073.1675641651799643620@lists.yoctoproject.org>
In-Reply-To: <32073.1675641651799643620@lists.yoctoproject.org>
From: SIMON BABY <simonkbaby@gmail.com>
Date: Thu, 9 Feb 2023 10:45:38 -0800
Message-ID: <CAEFUPH2JJ6iiQvzT3bSrWDdM__Gf=XkDBRWg18XTu3B05dnFoA@mail.gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000023de6005f448ca26"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 18:45:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59204

--00000000000023de6005f448ca26
Content-Type: text/plain; charset="UTF-8"

Hello,



I was testing the meta-virtualization/recipes-demo/images/ app-container. I
was able to build the container. But I am not sure where is the image
created  and how do we run the image using docker commands. I also see the
.yaml files.

On the target I can see /usr/bin/flask-app. Below is the folder contents
after bitbake.



bitbake app-container



build/tmp/work/armv8a-poky-linux/helloworld-flask$ ls

0.1-r0

/build/tmp/work/armv8a-poky-linux/helloworld-flask$ cd 0.1-r0/

build/tmp/work/armv8a-poky-linux/helloworld-flask/0.1-r0$ ls -ll

total 84

-rw-r--r--  1 tdydev tdydev    65 Feb  7 11:58 configure.sstate

drwxr-xr-x  3 tdydev tdydev  4096 Feb  7 12:10 deploy-debs

drwxr-xr-x  2 tdydev tdydev  4096 Feb  7 11:38 deploy-source-date-epoch

-rwxrwxr-x  1 tdydev tdydev   518 Feb  2 14:24 flask-app

-rw-r--r--  1 tdydev tdydev   511 Feb  7 11:58 flask-app-service.yaml

-rw-r--r--  1 tdydev tdydev   178 Feb  7 11:58 flask-app.yaml

drwxr-xr-x  2 tdydev tdydev  4096 Feb  7 11:35 helloworld-flask-0.1

drwxr-xr-x  4 tdydev tdydev  4096 Feb  7 11:58 image

drwxr-xr-x  3 tdydev tdydev  4096 Feb  7 11:38 license-destdir

drwxr-xr-x  4 tdydev tdydev  4096 Apr  5  2011 package

drwxr-xr-x 10 tdydev tdydev  4096 Feb  7 12:10 packages-split

drwxr-xr-x  7 tdydev tdydev  4096 Apr  5  2011 pkgdata

drwxr-xr-x  7 tdydev tdydev  4096 Feb  7 11:58 pkgdata-pdata-input

drwxr-xr-x  7 tdydev tdydev  4096 Feb  7 11:58 pkgdata-sysroot

drwxrwxr-x  2 tdydev tdydev  4096 Feb  7 12:10 pseudo

drwxr-xr-x  5 tdydev tdydev  4096 Feb  7 12:10 recipe-sysroot

drwxr-xr-x  8 tdydev tdydev  4096 Feb  7 12:10 recipe-sysroot-native

drwxr-xr-x  2 tdydev tdydev  4096 Feb  7 11:35 source-date-epoch

drwxr-xr-x  2 tdydev tdydev 12288






Regards

Simon


On Sun, Feb 5, 2023 at 4:00 PM SIMON BABY via lists.yoctoproject.org
<simonkbaby=gmail.com@lists.yoctoproject.org> wrote:

> Hi Richard,
>
> I added extra code in the recipe to print the sudo permissions to compare
> with actual permissions.
>
> Regards
> Simon
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59173):
> https://lists.yoctoproject.org/g/yocto/message/59173
> Mute This Topic: https://lists.yoctoproject.org/mt/96733939/4946642
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> simonkbaby@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000023de6005f448ca26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;=
font-family:Calibri,sans-serif">Hello,<u></u><u></u></p><p class=3D"MsoNorm=
al" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><u><=
/u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11=
pt;font-family:Calibri,sans-serif">I was testing the meta-virtualization/re=
cipes-demo/images/ app-container. I was able to build the container. But I =
am not sure where is the image created =C2=A0and how do we run the image us=
ing docker commands. I also see the .yaml files.=C2=A0<u></u></p><p class=
=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-=
serif">On the target I can see /usr/bin/flask-app. Below is the folder cont=
ents after bitbake.<u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></p><p cla=
ss=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,san=
s-serif">bitbake app-container<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;fon=
t-family:Calibri,sans-serif">build/tmp/work/armv8a-poky-linux/helloworld-fl=
ask$ ls<u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-si=
ze:11pt;font-family:Calibri,sans-serif">0.1-r0<u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-ser=
if">/build/tmp/work/armv8a-poky-linux/helloworld-flask$ cd 0.1-r0/<u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-fam=
ily:Calibri,sans-serif">build/tmp/work/armv8a-poky-linux/helloworld-flask/0=
.1-r0$ ls -ll<u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;f=
ont-size:11pt;font-family:Calibri,sans-serif">total 84<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,=
sans-serif">-rw-r--r--=C2=A0 1 tdydev tdydev=C2=A0=C2=A0=C2=A0 65 Feb=C2=A0=
 7 11:58 configure.sstate<u></u><u></u></p><p class=3D"MsoNormal" style=3D"=
margin:0in;font-size:11pt;font-family:Calibri,sans-serif">drwxr-xr-x=C2=A0 =
3 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 deploy-debs<u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibr=
i,sans-serif">drwxr-xr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:38=
 deploy-source-date-epoch<u></u><u></u></p><p class=3D"MsoNormal" style=3D"=
margin:0in;font-size:11pt;font-family:Calibri,sans-serif">-rwxrwxr-x=C2=A0 =
1 tdydev tdydev=C2=A0=C2=A0 518 Feb=C2=A0 2 14:24 flask-app<u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Cal=
ibri,sans-serif">-rw-r--r--=C2=A0 1 tdydev tdydev=C2=A0=C2=A0 511 Feb=C2=A0=
 7 11:58 flask-app-service.yaml<u></u><u></u></p><p class=3D"MsoNormal" sty=
le=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">-rw-r--r--=
=C2=A0 1 tdydev tdydev=C2=A0=C2=A0 178 Feb=C2=A0 7 11:58 flask-app.yaml<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;fon=
t-family:Calibri,sans-serif">drwxr-xr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Fe=
b=C2=A0 7 11:35 helloworld-flask-0.1<u></u><u></u></p><p class=3D"MsoNormal=
" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">drwxr-=
xr-x=C2=A0 4 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:58 image<u></u><u></u>=
</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:C=
alibri,sans-serif">drwxr-xr-x=C2=A0 3 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 =
11:38 license-destdir<u></u><u></u></p><p class=3D"MsoNormal" style=3D"marg=
in:0in;font-size:11pt;font-family:Calibri,sans-serif">drwxr-xr-x=C2=A0 4 td=
ydev tdydev=C2=A0 4096 Apr=C2=A0 5=C2=A0 2011 package<u></u><u></u></p><p c=
lass=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,s=
ans-serif">drwxr-xr-x 10 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 package=
s-split<u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-si=
ze:11pt;font-family:Calibri,sans-serif">drwxr-xr-x=C2=A0 7 tdydev tdydev=C2=
=A0 4096 Apr=C2=A0 5=C2=A0 2011 pkgdata<u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">drw=
xr-xr-x=C2=A0 7 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:58 pkgdata-pdata-in=
put<u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:1=
1pt;font-family:Calibri,sans-serif">drwxr-xr-x=C2=A0 7 tdydev tdydev=C2=A0 =
4096 Feb=C2=A0 7 11:58 pkgdata-sysroot<u></u><u></u></p><p class=3D"MsoNorm=
al" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">drwx=
rwxr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 pseudo<u></u><u><=
/u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-famil=
y:Calibri,sans-serif">drwxr-xr-x=C2=A0 5 tdydev tdydev=C2=A0 4096 Feb=C2=A0=
 7 12:10 recipe-sysroot<u></u><u></u></p><p class=3D"MsoNormal" style=3D"ma=
rgin:0in;font-size:11pt;font-family:Calibri,sans-serif">drwxr-xr-x=C2=A0 8 =
tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 recipe-sysroot-native<u></u><u><=
/u></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-famil=
y:Calibri,sans-serif">drwxr-xr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0=
 7 11:35 source-date-epoch<u></u><u></u></p><p class=3D"MsoNormal" style=3D=
"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">drwxr-xr-x=C2=A0=
 2 tdydev tdydev 12288=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0in;=
font-size:11pt;font-family:Calibri,sans-serif"><br></p><p class=3D"MsoNorma=
l" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><br><=
/p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Ca=
libri,sans-serif"><br></p><p class=3D"MsoNormal" style=3D"margin:0in;font-s=
ize:11pt;font-family:Calibri,sans-serif"><br></p><p class=3D"MsoNormal" sty=
le=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><br></p><p =
class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,=
sans-serif">Regards</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size=
:11pt;font-family:Calibri,sans-serif">Simon</p><br class=3D"gmail-Apple-int=
erchange-newline"></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, Feb 5, 2023 at 4:00 PM SIMON BABY via <a href=3D"=
http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;simonkbaby=3D=
<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctopr=
oject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi Richard,<br><br>I added extra code in the recipe to print the=
 sudo permissions to compare with actual permissions.<br><br>Regards<br>Sim=
on<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59173): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59173" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59173</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96733939/4946=
642" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96733939/4946642</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:simonkbaby@gmail.com" target=3D"_blank">simonkba=
by@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000023de6005f448ca26--

