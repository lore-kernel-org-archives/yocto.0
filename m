Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web12.6640.1582717410226775831
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 03:43:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L46+kXdw;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: inigovicentewalino@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id p14so3321876edy.13
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 03:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UoB0pRDfFdwDXoemmJt4kCgjRI7BBYVM6HrgZlDcbMo=;
        b=L46+kXdw2WOn1bBoWizBg8BewZQIF3yp6IacgPxsuJPWZJPmDFgBq6g/aUHzEsos0Y
         fOP95RCnigGYg7/OMgT5zACAyUaurhM0lo56i2aQFCO0t84VGXLhHtNy/UMGuPmqIxan
         4o36jYCmzFTtPU1gXyT3k0t05oAk5y+31OvqD6xz/6qak216PhZ7ipC/QSTnCI4lE0LS
         b/VNEbKEPoQBpO0BBz3G417aqDm0a24UrJQPAt81bwxtSwt2E5NEZbjqUz0aviMRMqFC
         P62sI+dXliavxIPWbcPcpKCUSRCAbNajaOWOFz6cx6D+pk8+obSL1WpACwn8m0raEI9o
         62Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UoB0pRDfFdwDXoemmJt4kCgjRI7BBYVM6HrgZlDcbMo=;
        b=a3FAAMN1/ITJx2oLHMZPcdQ22jc2kEZVUkq4LONjQG7u3CAdLFJmFhBCbqUlFMu9l0
         pqKXVwfFqefdhfr7U3kpZJDFsexnuRufwiaoB4tNGuPjeQBBLCLntB1jrRRhxPKpGIOR
         t6IjAG3fleiaKBSAYFM8e6Lpa3zVtO4q5/CqWf0nWbjCcPxwBvZRScJ9ERvfj9tee2FL
         Bl7RunkJx1FzN9Ijelt3GwXdZYeD4tzM7CepzGE4O4/EMTgsFHaLRD8iwKkgD5DdaQ9L
         9u1AGIfPdhRtDLSXfHWTuRSEN1IzyIU8Fo4GyrmF6qZUF7+3WL/vT3yihrxnqMI50ZQN
         sBwg==
X-Gm-Message-State: APjAAAXOi7vC5mn8gIbUdeztiN1Bp4mLEUBJweIf3BirzeEdEv+6McwI
	kv4myO/Xk+XnpqVZW7LUfJhVOFnrHn/A2q4aaT0=
X-Google-Smtp-Source: APXvYqyLYmshCiHbla8FHT1bJkVio4bnKb0EX37WG1Dqxll1nlZS8tLQYdPdLRt2eSwHSiuwHQDUtcBp/lAx55E7fxo=
X-Received: by 2002:a50:ee14:: with SMTP id g20mr4358092eds.10.1582717408476;
 Wed, 26 Feb 2020 03:43:28 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
 <395d1171-29eb-6225-883f-ca6bc4d0b365@intel.com> <CAGAf8LzDzE=BPszNG_qM+n-X1trAkDr3sNX=R5X-P-4w4b1F8w@mail.gmail.com>
In-Reply-To: <CAGAf8LzDzE=BPszNG_qM+n-X1trAkDr3sNX=R5X-P-4w4b1F8w@mail.gmail.com>
From: =?UTF-8?B?ScOxaWdvIFZpY2VudGUgV2FsacOxbw==?= <inigovicentewalino@gmail.com>
Date: Wed, 26 Feb 2020 12:43:24 +0100
Message-ID: <CA+ABUwjvE4GoPaoBFGuPox=-0HnH2eLrkWN+7qS++R3bPpV0kA@mail.gmail.com>
Subject: Re: [yocto] Bitbake error
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, anuj.mittal@intel.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e98122059f791c0b"

--000000000000e98122059f791c0b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have already solved it, I think it was some package that I have removed
from these: dev-pkgs doc-pkgs package-management tools-profile.
I used the master branch and get ssh. Do you know how I can enable ssh or
how it connects to Windows? There has to be a ssh.service right?

