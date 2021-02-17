Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web09.8480.1613573241999801032
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 06:47:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TTDIXJvS;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id u20so14058416iot.9
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 06:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=80iPnrXJqM9zC3hsOi8Ni8wYy5V/iciOF+nxB5vvlzE=;
        b=TTDIXJvSx6+6g2xsjL6aw6i89aVGEKNETL6AKgi4m8qng2tYZSbQaXPyL6Ew2uNAW4
         BqLcVBnO0cYZ7r7Q+u/gQEcwZf+Q+xESg6t/P9/sv/bob4VMczKACm1ygEu3/yo96RhV
         5/4fCIjeOM9geTW2omZyZXnU1yADe/pX1EVqO49kmoLOA+Y6Idhyll8rkNKG4/71deQU
         1B2+aa0HrXY9C2IzHD8ryorQdrh+ABzK22RrU5z+bKIMHV+7neq73QdrecT3JHRQW34B
         MbbWyP4k5d+un3lNT5Gi8e3u72nnJ81XsiingOsw3UrWiFjTJNs/ZkDqaO7rB+6R6wTi
         MIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=80iPnrXJqM9zC3hsOi8Ni8wYy5V/iciOF+nxB5vvlzE=;
        b=k3X5wDI4A9AhcHS00tohUlO2tSIF1aaTjH/oKnR9UTHpM1vpdBh1BsY0d8FakpTe1e
         hvv/jmdbBfKtgbKUCE6iuJrZQkSDFw87vTegAT2Q6BctofMCBAuskL2lGiPcGRIn3JQU
         q6yPWQNhRa6ZzxF4qcBDbGggQ7xUrdR/Qw3wk4jjGZKaqtY6Y2dIA3C6M9XmsQQv/2pp
         CMsAneUyShWxJj3nLbA5esPuqPIIjl6e3JgIsw5LgSuj1MAlRYn+l9uBuqyYvoArmyGz
         2q1MK15gTye0Y/5Lypa3V0Xv9BdSyvvqSUgaYzi//RoQ6Ow4AaczuFENSG/RtcEhJ6Mc
         jtvw==
X-Gm-Message-State: AOAM533qwDjYLIsdcBJoWhL2elzJ+NiRlsad9Z6pCv5FW20zjXax9rxr
	hVc5TkTdrFXA8ecj+F48dC/+u4M4XigCSZFUhVc=
X-Google-Smtp-Source: ABdhPJzHNrG8GF7lKnPOjhrhslT6h7f+n6faWzcbpbTZXKTOtlwpoc21aK9yVgXAUYPjsEivwANgfhUN6VuuAmv7LZY=
X-Received: by 2002:a05:6602:1608:: with SMTP id x8mr20970352iow.109.1613573241147;
 Wed, 17 Feb 2021 06:47:21 -0800 (PST)
MIME-Version: 1.0
References: <166309ED54D39BDA.14473@lists.yoctoproject.org>
 <CACX=-dXKrvx1R_VebcaGNd9W5Yp2XhNZp9rxG_0rS44uJ=qo8g@mail.gmail.com> <d602a58e-4990-7e56-3114-e35f5803a8d9@gmail.com>
In-Reply-To: <d602a58e-4990-7e56-3114-e35f5803a8d9@gmail.com>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Wed, 17 Feb 2021 20:17:08 +0530
Message-ID: <CACX=-dW0=Lx8iAXx4HuAM4hS9gi70hyEQpT0x7NxKWTr=qWbMA@mail.gmail.com>
Subject: Re: [yocto] Regarding Mender integration
To: robert.berger.yocto.user@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000db971c05bb894bd5"

--000000000000db971c05bb894bd5
Content-Type: text/plain; charset="UTF-8"

HI robert,

    Thank you very much for your response.

Regards,
RAVI_UPPADA

On Wed, Feb 17, 2021 at 2:21 PM Robert Berger@yocto.user <
robert.berger.yocto.user@gmail.com> wrote:

