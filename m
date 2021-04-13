Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web08.105.1618331504501001846
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 09:31:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=edg0NBzR;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: rohitbjadhav1@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id r4so4673642vsq.6
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 09:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=14c5a8iTn49BGLgLXcmvN8OdDk4330EpJlND/Di1YwM=;
        b=edg0NBzRAIUKwDdCnsL7Xz9moR2kn6oXCsdVQ6KxBU2Rae53BWh19VH5hoO97aZoH4
         oR0+h1uY5wi0cIzXBdhWPLy8iJe29tIARfpI6YPZfu5L0fJjLscpXrf3L4ukCgYQzghG
         xEubnr6brQvUIsfH/2ltzWQVvL7xqAdnefQsxcCDpmuYKvi/kOAFL+f1aAtB7E1FJFX/
         qeTbRZ60SZJE6yLpCvesNvPvqQKyGfPy5PUO/NDvpOsyUBVUve65ZW1pS1rATsRvoHp+
         pA8VRWgXsa6tC8Adb6nCnSvmfGBu2B1mrsM4EjZTYev3HTo2py2IZiAs1s6byoPd7z17
         53fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=14c5a8iTn49BGLgLXcmvN8OdDk4330EpJlND/Di1YwM=;
        b=Jz12tFQJxtlw8u28ZuknXGZmBJC3YFjbqKG/4zx9GTkylpFFyR40SmraYVeJ6Q+HRG
         SOQ8CwdYcwwJuPxdQM52+14oK/mVxIPHBMXkA9PwMxXUydm3B8xSQpVyNAl+ra+px0tO
         11wuuc2tg4o4QRPz9y4SA8mJqeUVm4DE7GTW2GmyZ3rnjQhG3iG0uQ7fhLg0bmLwGGZG
         aOfOUf58oMWa39dKnnim/9VBlA7xoHI93323z49cp631cDCk/d4SzAdysmnPg/0HPuqO
         UxWHz34ghY1myxxSGwX0iVzp8qNSBaLWDvBv7RjpIZUSasoQvjtFVwg5Ul1TpkoHGN8Z
         4fdA==
X-Gm-Message-State: AOAM533aLAtZHRpotve8iCfLStOvSdFnq7lfvS4swOUP3bHeTWzvn7Yi
	ORP0GO3dZo2xGP/Z7rY9DYYbxNOprW4qWwYc2YU=
X-Google-Smtp-Source: ABdhPJxbA5TO+sqd5EtwdRFzhFykSVz/tsQ+Wkvf25sGrkCwccW2eCGFua06GDdx+8HKyXxsF2VBd4jXIzE3pubobgk=
X-Received: by 2002:a67:7786:: with SMTP id s128mr10127664vsc.30.1618331503548;
 Tue, 13 Apr 2021 09:31:43 -0700 (PDT)
MIME-Version: 1.0
References: <1Z2R.1618308149078356804.m8K6@lists.yoctoproject.org> <c7e79329-c831-55b3-9457-d011cb97ea0f@gmail.com>
In-Reply-To: <c7e79329-c831-55b3-9457-d011cb97ea0f@gmail.com>
From: rohitbjadhav1@gmail.com
Date: Tue, 13 Apr 2021 22:01:31 +0530
Message-ID: <CAGqYRWEnvyvzJVY5pEme308fkphr6AEV+L_uXKD15W9R0zjdLA@mail.gmail.com>
Subject: Re: [yocto] need Sysvinit as system manager in Rocko Version #rocko
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000065dcf405bfdd2aba"

--00000000000065dcf405bfdd2aba
Content-Type: text/plain; charset="UTF-8"

Hi Khem Raj,
Thanks you for your valuable feedback.
I have tried with your suggestions.
but observed with following error:
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-qt5-webengine.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-qt5-demos.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-imx-erpc.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-fsl-tools-gpu-external.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES
ERROR: Failed to parse recipe:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-imx-erpc.bb
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-fsl-optee-imx.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-fsl-pulseaudio.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES
ERROR:
/home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/
packagegroup-fsl-tools-audio.bb: Please ensure that your setting of
VIRTUAL-RUNTIME_init_manager (systemd) matches the entries enabled in
DISTRO_FEATURES

Thanks and regards
Rohit J

On Tue, Apr 13, 2021 at 8:58 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 4/13/21 3:02 AM, rohitbjadhav1@gmail.com wrote:
> > I have created rootfs with Rocko yocto version.
> >
> > I need sysyvinit as system manager instead of Systemd.
> >
> > I have tried with following in local.conf
> >
> > DISTRO_FEATURES_append = " sysvinit"
>
> remove systemd from DISTRO_FEATURES as well.
>
> DISTRO_FEATURES_remove = "sytemd"
>
> >
> > VIRTUAL-RUNTIME_init_manager = "sysvinit"
> >
> > VIRTUAL-RUNTIME_initscripts = "initscripts"
> >
> > It created run-level folder like rcS and rc0.d to rc6.d. but did not
> > created inittab file in /etc .
> >
> > And after booting it rootfs boots up with systemd only
> > root@imx6ull14x14evk:~# ps -p1 | grep "init\|upstart\|systemd"
> >      1 ?        00:00:07 systemd
> > I need init as system manager . can you please guide me in this regard.
> >
> > Thank you
> >
> > Regards
> > Rohit
> >
> >
> >
> > 
> >
>