Thanks
I=C3=B1igo

El mi=C3=A9., 26 feb. 2020 a las 8:39, Zoran Stojsavljevic (<
zoran.stojsavljevic@gmail.com>) escribi=C3=B3:

> I see... So you say the host distro must be as minimum at Ubuntu 18.10?
>
> Z
>
>
> On Wed, Feb 26, 2020 at 6:08 AM Anuj Mittal <anuj.mittal@intel.com> wrot=
e:
>
>>
>>
>> On 21-Feb-20 05:16 PM, I=C3=B1igo Vicente Wali=C3=B1o wrote:
>> > Hi,
>> >
>> > I'm trying to build yocto project ZEUS for imx8m mini.
>> >
>> > I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-serve=
r-openssh
>> > tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management
>> > tools-profile=E2=80=9D in my build/conf/local.con file.
>> >
>> > But it reports error when executing *bitbake core-image-base*.
>> > Host environment: Ubuntu 18.04.3 LTS
>> >
>> > Can any one explain how to resolve this?
>>
>> You are probably trying to use an old kernel that doesn't have python3
>> support for perf:
>>
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit=
/tools/perf/Makefile.config?h=3Dlinux-4.19.y&id=3D66dfdff03d196e51322c6a85c=
0d8db8bb2bdd655
>>
>> I guess one way to resolve this would be to disable scripting in perf i=
f
>> you don't want it.
>>
>> Thanks,
>>
>> Anuj
>>=20
>>
>

--000000000000e98122059f791c0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have already solved it, I think it was some package that=
 I have removed from these: dev-pkgs doc-pkgs package-management tools-prof=
ile.<br>I used the master branch and get ssh. Do you know how I can enable =
ssh or how it connects to Windows? There has to be a ssh.service right?<br>=
<div><br></div><div>Thanks</div><div>I=C3=B1igo</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9., 26 fe=
b. 2020 a las 8:39, Zoran Stojsavljevic (&lt;<a href=3D"mailto:zoran.stojsa=
vljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt;) escribi=C3=B3:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>I see... So you say the host distro must be as minimum at Ubuntu 18.10?=
</div><div><br></div><div>Z</div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at 6:0=
8 AM Anuj Mittal &lt;<a href=3D"mailto:anuj.mittal@intel.com" target=3D"_bl=
ank">anuj.mittal@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><br>
<br>
On 21-Feb-20 05:16 PM, I=C3=B1igo Vicente Wali=C3=B1o wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I&#39;m trying to build yocto project ZEUS for imx8m mini.<br>
&gt; <br>
&gt; I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-serve=
r-openssh<br>
&gt; tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management<b=
r>
&gt; tools-profile=E2=80=9D in my build/conf/local.con file.<br>
&gt; <br>
&gt; But it reports error when executing *bitbake core-image-base*.<br>
&gt; Host environment: Ubuntu 18.04.3 LTS<br>
&gt; <br>
&gt; Can any one explain how to resolve this?<br>
<br>
You are probably trying to use an old kernel that doesn&#39;t have python3=
 <br>
support for perf:<br>
<br>
<a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.gi=
t/commit/tools/perf/Makefile.config?h=3Dlinux-4.19.y&amp;id=3D66dfdff03d196=
e51322c6a85c0d8db8bb2bdd655" rel=3D"noreferrer" target=3D"_blank">https://g=
it.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/tools/perf/M=
akefile.config?h=3Dlinux-4.19.y&amp;id=3D66dfdff03d196e51322c6a85c0d8db8bb2=
bdd655</a><br>
<br>
I guess one way to resolve this would be to disable scripting in perf if <=
br>
you don&#39;t want it.<br>
<br>
Thanks,<br>
<br>
Anuj<br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000e98122059f791c0b--
