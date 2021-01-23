Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.6132.1611407222146641865
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Jan 2021 05:07:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JismHD3Q;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id s6so4040743qvn.6
        for <yocto@lists.yoctoproject.org>; Sat, 23 Jan 2021 05:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3/HjVTG78lLMyHvM7FFSObf6zNkPFxDXVsMMsyYX9T0=;
        b=JismHD3QBkcJxjtu+s1Q+72lparaAuL45DX/baEJwlU4OFheZl62LV5l78kH1X3vCD
         224LHpic67Kb5Xq24mTHoAIzNTLwED+Pf6iHXlsGuAcHK/OUoPA+iNSvYaIWOkSwgFBQ
         VObDJYtC9r1ebiyxXxTeXAfl8TSATKzaGzgSzn+1E8AWNI/BOc+ZM03eqhF6OCyg6rTD
         QpTxLQr+Zi+l9HNLMCLF8c2Yuw5th3JRvEYhXR1ASrGR60f6rwLs3gLNjW9DNB0LOXx9
         Ot+8SXzS/yzs3VA7igFi3SaqhPPIZxZWt6XMw34hVcVL+cweSAdfDrZRn7MBCfS5Sze4
         noSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3/HjVTG78lLMyHvM7FFSObf6zNkPFxDXVsMMsyYX9T0=;
        b=VY/RYlnZd62NZkzIHQl5I/AkKV3L/Nl4SOyuYabmCFZA9L+8t9hu5wiV5mbiWBpqCe
         FgEWs2sqPgVW2/p8+moZ9dpQ6Ajo/bo5NRIHZyYlNn1RygFe0UF9SjjfExQ/0t4Kixc7
         jvDEs2UbSd+8HM54h0ugkqlLHT8MRZZzyfSDssEJM9rfBFNQwzyUkuPKEy309GYH0G45
         7YnO/C02RTCze7RiEjohJMfr17tp94QAHK+n5wVwh0uto3dG6xcwwLtQrviNMb4czGlT
         wjmfgU0KsYxpVhv2JNyfdr2/OAPYMm55nBlR0NWowthAMpr7JTlK611KNfntAEykExwH
         QKOQ==
X-Gm-Message-State: AOAM533gEo4Az5iWiM9xgMymrJGgrR7lKHT3GS4UgKOLdvLJvk+1VaWR
	TEmK2cZTjSfoedGuGTc05f+/t0uyIjZMhECRoc8=
X-Google-Smtp-Source: ABdhPJwxYI0oKjfgqLass+EFu2zpERxT2VSsp05VSKtMOHo8nS3fz1nWLvnQyLBUH2yjJ1wQUaFQrrRJyYUgyZpjyc4=
X-Received: by 2002:a0c:dc13:: with SMTP id s19mr814690qvk.26.1611407221210;
 Sat, 23 Jan 2021 05:07:01 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
 <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com>
In-Reply-To: <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Sat, 23 Jan 2021 14:06:50 +0100
Message-ID: <CAEyb4nGOYqwLBhHO-nrxAxr6arD+Y7QRYzoLTh8U4OtRxjraVQ@mail.gmail.com>
Subject: Re: [yocto] Writing a BSP from downstream kernel sources
To: Paul Barker <pbarker@konsulko.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000023fdd05b990fb79"

--000000000000023fdd05b990fb79
Content-Type: text/plain; charset="UTF-8"

Thanks a lot for the answer!

It seems like using `KCONFIG_MODE = "--alldefconfig"` with
`KBUILD_DEFCONFIG = "msm8909_defconfig"` now ends up with the same kind of
errors as when I use the defconfig from the downstream kernel [1], i.e.:

```
| /tmp/ccz8jKgm.s: Assembler messages:
| /tmp/ccz8jKgm.s:985: Error: .err encountered
```

Could it be related to the tuning, e.g. I'm somehow defining a wrong
toolchain in my machine configuration [2] and it fails to build? I was
thinking about the tune-cortexa7.inc include, though it seems to me that
the apq8009 is a cortexa7 [3]:

> The Qualcomm Snapdragon 212 APQ8009 is an entry level SoC for Android
based tablets and smartphones. It contains four ARM Cortex-A7 CPU cores
(quad core)

[1]:
https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.config
[2]:
https://github.com/JonasVautherin/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32
[3]:
https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html

