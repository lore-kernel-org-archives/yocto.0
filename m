Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
 by mx.groups.io with SMTP id smtpd.web10.5014.1582702755396747201
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 23:39:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYhgjvWK;
 spf=pass (domain: gmail.com, ip: 209.85.160.194, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qt1-f194.google.com with SMTP id g21so1564674qtq.10
        for <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2020 23:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bTTFN/g+2TbaJfu2nVOBtwcsuGF1qpZc8IH9nUje7X8=;
        b=kYhgjvWK6vjw7MG40NzFJiSHLrhY/RIsvLSI4IC8eGoDNKkDRIjVstsc08IrTE/0DR
         vjtwT7XPp8L2KFp+ab0ZXuQMxyocuXMP2DHo14WStFCzMXXihJg6O3O+9QwJphBMMF6L
         QeanJATclEfOL8zSmwKIC9qjIvp3nlKIBRAmdr1GdRroiVUD1FaSG1feibLvJxDzwVMb
         kflhKAXh+0mLsPxoK2yvVF0ACVyO6lZhAGEdBTIJ12R0TRgjxFroHBoChlUUJI8fdNXC
         vOtomoIAeryqXSWZfPjKLqemW4FseEqlDloe/HgiQAJpMYp8kr1R7cgqBq03whocklE0
         RblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bTTFN/g+2TbaJfu2nVOBtwcsuGF1qpZc8IH9nUje7X8=;
        b=L+eFw4o5OzZF8bS0dqAOxv2hjC+/q2Lw1Rnx2gcpJcNiGuS399EuIihwfms80lFdQ6
         XqjiaURrXPGysC9VdsxiHYmOMUhZ848pgjTbhaWIvxO13vlt2G5M27oQx3U5HsNkSxau
         D1AhT85W1Z049n1odPcE8ZBkz6vMrx25xIjsKZ7zDGSTXPn9wsOKERuad2kMCjrv4r+Z
         GHMesSyducu3r9xUu7qbFTHORFVZP9DhMSDtffFS9rEHCEyEnN2MS6DLvbf9y241I2tA
         DepzIFEIB93WcGUWkfSnp/POwZFzC4vfaa0qrfz2AFtdgWBtmT+EcsHlz0GsjahIfNEs
         oxbA==
X-Gm-Message-State: APjAAAWYR+y0oWhrl+vnaB2gzRdxwY56wpI/N5U9pv87zru3MNqjcoCZ
	KaosGzcwsZL4voB4l4C8qMNgj3Z63AZYg8GV8R0=
X-Google-Smtp-Source: APXvYqx2GX+J/62+TP899qkzWlWXSyxfwPQoFHpuGG28uidyo61JVetaokUUOggmddf94OPEYbGDXmgW2TY/vklVXD0=
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr3269515qtu.141.1582702754137;
 Tue, 25 Feb 2020 23:39:14 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
 <395d1171-29eb-6225-883f-ca6bc4d0b365@intel.com>
In-Reply-To: <395d1171-29eb-6225-883f-ca6bc4d0b365@intel.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 26 Feb 2020 08:39:02 +0100
Message-ID: <CAGAf8LzDzE=BPszNG_qM+n-X1trAkDr3sNX=R5X-P-4w4b1F8w@mail.gmail.com>
Subject: Re: [yocto] Bitbake error
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: =?UTF-8?Q?I=C3=B1igo_Vicente_Wali=C3=B1o?= <inigovicentewalino@gmail.com>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000720a7d059f75b33d"

--000000000000720a7d059f75b33d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I see... So you say the host distro must be as minimum at Ubuntu 18.10?

Z


On Wed, Feb 26, 2020 at 6:08 AM Anuj Mittal <anuj.mittal@intel.com> wrote:

>
>
> On 21-Feb-20 05:16 PM, I=C3=B1igo Vicente Wali=C3=B1o wrote:
> > Hi,
> >
> > I'm trying to build yocto project ZEUS for imx8m mini.
> >
> > I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-server=
-openssh
> > tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management
> > tools-profile=E2=80=9D in my build/conf/local.con file.
> >
> > But it reports error when executing *bitbake core-image-base*.
> > Host environment: Ubuntu 18.04.3 LTS
> >
> > Can any one explain how to resolve this?
>
> You are probably trying to use an old kernel that doesn't have python3
> support for perf:
>
>
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/=
tools/perf/Makefile.config?h=3Dlinux-4.19.y&id=3D66dfdff03d196e51322c6a85c0=
d8db8bb2bdd655
>
> I guess one way to resolve this would be to disable scripting in perf if
> you don't want it.
>
> Thanks,
>
> Anuj
>=20
>

--000000000000720a7d059f75b33d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I see... So you say the host distro must be as minimu=
m at Ubuntu 18.10?</div><div><br></div><div>Z</div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, F=
eb 26, 2020 at 6:08 AM Anuj Mittal &lt;<a href=3D"mailto:anuj.mittal@intel.=
com">anuj.mittal@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
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

--000000000000720a7d059f75b33d--
