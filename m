Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web11.7113.1582720601248141197
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 04:36:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mu3PfJzL;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id a2so2394175qko.12
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 04:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Psjmk/9x9C5gcS4dTMq4RUORpKV1qX8DqBZVO89Qvyg=;
        b=mu3PfJzLP4P2C9jmDrTGQ16fh8h/gKNOtN9Q0T0aJpvEDgAKQfX2JsNaYZknwPYC5C
         l38JDGY+dYScLpeOJFr9H7oWh7EcO29f6zGioTQKkndcKAjmaiMuTy21NPDu8BKRBaIF
         Dg+6AFx+q1/JZykwWEbYLohTMt9bKDhWBCTZBhPcL5butsqPz37nvSADXGber5YYBIth
         5mApygRQ4v9YFZovme1hcIRQjvvzxvlYuMmIJiGZkiAoqg7SyPIrD6nE6nkzVaGXH29i
         8JVOSUhyyxprSUFCsmRWDLVM3SaZf+gU7MZ2I5HKydN1YU9RvBriRTPBSoP3UF+U2n/l
         knig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Psjmk/9x9C5gcS4dTMq4RUORpKV1qX8DqBZVO89Qvyg=;
        b=CdwfxRL1ZQZNJgN7HLR0f9BGIFJmm6o1qR33gg/AB3r0pBS/4xbBOFgxTGZBxi/1n+
         yp7fwOoLVi9wuDVQNxXgPL53HV8oxsX1HzWkAk6RtMXdwEkARc6V4W+B9NpVLX4haP9b
         DaJV7z8X7DFplpKsE5sgeFLzOF4NeLCh6IQsk4Iedi1jHN2F7oyALU+exazKO2xRLd6w
         10QKtQmegBwTYjIZri51FGUsntvO40fvWuDuvIm8z4GPPP1H+VlQAQ4rl/b1jGpgIe2q
         Z9IoNW4B5pr8P9WAZTzzo6nxsOqb67dY7tMgUn/GLc3uP9lGTMuwO6oa59t2I/7K+E+T
         y+Yw==
X-Gm-Message-State: APjAAAX8CDkT3oFzhq561l7ZcwgkKNZ4gKjpgKqjawtDkv58VLXrwS7s
	ZTATpylWURvWIQPjT4kaYk+xRylMjt4YGYQSkdo=
X-Google-Smtp-Source: APXvYqxu7DvDsux5zlQrR5Bw/QI1aHozfqkDkeBvd0kgZXmJkt63jC/0Q6wpMn6GAF2A1nHk/3ioV2bTRC6K0hrCAQ8=
X-Received: by 2002:a37:947:: with SMTP id 68mr5197013qkj.227.1582720600252;
 Wed, 26 Feb 2020 04:36:40 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
 <395d1171-29eb-6225-883f-ca6bc4d0b365@intel.com> <CAGAf8LzDzE=BPszNG_qM+n-X1trAkDr3sNX=R5X-P-4w4b1F8w@mail.gmail.com>
 <CA+ABUwjvE4GoPaoBFGuPox=-0HnH2eLrkWN+7qS++R3bPpV0kA@mail.gmail.com>
In-Reply-To: <CA+ABUwjvE4GoPaoBFGuPox=-0HnH2eLrkWN+7qS++R3bPpV0kA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 26 Feb 2020 13:36:28 +0100
Message-ID: <CAGAf8Ly85RmGMHB83uO5CM5CGpd37econ2P03pHFN-v4VXbRvw@mail.gmail.com>
Subject: Re: [yocto] Bitbake error
To: =?UTF-8?Q?I=C3=B1igo_Vicente_Wali=C3=B1o?= <inigovicentewalino@gmail.com>
Cc: Anuj Mittal <anuj.mittal@intel.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000282428059f79db1b"

--000000000000282428059f79db1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have created local.conf for bbb which includes both systemd and ssh.

Please, find it here.
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/b=
bb-zeus/local.conf

I sincerely hope it helps.

Best Regards,
Zoran


On Wed, Feb 26, 2020 at 12:43 PM I=C3=B1igo Vicente Wali=C3=B1o <
inigovicentewalino@gmail.com> wrote:

> I have already solved it, I think it was some package that I have remove=
d
> from these: dev-pkgs doc-pkgs package-management tools-profile.
> I used the master branch and get ssh. Do you know how I can enable ssh o=
r
> how it connects to Windows? There has to be a ssh.service right?
>
> Thanks
> I=C3=B1igo
>
> El mi=C3=A9., 26 feb. 2020 a las 8:39, Zoran Stojsavljevic (<
> zoran.stojsavljevic@gmail.com>) escribi=C3=B3:
>
>> I see... So you say the host distro must be as minimum at Ubuntu 18.10?
>>
>> Z
>>
>>
>> On Wed, Feb 26, 2020 at 6:08 AM Anuj Mittal <anuj.mittal@intel.com>
>> wrote:
>>
>>>
>>>
>>> On 21-Feb-20 05:16 PM, I=C3=B1igo Vicente Wali=C3=B1o wrote:
>>> > Hi,
>>> >
>>> > I'm trying to build yocto project ZEUS for imx8m mini.
>>> >
>>> > I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-serv=
er-openssh
>>> > tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management
>>> > tools-profile=E2=80=9D in my build/conf/local.con file.
>>> >
>>> > But it reports error when executing *bitbake core-image-base*.
>>> > Host environment: Ubuntu 18.04.3 LTS
>>> >
>>> > Can any one explain how to resolve this?
>>>
>>> You are probably trying to use an old kernel that doesn't have python3
>>> support for perf:
>>>
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commi=
t/tools/perf/Makefile.config?h=3Dlinux-4.19.y&id=3D66dfdff03d196e51322c6a85=
c0d8db8bb2bdd655
>>>
>>> I guess one way to resolve this would be to disable scripting in perf =
if
>>> you don't want it.
>>>
>>> Thanks,
>>>
>>> Anuj
>>>=20
>>>
>>

--000000000000282428059f79db1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have created local.conf for bbb which includes both=
 systemd and ssh.</div><div><br></div><div>Please, find it here.<br></div><=
div><a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/=
bbb-releases/bbb-zeus/local.conf">https://github.com/ZoranStojsavljevic/bbb=
-yocto/blob/master/bbb-releases/bbb-zeus/local.conf</a></div><div><br></div=
><div>I sincerely hope it helps.</div><div><br></div><div>Best Regards,</di=
v><div>Zoran</div><div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at 12:43 PM I=C3=B1ig=
o Vicente Wali=C3=B1o &lt;<a href=3D"mailto:inigovicentewalino@gmail.com">i=
nigovicentewalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">I have already solved it, I thi=
nk it was some package that I have removed from these: dev-pkgs doc-pkgs pa=
ckage-management tools-profile.<br>I used the master branch and get ssh. Do=
 you know how I can enable ssh or how it connects to Windows? There has to =
be a ssh.service right?<br><div><br></div><div>Thanks</div><div>I=C3=B1igo<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">El mi=C3=A9., 26 feb. 2020 a las 8:39, Zoran Stojsavljevic (&lt;<a hre=
f=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavl=
jevic@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>I see... So you say the host =
distro must be as minimum at Ubuntu 18.10?</div><div><br></div><div>Z</div>=
<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 26, 2020 at 6:08 AM Anuj Mittal &lt;<a href=3D=
"mailto:anuj.mittal@intel.com" target=3D"_blank">anuj.mittal@intel.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
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
</blockquote></div>

--000000000000282428059f79db1b--
