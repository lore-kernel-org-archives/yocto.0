Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7694DC0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 21:45:36 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.5977.1738273532661494633
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 13:45:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=ig7CYjD1;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385e0e224cbso801518f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 13:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1738273530; x=1738878330; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uNcuH/SQg56D0BaM86fdBlrh20oIu8KHNXcaurZnXPE=;
        b=ig7CYjD1iVICXtbga3TRJvWE28sRCHA69HYzs/xt/uqQI2BL8eAoEoUSC1W9d5t11X
         l4u2K447HiN0EPHVv7y+E4A0nqUGG9Z/GIeqSF1BjuooInz57ctmj8FBvKjGjw1doANc
         NvAuxc20qQUI0fZbD1LaIRNcxMQyxPwkchqUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738273530; x=1738878330;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uNcuH/SQg56D0BaM86fdBlrh20oIu8KHNXcaurZnXPE=;
        b=BMIr7+K2wKOB32iqxjNR2G2ry3DdP0Cc+DMgteGfMC/r1yEubYnZU6icKLUdMfjC7+
         GSTgqHuyxVcUlL458hhU9LA5Uu/n4NKVHGtBGpy2nhYzueuJWUpP8OQWas8ue+YbI7BM
         V6PonimaidWNmNYoP6790TpnneaPpQBJXT01pldOr7yNgn52KnnBu96prrsCurnFS3ov
         HsMwhTugvJ0YctrSEF8jCn5APhBW8BT/9+g/3CvhXdNaPQLk2Ye2L8iS0MEbT9im/h3O
         +EVmbtyGcOxSUp6D7T+w4BlOKJNgBC8d1RKFOe/oyaIFbN7ncLQPyx/J/9lOxrFlnWj/
         QJDA==
X-Gm-Message-State: AOJu0Yy6sivXPdklHJS3ADLHhACvsobAj7iTx896AyPPbBjZwnp45Edq
	Q+zRxsHmEdobjMIo6233LqUFKm0uY9DMMFNLoAUry2z6b8C916bojb11dqkPUx77QM0hicYXBOP
	80I0K2Kk3BN27Es31E8qpARlYabFs1OC4FelQALE1O6NI83z64p9X5w==
X-Gm-Gg: ASbGncvsG7gTIHiawmz66Es1HcNQ3iO+rk3CPAJBofDUKehpF10aRz20pb6Axi/8Dol
	29BNnpn09ciyH5ZsvP7aoq30WKYA18XsXobAVJbFPs9doNiIvpwRvVAJLlI1e8nYFsBNPYNAD2p
	QzCcgcCl/mnFhndIrcNwP08dymmoVhgw==
X-Google-Smtp-Source: AGHT+IGpOSh+y514z+CJbYQpythAVC75xl8xkQQOnt4rMGGaDUtRvpzV5lZvDxBW3DNtBTIGHuoQyKKBTQpUrlMX5wM=
X-Received: by 2002:a5d:58f3:0:b0:38c:3f12:64a7 with SMTP id
 ffacd0b85a97d-38c520ba30bmr5781303f8f.50.1738273530421; Thu, 30 Jan 2025
 13:45:30 -0800 (PST)
MIME-Version: 1.0
References: <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
In-Reply-To: <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 30 Jan 2025 22:45:04 +0100
X-Gm-Features: AWEUYZlTkOtYJv_6oRDv1Fgj856whCWlXD9zF0NJsDd4RHoX9kg3HcA4Zu2XtTA
Message-ID: <CAMSfU+41x7r=mMNxDUEdOOt-xVzNXX6hKj6WkEqRmFAcDKLkEA@mail.gmail.com>
Subject: Re: [yocto] How to determine distro for a YP-based image?
To: yocto@lists.yoctoproject.org, tim.bird@sony.com
Content-Type: multipart/alternative; boundary="0000000000004dc2ec062cf3589b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 21:45:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64684

--0000000000004dc2ec062cf3589b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 30 janv. 2025 =C3=A0 20:48, Tim Bird via lists.yoctoproject.org
<tim.bird=3Dsony.com@lists.yoctoproject.org> a =C3=A9crit :

> Hello YP users,
>

Hello,


> Is there any way to tell what distribution or bitbake image name was used
> by looking at the contents of an image.
>
> I recently built a distribution based on Poky,  using 'bitbake
> core-image-minimal'.
> I had hoped that I could see this recorded somewhere in the image, so I
> can distinguish
> between that image and another image I sometimes use from Texas Instrumen=
ts
> while running on Linux inside the image.
>
> It doesn't look like YP populates /etc/os-release, where distribution
> information
> is normally stored.  Is that right?
>