--00000000000065dcf405bfdd2aba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Khem Raj,</div><div>Thanks you for your valuable f=
eedback.</div><div>I have tried with your suggestions.</div><div>but observ=
ed with following error:</div><div>ERROR: /home/tel/imx_yocto_bsp/sources/m=
eta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a href=3D"http:/=
/packagegroup-qt5-webengine.bb">packagegroup-qt5-webengine.bb</a>: Please e=
nsure that your setting of VIRTUAL-RUNTIME_init_manager (systemd) matches t=
he entries enabled in DISTRO_FEATURES<br>ERROR: /home/tel/imx_yocto_bsp/sou=
rces/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a href=3D"=
http://packagegroup-qt5-demos.bb">packagegroup-qt5-demos.bb</a>: Please ens=
ure that your setting of VIRTUAL-RUNTIME_init_manager (systemd) matches the=
 entries enabled in DISTRO_FEATURES<br>ERROR: /home/tel/imx_yocto_bsp/sourc=
es/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a href=3D"ht=
tp://packagegroup-imx-erpc.bb">packagegroup-imx-erpc.bb</a>: Please ensure =
that your setting of VIRTUAL-RUNTIME_init_manager (systemd) matches the ent=
ries enabled in DISTRO_FEATURES<br>ERROR: /home/tel/imx_yocto_bsp/sources/m=
eta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a href=3D"http:/=
/packagegroup-fsl-tools-gpu-external.bb">packagegroup-fsl-tools-gpu-externa=
l.bb</a>: Please ensure that your setting of VIRTUAL-RUNTIME_init_manager (=
systemd) matches the entries enabled in DISTRO_FEATURES<br>ERROR: Failed to=
 parse recipe: /home/tel/imx_yocto_bsp/sources/meta-fsl-bsp-release/imx/met=
a-sdk/recipes-fsl/packagegroup/<a href=3D"http://packagegroup-imx-erpc.bb">=
packagegroup-imx-erpc.bb</a><br>ERROR: /home/tel/imx_yocto_bsp/sources/meta=
-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a href=3D"http://pa=
ckagegroup-fsl-optee-imx.bb">packagegroup-fsl-optee-imx.bb</a>: Please ensu=
re that your setting of VIRTUAL-RUNTIME_init_manager (systemd) matches the =
entries enabled in DISTRO_FEATURES<br>ERROR: /home/tel/imx_yocto_bsp/source=
s/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a href=3D"htt=
p://packagegroup-fsl-pulseaudio.bb">packagegroup-fsl-pulseaudio.bb</a>: Ple=
ase ensure that your setting of VIRTUAL-RUNTIME_init_manager (systemd) matc=
hes the entries enabled in DISTRO_FEATURES<br>ERROR: /home/tel/imx_yocto_bs=
p/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/<a hre=
f=3D"http://packagegroup-fsl-tools-audio.bb">packagegroup-fsl-tools-audio.b=
b</a>: Please ensure that your setting of VIRTUAL-RUNTIME_init_manager (sys=
temd) matches the entries enabled in DISTRO_FEATURES</div><div><br></div><d=
iv>Thanks and regards</div><div>Rohit J<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 13, 2021 at 8:=
58 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
<br>
On 4/13/21 3:02 AM, <a href=3D"mailto:rohitbjadhav1@gmail.com" target=3D"_=
blank">rohitbjadhav1@gmail.com</a> wrote:<br>
&gt; I have created rootfs with Rocko yocto version.<br>
&gt; <br>
&gt; I need sysyvinit as system manager instead of Systemd.<br>
&gt; <br>
&gt; I have tried with following in local.conf<br>
&gt; <br>
&gt; DISTRO_FEATURES_append =3D &quot; sysvinit&quot;<br>
<br>
remove systemd from DISTRO_FEATURES as well.<br>
<br>
DISTRO_FEATURES_remove =3D &quot;sytemd&quot;<br>
<br>
&gt; <br>
&gt; VIRTUAL-RUNTIME_init_manager =3D &quot;sysvinit&quot;<br>
&gt; <br>
&gt; VIRTUAL-RUNTIME_initscripts =3D &quot;initscripts&quot;<br>
&gt; <br>
&gt; It created run-level folder like rcS and rc0.d to rc6.d. but did not =
<br>
&gt; created inittab file in /etc .<br>
&gt; <br>
&gt; And after booting it rootfs boots up with systemd only<br>
&gt; root@imx6ull14x14evk:~# ps -p1 | grep &quot;init\|upstart\|systemd&qu=
ot;<br>
&gt;=C2=A0 =C2=A0=C2=A0=C2=A0 1 ?=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 00:00:07 systemd<br>
&gt; I need init as system manager . can you please guide me in this regar=
d.<br>
&gt; <br>
&gt; Thank you<br>
&gt; <br>
&gt; Regards<br>
&gt; Rohit<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>

--00000000000065dcf405bfdd2aba--
