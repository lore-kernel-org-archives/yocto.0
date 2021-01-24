Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web12.20861.1611495016584648943
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Jan 2021 05:30:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HIMVRYDS;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id d15so7719958qtw.12
        for <yocto@lists.yoctoproject.org>; Sun, 24 Jan 2021 05:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QcmD6nqC9IJ5m4pn5cwdjmdZDTwDQ/B1RSZHjC+yVrs=;
        b=HIMVRYDStJUeJqJ/I6J/Dk2AMvedc5/JIWrJGR5RPhnjbidNcGhfTzaCqWXYiYFm/7
         vnXcZKotAZUHtqnVzs6Tmjsxbid+0nS1LacKC8e0HckmjL/NKNetjBsx9ObVKFH0wV3C
         1dZwcfUfR7buQMTaF5wSABWFvtwucpnXr6MrEcdfF+1vxwaD54HvQX7MM8IBkpt0wt+m
         XjYRZJdRnf4I7zZ0+yOdY1gOAuHqvjqe/2JBwCfwmJuXAoV4doFCZp8piRC/Vby3cgVM
         WCTlTdkRhd41EtvqJquKB6vmhpyV7Kh7Gsdv6NgDKbF5VfIUPxOy42QKE2eduUe6t/+Z
         e1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QcmD6nqC9IJ5m4pn5cwdjmdZDTwDQ/B1RSZHjC+yVrs=;
        b=IpzznG8hGd2m35czoWwCVPSc9LncN5gYvebUL9j4dp4q2oCwWqo31zKznYynsLKrww
         kuapn2WuxgVjBre5q+gV+B2fxGB1ECVDC7Jl8Hr4KdJ0tfzGwW3HwHKw+gb1pQ3vv6Mg
         JE5cH6CNy/4wX5NJlPHSH1vUd66QebN+tPt2NSl+H/HMuLgdY33MMb4rvUkL7NajGb0p
         yCT5xUH2JitR7ve/0tV9ynvcrb0i9LIEh9RHanZSUEWOYgjE7C9ZhNiSj1U1pULRXOaH
         qCHggqXk04ip0J7DuJ8q1l8E0N/6HI6RoRewQJHG+pVi4scSfJVICl5vMvshUufEThRy
         NZxA==
X-Gm-Message-State: AOAM531shF08PavBMx1gYPNYImrk/M31F9s/rif5/IvcWqm9uSvabsH8
	ks5oPzEo+1FRAgPYuziawcUQGwmcMkumbO4xPac=
X-Google-Smtp-Source: ABdhPJz3Bk9MFGqzS6OZWRxw36aXzMswXufOEwml8c0dK/OwtAYev8mWBfq9DTJwODe1pjImnNWdB0wuH8pUUw7m5Uw=
X-Received: by 2002:ac8:725a:: with SMTP id l26mr1947618qtp.56.1611495015732;
 Sun, 24 Jan 2021 05:30:15 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nFHLZ-cycQXBgerWeyyKUf3KRP+xSEa2kP0K1zYd7=HNA@mail.gmail.com>
 <CAM9ZRVshoYvDho-Dmu2+UNorjLSyrN3t=ZYE5Uj0zit0_4mAew@mail.gmail.com> <165CDE54CF259D2E.7022@lists.yoctoproject.org>
In-Reply-To: <165CDE54CF259D2E.7022@lists.yoctoproject.org>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Sun, 24 Jan 2021 14:30:04 +0100
Message-ID: <CAEyb4nH1jqEEhRyw-wmKPg+nqAhQMDdDv6GPjKGzc_igbYqyqQ@mail.gmail.com>
Subject: Re: [yocto] Writing a BSP from downstream kernel sources
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Paul Barker <pbarker@konsulko.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f858a705b9a56bd1"

--000000000000f858a705b9a56bd1
Content-Type: text/plain; charset="UTF-8"

Just to close this: it seems like the gcc-cross-arm used by yocto
gatesgarth is too new for that specific downstream kernel (3.18.31).