I was not aware but it looks like a de-facto standard pushed by systemd
https://0pointer.de/blog/projects/os-release


> Is there anywhere else inside the image where information about the distr=
o
> being built is stored?
>

/etc/os-release is not built/installed by default. You will have to install
the "os-release" package to have on your image.
For exemple, here is the content on a recent Poky:
root@qemux86-64:~# cat /etc/os-release
ID=3Dpoky
NAME=3D"Poky (Yocto Project Reference Distro)"
VERSION=3D"5.1 (styhead)"
VERSION_ID=3D5.1
VERSION_CODENAME=3D"styhead"
PRETTY_NAME=3D"Poky (Yocto Project Reference Distro) 5.1 (styhead)"
CPE_NAME=3D"cpe:/o:openembedded:poky:5.1"

I'm relatively inexperience with YP.  Is there somewhere in the build where
> the bitbake command that was used to create the image is stored.  Could
> this or other data be used to synthesize an appropriate /etc/os-release
> file?
>

See the above "os-release" package.

If you need more precise build info, you may want to explore the
"image-buildinfo" class
https://docs.yoctoproject.org/dev/ref-manual/classes.html#image-buildinfo

Regards,


> Thanks,
>  -- Tim
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64683):
> https://lists.yoctoproject.org/g/yocto/message/64683
> Mute This Topic: https://lists.yoctoproject.org/mt/110903643/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000004dc2ec062cf3589b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0jeu. 30 janv. 2025 =C3=A0=C2=A020=
:48, Tim Bird via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproj=
ect.org</a> &lt;tim.bird=3D<a href=3D"mailto:sony.com@lists.yoctoproject.or=
g">sony.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:</div><div cl=
ass=3D"gmail_quote gmail_quote_container"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hello YP users,<br></blockquote><div><br></div><div>Hello,=
<br></div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
Is there any way to tell what distribution or bitbake image name was used<b=
r>
by looking at the contents of an image.<br>
<br>
I recently built a distribution based on Poky,=C2=A0 using &#39;bitbake cor=
e-image-minimal&#39;.<br>
I had hoped that I could see this recorded somewhere in the image, so I can=
 distinguish<br>
between that image and another image I sometimes use from Texas Instruments=
<br>
while running on Linux inside the image.<br>
<br>
It doesn&#39;t look like YP populates /etc/os-release, where distribution i=
nformation<br>
is normally stored.=C2=A0 Is that right?<br></blockquote><div><br></div><di=
v>I was not aware but it looks like a de-facto standard pushed by systemd</=
div><div><a href=3D"https://0pointer.de/blog/projects/os-release">https://0=
pointer.de/blog/projects/os-release</a></div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
Is there anywhere else inside the image where information about the distro<=
br>
being built is stored?<br></blockquote><div><br></div><div>/etc/os-release =
is not built/installed by default. You will have to install the &quot;os-re=
lease&quot; package to have on your image.</div><div>For exemple, here is t=
he content on a recent Poky:</div><div>root@qemux86-64:~# cat /etc/os-relea=
se <br>ID=3Dpoky<br>NAME=3D&quot;Poky (Yocto Project Reference Distro)&quot=
;<br>VERSION=3D&quot;5.1 (styhead)&quot;<br>VERSION_ID=3D5.1<br>VERSION_COD=
ENAME=3D&quot;styhead&quot;<br>PRETTY_NAME=3D&quot;Poky (Yocto Project Refe=
rence Distro) 5.1 (styhead)&quot;<br>CPE_NAME=3D&quot;cpe:/o:openembedded:p=
oky:5.1&quot;<br></div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
I&#39;m relatively inexperience with YP.=C2=A0 Is there somewhere in the bu=
ild where<br>
the bitbake command that was used to create the image is stored.=C2=A0 Coul=
d<br>
this or other data be used to synthesize an appropriate /etc/os-release fil=
e?<br></blockquote><div><br></div><div>See the above &quot;os-release&quot;=
 package.</div><div><br></div><div>If you need more precise build info, you=
 may want to explore the &quot;image-buildinfo&quot; class</div><div><a hre=
f=3D"https://docs.yoctoproject.org/dev/ref-manual/classes.html#image-buildi=
nfo">https://docs.yoctoproject.org/dev/ref-manual/classes.html#image-buildi=
nfo</a></div><div><br></div><div>Regards,<br></div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
Thanks,<br>
=C2=A0-- Tim<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64683): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64683" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64683</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110903643/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110903643/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS - Tech expert<br></font></div></div><=
/div></div>

--0000000000004dc2ec062cf3589b--

