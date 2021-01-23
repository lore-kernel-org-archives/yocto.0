Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web11.4706.1611396413594643547
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Jan 2021 02:06:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ufcDf/fu;
 spf=pass (domain: konsulko.com, ip: 209.85.210.44, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f44.google.com with SMTP id 36so7705648otp.2
        for <yocto@lists.yoctoproject.org>; Sat, 23 Jan 2021 02:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=v/DIaOOtjLXzPeNlMFw9KgJz9Kb4YGAgwhKuIylIs7E=;
        b=ufcDf/fuO2zteArgFhhxumnJXyhi8YBDuvZk/L3DPYsruLZCKT4oU/LqNtqsMFCOew
         mRMgeOWXoUbqLvH2XxmwvdUqGg/jm2htAwvV0K0zvt7AZ5VX+ggVYL8m6ZhAS1Vnl4R9
         EmrHAMlGxUm+7VhlS+gxv7uMkW0dCYrXP2p4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=v/DIaOOtjLXzPeNlMFw9KgJz9Kb4YGAgwhKuIylIs7E=;
        b=isDKg8b8ISGv0dDnHlPvfOQXhCy99ujPUAe8O9JiZ5UPgeaka/G96ZjFLSEOmyTnbi
         PlqC73khZ8/eF5ehV3S0FNMj+Xzfs8wWEzEApWRchA/ZvrmkgNdh3OU/LosT8M0aBYlz
         BEH4syVK8zCqqY1+z4AHS72Zt72KPMPNUEom82YqnQ4H8GPsQnwhM+QsawppNxvvbOSv
         0DD7D4nVlP4FMxOCMHMfR3625461EkkkMw06Mu8gkAj3nraC/aWLFr/i/xZKM4DwYhPf
         cGTswvweaCPUCVTHbR35KUaqAqknLCDK/Fy+u5912sOiPffbC+pbUkq/J9Ef7htFsgAx
         JBeA==
X-Gm-Message-State: AOAM533bIe6TVb5bBCk0pyUgZi+dgeVNdf/XCHfVISC4qnLU6jbsI175
	dmdbn0r7fpUZV5YkgJpYO9YBIJ0AT6oblb/NfDZXoQ==
X-Google-Smtp-Source: ABdhPJy4W7ixL5DoDFguxwkzWNaFXKEzoa76lNNuvvOwpzKbHCZRpFqBWUSzb6hZch+qXF238MpWwYpIzIVcGTnlQvw=
X-Received: by 2002:a9d:12e3:: with SMTP id g90mr6088449otg.92.1611396412827;
 Sat, 23 Jan 2021 02:06:52 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
In-Reply-To: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Sat, 23 Jan 2021 10:06:42 +0000
Message-ID: <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com>
Subject: Re: [yocto] Writing a BSP from downstream kernel sources
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin <jonas.vautherin@gmail.com> w=
rote:
>
> As a learning experience, I am trying to create a BSP for a device I own =
and whose downstream kernel is published. The device in question is the Par=
rot Skycontroller3, and the sources are available here.
>
> Let me start by sharing my issue. When I build the kernel with `bitbake v=
irtual/kernel`, it fails with errors like:
>
> ```
> |   AS      arch/arm/lib/backtrace.o
> |   AS      arch/arm/lib/bswapsdi2.o
> |   AS      arch/arm/lib/call_with_stack.o
> | /tmp/ccz8jKgm.s: Assembler messages:
> | /tmp/ccz8jKgm.s:985: Error: .err encountered
> | /tmp/ccz8jKgm.s:1033: Error: .err encountered
> | /tmp/ccz8jKgm.s:6812: Error: .err encountered
> ```
>
> My layer is available here.
>
> I created it getting inspiration from meta-raspberrypi and meta-qti-bsp, =
which seems to have the same CPU: apq8009. According to the Parrot sources,=
 my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a def=
config file the linux.config that is available in the Parrot sources (I cop=
ied it in my kernel recipe under `files/defconfig` and added it to SRC_URI)=
.
>
> The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=3D msm890=
9_defconfig`, so I tried to set `KBUILD_DEFCONFIG =3D "msm8909_defconfig"`,=
 but that is failing with different errors, such as:
>
> ```
> error: 'VM_ARM_DMA_CONSISTENT' undeclared (first use in this function); d=
id you mean 'DMA_ATTR_NON_CONSISTENT'?
> ```
>
> or
>
> ```
> error: 'L_PTE_YOUNG' undeclared
> ```
>
> As a side note, their `drivers/Kconfig` seemed invalid, so I patched it.
>
> I am a bit lost now, not completely sure where my issues come from. I rea=
lize that changing the defconfig has quite some impact (I get different err=
ors), and also that my machine configuration may be completely wrong (I am =
essentially guessing from the fact that it is an apq8009/msm8909, but for i=
nstance the tuning I just copied from meta-qti-bsp, which may be invalid).
>
> I would be glad if I could get hints about debugging this. Again, it is r=
eally a learning project: I would like to learn how to create a BSP from a =
downstream kernel.

I think setting `KBUILD_DEFCONFIG =3D "msm8909_defconfig"` is likely the
correct approach here. What you may be missing though is the correct
value for KCONFIG_MODE. By default, the supplied defconfig file is
copied to .config but dependencies between config options aren't
resolved. You need to set `KCONFIG_MODE =3D "--alldefconfig"` to get the
equivalent of `make msm8909_defconfig` to occur. See
https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/lin=
ux/linux-raspberrypi.inc#L19
for an idea of how this is done for Raspberry Pi.

Thanks,

--=20
Paul Barker
Konsulko Group