The goal was to get a proper BSP package for this device for a modern
yocto, so I don't think I will try with an older version of Yocto. If I
compile an old gcc as part of a custom Yocto layer (on gatesgarth), I am
guessing that I will have issues creating a distro that runs both on RPi
and on that older device (because RPi will have a newer kernel and gcc, and
the skycontroller will use older ones). I also guess that the downstream
dts won't work with a modern kernel, and I would not know how to write one
myself for that apq8009 chip.

Hence, I'm giving up. Thanks a lot for the help :-).

On Sat, Jan 23, 2021 at 2:07 PM Jonas Vautherin via lists.yoctoproject.org
<jonas.vautherin=gmail.com@lists.yoctoproject.org> wrote:

> Thanks a lot for the answer!
>
> It seems like using `KCONFIG_MODE = "--alldefconfig"` with
> `KBUILD_DEFCONFIG = "msm8909_defconfig"` now ends up with the same kind of
> errors as when I use the defconfig from the downstream kernel [1], i.e.:
>
> ```
> | /tmp/ccz8jKgm.s: Assembler messages:
> | /tmp/ccz8jKgm.s:985: Error: .err encountered
> ```
>
> Could it be related to the tuning, e.g. I'm somehow defining a wrong
> toolchain in my machine configuration [2] and it fails to build? I was
> thinking about the tune-cortexa7.inc include, though it seems to me that
> the apq8009 is a cortexa7 [3]:
>
> > The Qualcomm Snapdragon 212 APQ8009 is an entry level SoC for Android
> based tablets and smartphones. It contains four ARM Cortex-A7 CPU cores
> (quad core)
>
> [1]:
> https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux.config
> [2]:
> https://github.com/JonasVautherin/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf#L32
> [3]:
> https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html
>
> Best,
>
> On Sat, Jan 23, 2021 at 11:06 AM Paul Barker <pbarker@konsulko.com> wrote:
>
>> On Sat, 23 Jan 2021 at 02:29, Jonas Vautherin <jonas.vautherin@gmail.com>
>> wrote:
>> >
>> > As a learning experience, I am trying to create a BSP for a device I
>> own and whose downstream kernel is published. The device in question is the
>> Parrot Skycontroller3, and the sources are available here.
>> >
>> > Let me start by sharing my issue. When I build the kernel with `bitbake
>> virtual/kernel`, it fails with errors like:
>> >
>> > ```
>> > |   AS      arch/arm/lib/backtrace.o
>> > |   AS      arch/arm/lib/bswapsdi2.o
>> > |   AS      arch/arm/lib/call_with_stack.o
>> > | /tmp/ccz8jKgm.s: Assembler messages:
>> > | /tmp/ccz8jKgm.s:985: Error: .err encountered
>> > | /tmp/ccz8jKgm.s:1033: Error: .err encountered
>> > | /tmp/ccz8jKgm.s:6812: Error: .err encountered
>> > ```
>> >
>> > My layer is available here.
>> >
>> > I created it getting inspiration from meta-raspberrypi and
>> meta-qti-bsp, which seems to have the same CPU: apq8009. According to the
>> Parrot sources, my device runs a Qualcomm apq8009/msm89090 cpu. In my repo,
>> I use as a defconfig file the linux.config that is available in the Parrot
>> sources (I copied it in my kernel recipe under `files/defconfig` and added
>> it to SRC_URI).
>> >
>> > The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=
>> msm8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =
>> "msm8909_defconfig"`, but that is failing with different errors, such as:
>> >
>> > ```
>> > error: 'VM_ARM_DMA_CONSISTENT' undeclared (first use in this function);
>> did you mean 'DMA_ATTR_NON_CONSISTENT'?
>> > ```
>> >
>> > or
>> >
>> > ```
>> > error: 'L_PTE_YOUNG' undeclared
>> > ```
>> >
>> > As a side note, their `drivers/Kconfig` seemed invalid, so I patched it.
>> >
>> > I am a bit lost now, not completely sure where my issues come from. I
>> realize that changing the defconfig has quite some impact (I get different
>> errors), and also that my machine configuration may be completely wrong (I
>> am essentially guessing from the fact that it is an apq8009/msm8909, but
>> for instance the tuning I just copied from meta-qti-bsp, which may be
>> invalid).
>> >
>> > I would be glad if I could get hints about debugging this. Again, it is
>> really a learning project: I would like to learn how to create a BSP from a
>> downstream kernel.
>>
>> I think setting `KBUILD_DEFCONFIG = "msm8909_defconfig"` is likely the
>> correct approach here. What you may be missing though is the correct
>> value for KCONFIG_MODE. By default, the supplied defconfig file is
>> copied to .config but dependencies between config options aren't
>> resolved. You need to set `KCONFIG_MODE = "--alldefconfig"` to get the
>> equivalent of `make msm8909_defconfig` to occur. See
>>
>> https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel/linux/linux-raspberrypi.inc#L19
>> for an idea of how this is done for Raspberry Pi.
>>
>> Thanks,
>>
>> --
>> Paul Barker
>> Konsulko Group
>>
>
> 
>
>

--000000000000f858a705b9a56bd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just to close this: it seems like the gcc-cross-arm used b=
y yocto gatesgarth is too new for that specific downstream kernel (3.18.31)=
.<div><br></div><div>The goal was to get a proper BSP package for this devi=
ce for a modern yocto, so I don&#39;t think I will try with an older versio=
n of Yocto. If I compile an old gcc as part of a custom Yocto layer (on gat=
esgarth), I am guessing that I will have issues creating a distro that runs=
 both on RPi and on that older device (because RPi will have a newer kernel=
 and gcc, and the skycontroller will use older ones). I also guess that the=
 downstream dts won&#39;t work with a modern kernel, and I would not know h=
ow to write one myself for that apq8009 chip.</div><div><br></div><div>Henc=
e, I&#39;m giving up. Thanks a lot for the help :-).</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 23, 2=
021 at 2:07 PM Jonas Vautherin via <a href=3D"http://lists.yoctoproject.org=
">lists.yoctoproject.org</a> &lt;jonas.vautherin=3D<a href=3D"mailto:gmail.=
com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Thanks a lot for the answer!<div><br></div><div>It seems like using `KCON=
FIG_MODE =3D &quot;--alldefconfig&quot;` with `KBUILD_DEFCONFIG =3D &quot;m=
sm8909_defconfig&quot;` now ends up with the same kind of errors as when I =
use the defconfig from the downstream kernel [1], i.e.:</div><div><br></div=
><div>```</div><div>| /tmp/ccz8jKgm.s: Assembler messages:<br>| /tmp/ccz8jK=
gm.s:985: Error: .err encountered<br></div><div>```</div><div><br></div><di=
v>Could it be related to the tuning, e.g. I&#39;m somehow defining a wrong =
toolchain in my machine configuration [2] and it fails to build? I was thin=
king about the tune-cortexa7.inc include, though it seems to me that the ap=
q8009 is a cortexa7 [3]:</div><div><br></div><div>&gt;=C2=A0The Qualcomm Sn=
apdragon 212 APQ8009 is an entry level SoC for Android based tablets and sm=
artphones. It contains four ARM Cortex-A7 CPU cores (quad core)</div><div><=
br></div><div>[1]:=C2=A0<a href=3D"https://github.com/parrot-opensource/sky=
controller3-opensource/blob/master/sources/linux-3.18.31/linux.config" targ=
et=3D"_blank">https://github.com/parrot-opensource/skycontroller3-opensourc=
e/blob/master/sources/linux-3.18.31/linux.config</a></div><div>[2]:=C2=A0<a=
 href=3D"https://github.com/JonasVautherin/meta-skycontroller3/blob/main/co=
nf/machine/skycontroller3.conf#L32" target=3D"_blank">https://github.com/Jo=
nasVautherin/meta-skycontroller3/blob/main/conf/machine/skycontroller3.conf=
#L32</a></div><div>[3]:=C2=A0<a href=3D"https://www.notebookcheck.net/Qualc=
omm-Snapdragon-212-APQ8009-SoC-Benchmarks-and-Specs.169859.0.html" target=
=3D"_blank">https://www.notebookcheck.net/Qualcomm-Snapdragon-212-APQ8009-=
SoC-Benchmarks-and-Specs.169859.0.html</a></div><div><br></div><div>Best,</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sat, Jan 23, 2021 at 11:06 AM Paul Barker &lt;<a href=3D"mailto:pbar=
ker@konsulko.com" target=3D"_blank">pbarker@konsulko.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">On Sat, 23 Jan 2021=
 at 02:29, Jonas Vautherin &lt;<a href=3D"mailto:jonas.vautherin@gmail.com"=
 target=3D"_blank">jonas.vautherin@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; As a learning experience, I am trying to create a BSP for a device I =
own and whose downstream kernel is published. The device in question is the=
 Parrot Skycontroller3, and the sources are available here.<br>
&gt;<br>
&gt; Let me start by sharing my issue. When I build the kernel with `bitba=
ke virtual/kernel`, it fails with errors like:<br>
&gt;<br>
&gt; ```<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/backtrace.o<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/bswapsdi2.o<br>
&gt; |=C2=A0 =C2=A0AS=C2=A0 =C2=A0 =C2=A0 arch/arm/lib/call_with_stack.o<b=
r>
&gt; | /tmp/ccz8jKgm.s: Assembler messages:<br>
&gt; | /tmp/ccz8jKgm.s:985: Error: .err encountered<br>
&gt; | /tmp/ccz8jKgm.s:1033: Error: .err encountered<br>
&gt; | /tmp/ccz8jKgm.s:6812: Error: .err encountered<br>
&gt; ```<br>
&gt;<br>
&gt; My layer is available here.<br>
&gt;<br>
&gt; I created it getting inspiration from meta-raspberrypi and meta-qti-b=
sp, which seems to have the same CPU: apq8009. According to the Parrot sour=
ces, my device runs a Qualcomm apq8009/msm89090 cpu. In my repo, I use as a=
 defconfig file the linux.config that is available in the Parrot sources (I=
 copied it in my kernel recipe under `files/defconfig` and added it to SRC_=
URI).<br>
&gt;<br>
&gt; The Parrot sources also refer to `LINUX_DEFAULT_CONFIG_TARGET :=3D ms=
m8909_defconfig`, so I tried to set `KBUILD_DEFCONFIG =3D &quot;msm8909_def=
config&quot;`, but that is failing with different errors, such as:<br>
&gt;<br>
&gt; ```<br>
&gt; error: &#39;VM_ARM_DMA_CONSISTENT&#39; undeclared (first use in this =
function); did you mean &#39;DMA_ATTR_NON_CONSISTENT&#39;?<br>
&gt; ```<br>
&gt;<br>
&gt; or<br>
&gt;<br>
&gt; ```<br>
&gt; error: &#39;L_PTE_YOUNG&#39; undeclared<br>
&gt; ```<br>
&gt;<br>
&gt; As a side note, their `drivers/Kconfig` seemed invalid, so I patched =
it.<br>
&gt;<br>
&gt; I am a bit lost now, not completely sure where my issues come from. I=
 realize that changing the defconfig has quite some impact (I get different=
 errors), and also that my machine configuration may be completely wrong (I=
 am essentially guessing from the fact that it is an apq8009/msm8909, but f=
or instance the tuning I just copied from meta-qti-bsp, which may be invali=
d).<br>
&gt;<br>
&gt; I would be glad if I could get hints about debugging this. Again, it =
is really a learning project: I would like to learn how to create a BSP fro=
m a downstream kernel.<br>
<br>
I think setting `KBUILD_DEFCONFIG =3D &quot;msm8909_defconfig&quot;` is li=
kely the<br>
correct approach here. What you may be missing though is the correct<br>
value for KCONFIG_MODE. By default, the supplied defconfig file is<br>
copied to .config but dependencies between config options aren&#39;t<br>
resolved. You need to set `KCONFIG_MODE =3D &quot;--alldefconfig&quot;` to=
 get the<br>
equivalent of `make msm8909_defconfig` to occur. See<br>
<a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/recipe=
s-kernel/linux/linux-raspberrypi.inc#L19" rel=3D"noreferrer" target=3D"_bla=
nk">https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-kernel=
/linux/linux-raspberrypi.inc#L19</a><br>
for an idea of how this is done for Raspberry Pi.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000f858a705b9a56bd1--
