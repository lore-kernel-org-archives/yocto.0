Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web11.3205.1588418800540678400
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 04:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vaec1FK9;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id g2so7910247vsb.4
        for <yocto@lists.yoctoproject.org>; Sat, 02 May 2020 04:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ncRWslTZf0r4BpzYce8jEJ3J2xs+UpOWXzPv6iLBhMQ=;
        b=Vaec1FK9NHFN/dY/nJm7OKui4hSpRwb7zCB1pd/m1OaUXYHgsUYH1NcBevxXcKaJHI
         NwOxxhwtBKBU8PzO0Nf/JAIYofVfQJwxlixkWxbSn9BpdWwGvlT5QHCMZI07hxlWVp6a
         eh5JWzrresswP/Tf8IzZIWfriYSANAAsFEi8U13Wf4BLr+T1I1ux1ROwjNOvwVTKeNQT
         njMB+5/+wUVPqy0qC65UHAcXj4oHUsyZQdnjCuw+/I740K8KyIZ9AkMIn6ct1Mkz/tV8
         I4hMrat623WDuNy9Jyh94LQQIDPlL3jv7hBT5aX18L1BsGZ6h84zXVsGBA0GpVpV+E4f
         AaQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ncRWslTZf0r4BpzYce8jEJ3J2xs+UpOWXzPv6iLBhMQ=;
        b=fFCl+aT9HThRscspDXvwwq7FtvbdRdlqVCqonaLyLJvg9Dw1g4nPL3zllIqcaOGgMK
         S+/GnG1pgUvirycz9CvWXeFjZflIKnXx6Bxx6876zfjTfobRNhFw8pGPAGZegMzCI5nE
         4s9KzLaEkfx/bWm1S35N5GeUY+oKM44v7nNhRMXJ54O6GRGGUDd/6s3+rAptgSE5P5VT
         k/lRo1YhFWVoEqXWzTZ9QwmQpUEsTJO5brmkrzpxWSKkZ7tcs2Ez0B12LymyKV2jKfpb
         GdFFlxitVutO/kiG5R66jbjnASCTGJEau/QM9a7BvkiquG3A4URy4/fjqxagaRpAueiC
         xmQQ==
X-Gm-Message-State: AGi0PuY7J7r7rSyLVkJa3Q1lKaswaEG2aMplLIzcx/2IQlm/8W6DuSOX
	aBWkshRZNQSt4wZ86b4gZgT48pibSmYV60miE0WgqU0u
X-Google-Smtp-Source: APiQypJIdiQ4cnrQvZ9nJizQby86ozcSBMfb6ztkY/s2JbXphXDl2vT/RovyTn45yGY2Wg6Kn2YyJJISeXnCSLHYTns=
X-Received: by 2002:a67:b64c:: with SMTP id e12mr5785511vsm.94.1588418799519;
 Sat, 02 May 2020 04:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005020711040.7119@localhost.localdomain> <CANNYZj9fR8ZktLnUXVZinB8cY4F3KmQ3fwL6wC1yxmdXH3NvrQ@mail.gmail.com>
In-Reply-To: <CANNYZj9fR8ZktLnUXVZinB8cY4F3KmQ3fwL6wC1yxmdXH3NvrQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 2 May 2020 13:26:27 +0200
Message-ID: <CANNYZj96NCM9Y22MPZ2jiUPj9OaWci49cD8H9XDv7MkOEQs1Gg@mail.gmail.com>
Subject: Re: [yocto] what is the current state of YP supported architectures?
To: yocto@lists.yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004cce5e05a4a892bc"

--0000000000004cce5e05a4a892bc
Content-Type: text/plain; charset="UTF-8"

Oh, one more thing, most of those 3rd party BSP layers can be found in the
layer index:
http://layers.openembedded.org/layerindex/branch/master/layers/

Alex

On Sat, 2 May 2020 at 13:23, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> There is a difference between supported target architectures, and
> supported target machines; it's easier to talk about the latter.
>
> Oe-core layer directly supports QEMU targets (which are *not* suitable for
> any physical HW):
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine
>
> Poky distro additionally supports beaglebone, edgerouter and 'generic' x86
> (which basically works but is far inferior to meta-intel support):
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/conf/machine
> The autobuilder checks that they build, but does not check that they work
> on actual HW.
>
> On the Yocto project Autobuilder additionally machines defined by
> meta-intel are tested, again without booting on real HW:
> https://git.yoctoproject.org/cgit.cgi/meta-intel/tree/conf/machine
>
> Everything else is provided by 3rd party vendor or community layers, with
> *wildly* varying levels of quality and support.
>
> Alex
>
>
> On Sat, 2 May 2020 at 13:14, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
>
>>
>>   first, i realize PPC is still supported, despite the official
>> dropping of reference target MPC8315-RDB. also aware of meta-riscv
>> layer:
>>
>>   https://github.com/riscv
>>
>> despite not having a reference board.
>>
>>   is there somewhere to point people when they ask about the state of
>> the world WRT supported architectures?
>>
>> rday
>> 
>>
>

--0000000000004cce5e05a4a892bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh, one more thing, most of those 3rd party BSP layer=
s can be found in the layer index:</div><div><a href=3D"http://layers.opene=
mbedded.org/layerindex/branch/master/layers/">http://layers.openembedded.or=
g/layerindex/branch/master/layers/</a></div><div><br></div><div>Alex<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Sat, 2 May 2020 at 13:23, Alexander Kanavin &lt;<a href=3D"mailto:ale=
x.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>There is a=
 difference between supported target architectures, and supported target ma=
chines; it&#39;s easier to talk about the latter.<br></div><div><br></div><=
div>Oe-core layer directly supports QEMU targets (which are *not* suitable =
for any physical HW):</div><div><a href=3D"http://git.yoctoproject.org/cgit=
/cgit.cgi/poky/tree/meta/conf/machine" target=3D"_blank">http://git.yoctopr=
oject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine</a></div><div><br></div=
><div>Poky distro additionally supports beaglebone, edgerouter and &#39;gen=
eric&#39; x86 (which basically works but is far inferior to meta-intel supp=
ort):</div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/t=
ree/meta-yocto-bsp/conf/machine" target=3D"_blank">http://git.yoctoproject.=
org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/conf/machine</a></div><div>The a=
utobuilder checks that they build, but does not check that they work on act=
ual HW.<br></div><div><br></div><div>On the Yocto project Autobuilder addit=
ionally machines defined by meta-intel are tested, again without booting on=
 real HW:</div><div><a href=3D"https://git.yoctoproject.org/cgit.cgi/meta-i=
ntel/tree/conf/machine" target=3D"_blank">https://git.yoctoproject.org/cgit=
.cgi/meta-intel/tree/conf/machine</a></div><div><br></div><div>Everything e=
lse is provided by 3rd party vendor or community layers, with *wildly* vary=
ing levels of quality and support.</div><div><br></div><div>Alex<br></div><=
div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, 2 May 2020 at 13:14, Robert P. J. Day &lt;<a href=3D"mailto=
:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 first, i realize PPC is still supported, despite the official<br>
dropping of reference target MPC8315-RDB. also aware of meta-riscv<br>
layer:<br>
<br>
=C2=A0 <a href=3D"https://github.com/riscv" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/riscv</a><br>
<br>
despite not having a reference board.<br>
<br>
=C2=A0 is there somewhere to point people when they ask about the state of=
<br>
the world WRT supported architectures?<br>
<br>
rday<br>
<br>
</blockquote></div></div>
</blockquote></div>

--0000000000004cce5e05a4a892bc--
