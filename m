Return-Path: <smooge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7480DC25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 11:15:29 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.11278.1716981320190114064
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 04:15:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X30Zchw4;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: smooge@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6f8ea2df4b3so1494203b3a.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 04:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716981319; x=1717586119; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OKL2UE9Mbg8qR8LCIbUh3wtXJZbs7WDJnN6vVdcEPaU=;
        b=X30Zchw4KPFsYwz+g2+QVeIOu6SAw9bQ8PoWb5CxgNYaGf58XyAZ6OfJCO9nvEPc+c
         rhJK7YjVxRcrJNHQFq7N0lTrZP9XevtHCrPhvvxV+TePKGshqkJ5CciFzKP67K/7zvOg
         Ts9foH+oCVSl6MaQredtl+L9o4wtk4QD0fLG0DPSLsFOJH2vH4A68E/ZIlmHmaf7x/Ra
         hIKZiuDy8FLK9CgIcCXjzkx+Bv8Qy+Zv6aEzo7HSkaH5NUkruR+Y8qU1Fy/n7UKTVg+f
         esY7Q1gtSqbz16124Sm5Ezirz7DkhvRtYpaOkuDHaUZhtBa+Mq6sHhUbRg1rLX+HmOKP
         BHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716981319; x=1717586119;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OKL2UE9Mbg8qR8LCIbUh3wtXJZbs7WDJnN6vVdcEPaU=;
        b=rJH+xuUURuFTbyjjTNojCX2Qaw7pmjzrl6KF3Tdx7TQKlHR/LQ66LisckywkGOPjAD
         L+2WsFetDJLii8rhQx8vDBlbeYz6eQESgCBrzSyXFElhMrZLYLYpuhcTK/ifqB6epxy+
         7AVcP3ZHtvaxmZoAz2VTyTptxgrFHJ74G1PbkAA3joRIRxhQdXLycU1Y7T9YfTepk7Rr
         qdZOOtZzuNqbYSGlESDsopefinw/ed8RvxxkTjwDsg5xZHa1n10nub7i18IDttax649h
         ZPCEluDQAcJfymC30lonoJ3HRCSiVEHX5bU9lryjo79tLFYFjp1FCKkkmyjNjD/16ai3
         o8WA==
X-Gm-Message-State: AOJu0YwAiL+UIeW9p/Zp+Wm4Tw/6egPUqbp6sMNtrFtGVGlg5dsINjhp
	eM1z6+3lKFPAnjK8QJa9e9ujutp+yaMXXa9+bgBaK1EVYnBbJrgeDQaYb18XaC1yOwbeoZQ69wq
	HZAk4pE0PIMoTFC+8qHCf/c3YL8xJrw==
X-Google-Smtp-Source: AGHT+IHriUjVezcgpOyfHFijM5j4+O6r3jmya7lgBsD+47EAYWx9ave3+LkGdwS94cD3cNxC4UjCoaciIMFQFUF+ulY=
X-Received: by 2002:a05:6a21:3e05:b0:1af:5d8e:c6c with SMTP id
 adf61e73a8af0-1b212d5df8emr14736472637.18.1716981318862; Wed, 29 May 2024
 04:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
In-Reply-To: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Wed, 29 May 2024 07:15:07 -0400
Message-ID: <CANnLRdjaNT=gyMtw0T4M+HhwPxxxZJR9Dj4ZLWGXZDQc8x3yfg@mail.gmail.com>
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Content-Type: multipart/alternative; boundary="00000000000098cdee061995dd38"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 11:15:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63224

--00000000000098cdee061995dd38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 29 May 2024 at 05:06, Hanke Fabian (DC/PAR) via
lists.yoctoproject.org <fabian.hanke=3Dbosch.com@lists.yoctoproject.org>
wrote:

> Hello,
> we were wondering if anyone has experiences / best practices on how to
> detect if packages link to a library from another GPL licensed package? W=
e
> know that there are ways to completely filter out some licenses via
> INCOMPATIBLE_LICENSE. But from our (limited) legal knowledge it is okay t=
o
> include them in our image, if we fulfill all the obligations. One
> obligation implies that code linked to a GPL library will need to have th=
e
> same license (derivative work). Hence we would like to avoid that package=
s
> containing our own closed source software link by accident to a GPL based
> library. Has anyone experiences / best practices on how to detect this
> automatically during the bitbake build?
>
>
I wanted to bring up a nuance because you are saying 'GPL based library'.
There are several different GPL licenses which need to be evaluated when
linking to. The lawyers at Bosch can give the best advice, but this
following rule of thumb may be useful:
Linking to licenses with AGPL -> must be a compatible source license (aka
source must be available and modifiable by user) and must meet additional
requirements for delivery
Linking to licenses with GPL -> must be a compatible source license (aka
source must be available and modifiable by user)
Linking to licenses with LGPL -> can be a closed source library in many
cases. [again get a lawyer's review]

Then there are the GPL and LGPL with exception licenses. Those exceptions
might be something 'slight' so that licenses incompatibilities between the
OpenSSL or Apache can be still 'excepted' for use. And then there are the
exceptions which basically allow any closed source to link against it.
Those need a lawyer's review. There are also differences between version 2
and version 3 of the licenses that again need lawyer's advice.

On many Linux operating systems the libc is based off of glibc which is
LGPL2+ with exceptions and GPL2+ with exceptions for various binaries.
Other libraries that are in common use may also be. There are also example
layer's like the one that Etienne Cordonnier brought up which can help cut
down potential conflicts.

And my apologies for bringing up 'lawyers review' so much. Various parts of
Bosch have worked in this space for a long time so I figured there was a
dedicated counsel who can help guide engineering projects through GPL and
other license linking and compliance.

Best regards,
> Fabian Hanke
> --------------------------------
> Bosch Rexroth AG
> Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart
> HRB 23192 Executive Board: Dr. Steffen Haack (President), Roland
> Bittenauer, Thomas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chair=
man of
> the Supervisory Board: Dr. Markus Forschner
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63222):
> https://lists.yoctoproject.org/g/yocto/message/63222
> Mute This Topic: https://lists.yoctoproject.org/mt/106365537/6036588
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> smooge@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Stephen J Smoogen.
Let us be kind to one another, for most of us are fighting a hard battle.
-- Ian MacClaren

--00000000000098cdee061995dd38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 29 May 2024 at 05:06, Hanke F=
abian (DC/PAR) via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;fabian.hanke=3D<a href=3D"mailto:bosch.com@lists.yoctoproj=
ect.org">bosch.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hello,<br>
we were wondering if anyone has experiences / best practices on how to dete=
ct if packages link to a library from another GPL licensed package? We know=
 that there are ways to completely filter out some licenses via INCOMPATIBL=
E_LICENSE. But from our (limited) legal knowledge it is okay to include the=
m in our image, if we fulfill all the obligations. One obligation implies t=
hat code linked to a GPL library will need to have the same license (deriva=
tive work). Hence we would like to avoid that packages containing our own c=
losed source software link by accident to a GPL based library. Has anyone e=
xperiences / best practices on how to detect this automatically during the =
bitbake build?<br>
<br></blockquote><div><br></div><div>I wanted to bring up a nuance because =
you are saying &#39;GPL based library&#39;. There are several different GPL=
 licenses which need to be evaluated when linking to. The lawyers at Bosch =
can give the best advice, but this following rule of thumb may be useful:</=
div><div>Linking to licenses with AGPL -&gt; must be a compatible source li=
cense (aka source must be available and modifiable by user) and must meet a=
dditional requirements for delivery</div><div>Linking to licenses with GPL =
-&gt; must be a compatible source license (aka source must be available and=
 modifiable by user)</div><div>Linking to licenses with LGPL -&gt; can be a=
 closed source library in many cases. [again get a lawyer&#39;s review]<br>=
</div><div><br></div><div>Then there are the GPL and LGPL with exception li=
censes. Those exceptions might be something &#39;slight&#39; so that licens=
es incompatibilities between the OpenSSL or Apache can be still &#39;except=
ed&#39; for use. And then there are the exceptions which basically allow an=
y closed source to link against it. Those need a lawyer&#39;s review. There=
 are also differences between version 2 and version 3 of the licenses that =
again need lawyer&#39;s advice. <br></div><div><br></div><div>On many Linux=
 operating systems the libc is based off of glibc which is LGPL2+ with exce=
ptions and GPL2+ with exceptions for various binaries. Other libraries that=
 are in common use may also be. There are also example layer&#39;s like the=
 one that Etienne Cordonnier brought up which can help cut down potential c=
onflicts. <br></div><div><br></div><div>And my apologies for bringing up &#=
39;lawyers review&#39; so much. Various parts of Bosch have worked in this =
space for a long time so I figured there was a dedicated counsel who can he=
lp guide engineering projects through GPL and other license linking and com=
pliance. <br></div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
Best regards,<br>
Fabian Hanke <br>
--------------------------------<br>
Bosch Rexroth AG<br>
Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63222): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63222" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63222</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106365537/603=
6588" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106365537/6036588</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:smooge@gmail.com" target=3D"_blank">smooge@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Stephen J Smoogen.<br><span style=3D"color:rgb(32,33,36);font-family:Ar=
ial,Helvetica,sans-serif;font-size:small;font-style:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);displ=
ay:inline;float:none">Let us be kind to one another, for most of us are fig=
hting a hard battle. -- Ian MacClaren</span></div></div></div>

--00000000000098cdee061995dd38--