Best,

On Sat, Jan 23, 2021 at 11:06 AM Paul Barker <pbarker@konsulko.com> wrote:

> On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin <jonas.vautherin@gmail.com>
> wrote:
> >
> > As a learning experience, I am trying to create a BSP for a device I own
> and whose downstream kernel is published. The device in question is the
> Parrot Skycontroller3, and the sources are available here.
> >
> > Let me start by sharing my issue. When I build the kernel with `bitbake
> virtual/kernel`, it fails with errors like:
> >
> > ```
> > |   AS      arch/arm/lib/backtrace.o
> > |   AS      arch/arm/lib/bswapsdi2.o
> > |   AS      arch/arm/lib/call_with_stack.o
> > | /tmp/ccz8jKgm.s: Assembler messages:
> > | /tmp/ccz8jKgm.s:985: Error: .err encountered
> > | /tmp/ccz8jKgm.s:1033: Error: .err encountered
> > | /tmp/ccz8jKgm.s:6812: Error: .err encountered
> > ```
> >
> > My layer is available here.
> >
> > I created it getting inspiration from meta-raspberrypi and meta-qti-bsp,
> which seems to have the same CPU: apq8009. According to the Parrot sources,
> my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a
> defconfig file the linux.config that is available in the Parrot sources (I
> copied it in my kernel recipe under `files/defconfig` and added it to
> SRC_URI).
> >
> > The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=
> msm8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =
> "msm8909_defconfig"`, but that is failing with different errors, such as:
> >
> > ```
> > error: 'VM_ARM_DMA_CONSISTENT' undeclared (first use in this function);
> did you mean 'DMA_ATTR_NON_CONSISTENT'?
> > ```
> >
> > or
> >
> > ```
> > error: 'L_PTE_YOUNG' undeclared
> > ```
> >
> > As a side note, their `drivers/Kconfig` seemed invalid, so I patched it.
> >
> > I am a bit lost now, not completely sure where my issues come from. I
> realize that changing the defconfig has quite some impact (I get different
> errors), and also that my machine configuration may be completely wrong (I
> am essentially guessing from the fact that it is an apq8009/msm8909, but
> for instance the tuning I just copied from meta-qti-bsp, which may be
> invalid).
> >
> > I would be glad if I could get hints about debugging this. Again, it is
> really a learning project: I would like to learn how to create a BSP from a
> downstream kernel.
>
> I think setting `KBUILD_DEFCONFIG = "msm8909_defconfig"` is likely the
> correct approach here. What you may be missing though is the correct
> value for KCONFIG_MODE. By default, the supplied defconfig file is
> copied to .config but dependencies between config options aren't
> resolved. You need to set `KCONFIG_MODE = "--alldefconfig"` to get the
> equivalent of `make msm8909_defconfig` to occur. See
>
> https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/linux/linux-raspberrypi.inc#L19
> for an idea of how this is done for Raspberry Pi.
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>

--000000000000023fdd05b990fb79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot for the answer!<div><br></div><div>It seems l=
ike using `KCONFIG_MODE =3D &quot;--alldefconfig&quot;` with `KBUILD_DEFCON=
FIG =3D &quot;msm8909_defconfig&quot;` now ends up with the same kind of er=
rors as when I use the defconfig from the downstream kernel [1], i.e.:</div=
><div><br></div><div>```</div><div>| /tmp/ccz8jKgm.s: Assembler messages:<b=
r>| /tmp/ccz8jKgm.s:985: Error: .err encountered<br></div><div>```</div><di=
v><br></div><div>Could it be related to the tuning, e.g. I&#39;m somehow de=
fining a wrong toolchain in my machine configuration [2] and it fails to bu=
ild? I was thinking about the tune-cortexa7.inc include, though it seems to=
 me that the apq8009 is a cortexa7 [3]:</div><div><br></div><div>&gt;=C2=A0=
The Qualcomm Snapdragon 212 APQ8009 is an entry level SoC for Android based=
 tablets and smartphones. It contains four ARM Cortex-A7 CPU cores (quad co=
re)</div><div><br></div><div>[1]:=C2=A0<a href=3D"https://github.com/parrot=
-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/lin=
ux.config">https://github.com/parrot-opensource/skycontroller3-opensource/b=
lob/master/sources/linux-3.18.31/linux.config</a></div><div>[2]:=C2=A0<a hr=
ef=3D"https://github.com/JonasVautherin/meta-skycontroller3/blob/main/conf/=
machine/skycontroller3.conf#L32">https://github.com/JonasVautherin/meta-sky=
controller3/blob/main/conf/machine/skycontroller3.conf#L32</a></div><div>[3=
]:=C2=A0<a href=3D"https://www.notebookcheck.net/Qualcomm-Snapdragon-212-AP=
Q8009-SoC-Benchmarks-and-Specs.169859.0.html">https://www.notebookcheck.net=
/Qualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html</a>=
</div><div><br></div><div>Best,</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 23, 2021 at 11:06 AM Paul =
Barker &lt;<a href=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On S=
at, 23 Jan 2021 at 02:29, Jonas Vautherin &lt;<a href=3D"mailto:jonas.vauth=
erin@gmail.com" target=3D"_blank">jonas.vautherin@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; As a learning experience, I am trying to create a BSP for a device I o=
wn and whose downstream kernel is published. The device in question is the =
Parrot Skycontroller3, and the sources are available here.<br>
&gt;<br>
&gt; Let me start by sharing my issue. When I build the kernel with `bitbak=
e virtual/kernel`, it fails with errors like:<br>
&gt;<br>
&gt; ```<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/backtrace.o<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/bswapsdi2.o<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/call_with_stack.o<br=
>
&gt; | /tmp/ccz8jKgm.s: Assembler messages:<br>
&gt; | /tmp/ccz8jKgm.s:985: Error: .err encountered<br>
&gt; | /tmp/ccz8jKgm.s:1033: Error: .err encountered<br>
&gt; | /tmp/ccz8jKgm.s:6812: Error: .err encountered<br>
&gt; ```<br>
&gt;<br>
&gt; My layer is available here.<br>
&gt;<br>
&gt; I created it getting inspiration from meta-raspberrypi and meta-qti-bs=
p, which seems to have the same CPU: apq8009. According to the Parrot sourc=
es, my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a =
defconfig file the linux.config that is available in the Parrot sources (I =
copied it in my kernel recipe under `files/defconfig` and added it to SRC_U=
RI).<br>
&gt;<br>
&gt; The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=3D msm=
8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =3D &quot;msm8909_defc=
onfig&quot;`, but that is failing with different errors, such as:<br>
&gt;<br>
&gt; ```<br>
&gt; error: &#39;VM_ARM_DMA_CONSISTENT&#39; undeclared (first use in this f=
unction); did you mean &#39;DMA_ATTR_NON_CONSISTENT&#39;?<br>
&gt; ```<br>
&gt;<br>
&gt; or<br>
&gt;<br>
&gt; ```<br>
&gt; error: &#39;L_PTE_YOUNG&#39; undeclared<br>
&gt; ```<br>
&gt;<br>
&gt; As a side note, their `drivers/Kconfig` seemed invalid, so I patched i=
t.<br>
&gt;<br>
&gt; I am a bit lost now, not completely sure where my issues come from. I =
realize that changing the defconfig has quite some impact (I get different =
errors), and also that my machine configuration may be completely wrong (I =
am essentially guessing from the fact that it is an apq8009/msm8909, but fo=
r instance the tuning I just copied from meta-qti-bsp, which may be invalid=
).<br>
&gt;<br>
&gt; I would be glad if I could get hints about debugging this. Again, it i=
s really a learning project: I would like to learn how to create a BSP from=
 a downstream kernel.<br>
<br>
I think setting `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;` is lik=
ely the<br>
correct approach here. What you may be missing though is the correct<br>
value for KCONFIG_MODE. By default, the supplied defconfig file is<br>
copied to .config but dependencies between config options aren&#39;t<br>
resolved. You need to set `KCONFIG_MODE =3D &quot;--alldefconfig&quot;` to =
get the<br>
equivalent of `make msm8909_defconfig` to occur. See<br>
<a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/recipes=
-kernel/linux/linux-raspberrypi.inc#L19" rel=3D"noreferrer" target=3D"_blan=
k">https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/=
linux/linux-raspberrypi.inc#L19</a><br>
for an idea of how this is done for Raspberry Pi.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--000000000000023fdd05b990fb79--
