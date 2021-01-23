Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web08.1532.1611368311650606293
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jan 2021 18:18:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pAGw4fDw;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id a7so318583qkb.13
        for <yocto@lists.yoctoproject.org>; Fri, 22 Jan 2021 18:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=tiqABa3CMjF9RcZkmD04M9OtkRs9/jWKurzqzov9XBg=;
        b=pAGw4fDwJsGox7vaO3sCjmGLuV7/HdFMiMXanqAmfciwT7lrN7W7K4NnWMn/qeSJR/
         /JTPGIgT9TxcRi5C09EejiydtX/zYqELtONSr3uNvHDHp/JXlZDaNh0XmFHDHBX0hp8Z
         ci4HbF4bUL2+IB/YpDjdfxVav5jI3xt+IYRdemEBdFNVRc2bQpgFNEob3Ge0/b5FwWCc
         E93qFrfGqvFuEFPgK0HDo8zfJHjdvkxuYc2veDqNWr1VpBgDPLqHh/bBTbcw4jbR0A+9
         uOmq1eClmMRHwbJxipN4HtNtH3PaNqoWcxa87W3stQ17Qs2Bcj31nlgQ0H9zThz2kdwX
         I6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tiqABa3CMjF9RcZkmD04M9OtkRs9/jWKurzqzov9XBg=;
        b=i+2799Cl+SjG0IRS9hhUiYufrQCiiZmT5SZ7B9EkjWKieaCTUQZerUcUOKXr9UVloO
         LpJ+qmsrX9lb2SLFWQ4SEw/GyXWnOmWLaa/5s/YupZBPuxI3LAUQQzBqrXM+R7w78doP
         uotmXFo7G1uY1TocgWncYxzfFf7EhDftERmcD/SYvYNJ2OZkK730lvh16lDaETlZ5u6W
         5PjKstyljNqxPf+Pp34mzR/te+OFdbOAsdPm+Y+bo2TaRbg8FBxMu2Zpgt5HShaHJVFB
         sTJvUCFVn3RVuMKy+UNUUquwF1XXyJHlwzv590vpZcHYLTwX2Ui8CRdeKmSMOSaLOFMY
         Acjg==
X-Gm-Message-State: AOAM532QRZdXjc9ra33v+AoUm8lYkv0dUPzkyFU1gEJrELPkSem59kgo
	+uBM2FPnDEen8EeND6HUNsSPIU3IuoYIORywIKdP+h5jLO0=
X-Google-Smtp-Source: ABdhPJwTs731cFTnGUAUfBC6nU1BAcBVt1oTRgjV1g3/7ZEP85K2rf9sg5/YNLBJQ0ADf+z5oZ/CqMScRO3AwJ5EIRY=
X-Received: by 2002:a37:7104:: with SMTP id m4mr3993760qkc.5.1611368310575;
 Fri, 22 Jan 2021 18:18:30 -0800 (PST)
MIME-Version: 1.0
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Sat, 23 Jan 2021 03:18:19 +0100
Message-ID: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
Subject: Writing a BSP from downstream kernel sources
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c1135e05b987ebee"

--000000000000c1135e05b987ebee
Content-Type: text/plain; charset="UTF-8"

As a learning experience, I am trying to create a BSP for a device I own
and whose downstream kernel is published. The device in question is the
Parrot Skycontroller3, and the sources are available here
<https://github.com/parrot-opensource/skycontroller3-opensource>.

Let me start by sharing my issue. When I build the kernel with `bitbake
virtual/kernel`, it fails with errors like:

```
|   AS      arch/arm/lib/backtrace.o
|   AS      arch/arm/lib/bswapsdi2.o
|   AS      arch/arm/lib/call_with_stack.o
| /tmp/ccz8jKgm.s: Assembler messages:
| /tmp/ccz8jKgm.s:985: Error: .err encountered
| /tmp/ccz8jKgm.s:1033: Error: .err encountered
| /tmp/ccz8jKgm.s:6812: Error: .err encountered
```

My layer is available here.
<https://github.com/JonasVautherin/meta-skycontroller3>

I created it getting inspiration from meta-raspberrypi and meta-qti-bsp
<https://github.com/mcharleb/meta-qti-bsp/blob/yocto.lnx.1.0.r10-rel/conf/machine/apq8009.conf>,
which seems to have the same CPU: apq8009. According to the Parrot sources
<https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/atom.mk#L1>,
my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a
defconfig file the linux.config
<https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.config>
that is available in the Parrot sources (I copied it in my kernel recipe
under `files/defconfig` and added it to SRC_URI).

The Parrot sources
<https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/atom.mk#L12>
also refer to `LINUX_DEFAULT_CONFIG_TARGET := msm8909_defconfig`, so I
tried to set `KBUILD_DEFCONFIG = "msm8909_defconfig"`, but that is failing
with different errors, such as:

```
error: 'VM_ARM_DMA_CONSISTENT' undeclared (first use in this function); did
you mean 'DMA_ATTR_NON_CONSISTENT'?
```

or