> Hi,
>
> Please see my comments in-line.
>
> On 16/02/2021 19:48, U RAVI KUMAR wrote:
> >     I have some issues while integrating the mender on the yocto
> >     project.I have included meta-mener-core,meta-mender-raspberrypi
> >     layers.And iam getting the following error:
> >
> >     ERROR: u-boot-1_2020.07-r0 do_patch: Command Error: 'quilt --quiltrc
> >
>  /home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc/quiltrc
> >     push' exited with 0  Output:
> >     Applying patch 0001-configs-rpi-enable-mender-requirements.patch
> >     patching file configs/rpi_0_w_defconfig
> >     Hunk #1 FAILED at 19.
>
> ...
>
> This looks like the patch you/mender try/tries to apply does not work
> with your u-boot version.[0]
>
> [0]
>
> https://github.com/mendersoftware/meta-mender/tree/master/meta-mender-core/recipes-bsp/u-boot
>
> Which Yocto version do you use?
>
> Which Mender version do you use?
>
> You could look into creating your own Mender integration[1] instead of
> the mender class.
>
> [1]
>
> https://docs.mender.io/system-updates-yocto-project/board-integration/bootloader-support/u-boot/manual-u-boot-integration
>
> I think the right place to ask Mender specific questions is here[2].
>
> [2] https://hub.mender.io/
>
> Regards,
>
> Robert
>
>
>

--000000000000db971c05bb894bd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>HI robert,</div><div><br></div><div>=C2=A0=C2=A0=C2=
=A0 Thank you very much for your response.</div><div><br></div><div>Regards=
,</div><div>RAVI_UPPADA<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 17, 2021 at 2:21 PM Robert Ber=
ger@yocto.user &lt;<a href=3D"mailto:robert.berger.yocto.user@gmail.com">ro=
bert.berger.yocto.user@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi,<br>
<br>
Please see my comments in-line.<br>
<br>
On 16/02/2021 19:48, U RAVI KUMAR wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0I have some issues while integrating the mender on =
the yocto<br>
&gt;=C2=A0 =C2=A0 =C2=A0project.I have included meta-mener-core,meta-mender=
-raspberrypi<br>
&gt;=C2=A0 =C2=A0 =C2=A0layers.And iam getting the following error:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: u-boot-1_2020.07-r0 do_patch: Command Error:=
 &#39;quilt --quiltrc<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/ravi_uppada/work/vm/sato/poky/build/tmp/work/=
raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc/qu=
iltrc<br>
&gt;=C2=A0 =C2=A0 =C2=A0push&#39; exited with 0 =C2=A0Output:<br>
&gt;=C2=A0 =C2=A0 =C2=A0Applying patch 0001-configs-rpi-enable-mender-requi=
rements.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0patching file configs/rpi_0_w_defconfig<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hunk #1 FAILED at 19.<br>
<br>
...<br>
<br>
This looks like the patch you/mender try/tries to apply does not work <br>
with your u-boot version.[0]<br>
<br>
[0] <br>
<a href=3D"https://github.com/mendersoftware/meta-mender/tree/master/meta-m=
ender-core/recipes-bsp/u-boot" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/mendersoftware/meta-mender/tree/master/meta-mender-core/recipes=
-bsp/u-boot</a><br>
<br>
Which Yocto version do you use?<br>
<br>
Which Mender version do you use?<br>
<br>
You could look into creating your own Mender integration[1] instead of <br>
the mender class.<br>
<br>
[1] <br>
<a href=3D"https://docs.mender.io/system-updates-yocto-project/board-integr=
ation/bootloader-support/u-boot/manual-u-boot-integration" rel=3D"noreferre=
r" target=3D"_blank">https://docs.mender.io/system-updates-yocto-project/bo=
ard-integration/bootloader-support/u-boot/manual-u-boot-integration</a><br>
<br>
I think the right place to ask Mender specific questions is here[2].<br>
<br>
[2] <a href=3D"https://hub.mender.io/" rel=3D"noreferrer" target=3D"_blank"=
>https://hub.mender.io/</a><br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
<br>
</blockquote></div>

--000000000000db971c05bb894bd5--