```
error: 'L_PTE_YOUNG' undeclared
```

As a side note, their `drivers/Kconfig` seemed invalid, so I patched it
<https://github.com/JonasVautherin/meta-skycontroller3/blob/main/recipes-kernel/linux/files/Kconfig.patch>
.

I am a bit lost now, not completely sure where my issues come from. I
realize that changing the defconfig has quite some impact (I get different
errors), and also that my machine configuration
<https://github.com/JonasVautherin/meta-skycontroller3/tree/main/conf/machine>
may be completely wrong (I am essentially guessing from the fact that it is
an apq8009/msm8909, but for instance the tuning I just copied from
meta-qti-bsp, which may be invalid).

I would be glad if I could get hints about debugging this. Again, it is
really a learning project: I would like to learn how to create a BSP from a
downstream kernel.

Best,

--000000000000c1135e05b987ebee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As a learning experience, I am trying to create a BSP=
 for a device I own and whose downstream kernel is published. The device in=
 question is the Parrot Skycontroller3, and the sources are available <a hr=
ef=3D"https://github.com/parrot-opensource/skycontroller3-opensource">here<=
/a>.</div><div><br></div><div>Let me start by sharing my issue. When I buil=
d the kernel with `bitbake virtual/kernel`, it fails with errors like:</div=
><div><br></div><div>```<div>| =C2=A0 AS =C2=A0 =C2=A0 =C2=A0arch/arm/lib/b=
acktrace.o<br>| =C2=A0 AS =C2=A0 =C2=A0 =C2=A0arch/arm/lib/bswapsdi2.o<br>|=
 =C2=A0 AS =C2=A0 =C2=A0 =C2=A0arch/arm/lib/call_with_stack.o<br>| /tmp/ccz=
8jKgm.s: Assembler messages:<br>| /tmp/ccz8jKgm.s:985: Error: .err encounte=
red<br>| /tmp/ccz8jKgm.s:1033: Error: .err encountered<br>| /tmp/ccz8jKgm.s=
:6812: Error: .err encountered<br></div><div>```</div></div><div><br></div>=
<div><a href=3D"https://github.com/JonasVautherin/meta-skycontroller3">My l=
ayer is available here.</a></div><div><br></div><div>I created it getting i=
nspiration from meta-raspberrypi and <a href=3D"https://github.com/mcharleb=
/meta-qti-bsp/blob/yocto.lnx.1.0.r10-rel/conf/machine/apq8009.conf">meta-qt=
i-bsp</a>, which seems to have the same CPU: apq8009. According to the Parr=
ot=C2=A0<a href=3D"https://github.com/parrot-opensource/skycontroller3-open=
source/blob/master/sources/linux-3.18.31/atom.mk#L1">sources</a>, my device=
 runs a=C2=A0Qualcomm apq8009/msm89090 cpu. In my repo, I use as a defconfi=
g file the <a href=3D"https://github.com/parrot-opensource/skycontroller3-o=
pensource/blob/master/sources/linux-3.18.31/linux.config">linux.config</a> =
that is available in the Parrot sources (I copied it in my kernel recipe un=
der `files/defconfig` and added it to SRC_URI).</div><div><br></div><div>Th=
e <a href=3D"https://github.com/parrot-opensource/skycontroller3-opensource=
/blob/master/sources/linux-3.18.31/atom.mk#L12">Parrot sources</a> also=C2=
=A0refer to `LINUX_DEFAULT_CONFIG_TARGET :=3D msm8909_defconfig`, so I trie=
d to set `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;`, but that is =
failing with different errors, such as:</div><div><br></div><div>```</div><=
div>error: &#39;VM_ARM_DMA_CONSISTENT&#39; undeclared (first use in this fu=
nction); did you mean &#39;DMA_ATTR_NON_CONSISTENT&#39;?<br></div><div>```<=
/div><div><br></div><div>or</div><div><br></div><div>```</div><div>error: &=
#39;L_PTE_YOUNG&#39; undeclared<br></div><div>```</div><div><br></div><div>=
As a side note, their `drivers/Kconfig` seemed invalid, so I <a href=3D"htt=
ps://github.com/JonasVautherin/meta-skycontroller3/blob/main/recipes-kernel=
/linux/files/Kconfig.patch">patched it</a>.</div><div><br></div><div>I am a=
 bit lost now, not completely sure where my issues come from. I realize tha=
t changing the defconfig has quite some impact (I get different errors), an=
d also that my <a href=3D"https://github.com/JonasVautherin/meta-skycontrol=
ler3/tree/main/conf/machine">machine configuration</a> may be completely wr=
ong (I am essentially guessing from the fact that it is an apq8009/msm8909,=
 but for instance the tuning I just copied from meta-qti-bsp, which may be =
invalid).</div><div><br></div><div>I would be glad if I could get hints abo=
ut debugging this. Again, it is really a learning project: I would like to =
learn how to create a BSP from a downstream kernel.</div><div><br></div><di=
v>Best,</div></div>

--000000000000c1135e05b987ebee--
