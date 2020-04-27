Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web12.1014.1588011407578292368
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2020 11:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nsc/DgMj;
 spf=pass (domain: gmail.com, ip: 209.85.221.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id i185so5096121vki.12
        for <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2020 11:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=V8gib/tlHYrJ3qHWsqLQD57hcT481PgyKa/JpdiiN1I=;
        b=nsc/DgMjFhxWkCAaTG8IHvMgZFhdeVV61zx2GlNqee0YXHL2yZuK7OoQ4H1St2Zlif
         OPQXPOi1IQdGY9Xg6WWddYpUJ5wahYPQ6GYK2QeD8trOdQ0F7OYbXCM4jbtpnBm+HCOF
         4teMSgzvvliY0xc5RzuxPSTjxOiijaFBK+P4F14Ld1t+YG6fyvEVnvEV5osOcaykYCwM
         twm/rbqdXYjUhLiTOZvxhojn252p6CdW1XQTHPEWgI0otrElE6Cx5Raq6cWoVYhxuD3l
         1zCzoVbPhk7egzcbKuYgHxPPEU5f6tH7uh5MrHXLnWcLZ9V/7aUUG0Wmfrbaq1lK8U02
         k7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=V8gib/tlHYrJ3qHWsqLQD57hcT481PgyKa/JpdiiN1I=;
        b=MUhGujZ6r5sKXJIX6J16g1A/FBGMlnhoEaK5dqV+1eYfU06I6sUn8Pl8e+xewfQyWn
         Nd1mGhfoMCtf2V3x5C5DEiy6WKUh4gDmSg/+gItsqJPeCARKHHBmwMaz3UBznA0Cpvtx
         ISxosKIJXY0FLCHmf4c/skKVOr/xaEXty/S1V3mBUiiPWLRok6AAgnHzb9hfoujjazoB
         k0zCAFPqG/dM0SqMYSjZSgcR8a4RQZAHnA080LJP3XFBQi3NgWhB5pkHkxi/lLvkS2tY
         L7vHTsJBFOSY5bJAEk+BI/RhQNbMvu/rUPcr1ObpCcXqJwoQsK9YlMIQX9E6KZDCfkTn
         gQsg==
X-Gm-Message-State: AGi0PuZG2ZNaaMhZdyrmj6t6WrtYW6XHaYEwXAM3Y7zvh9zJe5iyMvZw
	cqNXzkyhSq7Vc7gyWSifG0Y8OLokyfvCLHtWmXbkv920
X-Google-Smtp-Source: APiQypIzUEIQ83oI1rRCGtOYvcI9Z7zl66ZuacmysGqI/IukpEp+Z2oDDEhzUNhq/Pi1yEfcY27A/nEpX9076YGsvRY=
X-Received: by 2002:a1f:2154:: with SMTP id h81mr18700374vkh.9.1588011405279;
 Mon, 27 Apr 2020 11:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <98NB.1575840802217143019.f9l4@lists.yoctoproject.org> <10689.1588009886774474741@lists.yoctoproject.org>
In-Reply-To: <10689.1588009886774474741@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 27 Apr 2020 20:16:33 +0200
Message-ID: <CANNYZj_5NYNe-J_vHgBXh6WuMDcrrsv6x-u9iuYJXcY_qGvG_A@mail.gmail.com>
Subject: Re: [yocto] Unable to build core-image-full-cmdline on openSUSE Leap 15.1: dnf can't find _curses module in do_rootfs task
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b6050505a449b775"

--000000000000b6050505a449b775
Content-Type: text/plain; charset="UTF-8"

I think the issue is solved by this:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=master-next&id=39970f583dddf04139a039cbe04e62b7236f0481

Alex



On Mon, 27 Apr 2020 at 19:51, <bpeter@lytx.com> wrote:

> I'm experiencing the same problem with yocto zeus on both OpenSuse Leap
> 15.0 and 15.1. Were you able to find a resolution for this issue?
>
> I've been investigating and found problems with some of the libraries
> built for python3-native. They're missing some dependencies:
>
>
> /home/brendan/workspaces/imx-linux-zeus/build_fsl-imx-xwayland/tmp/sysroots-components/x86_64/python3-native/usr/lib/python3.7/lib-dynload/_
> curses.cpython-37m-x86_64-linux-gnu_failed.so
>
> /home/brendan/workspaces/imx-linux-zeus/build_fsl-imx-xwayland/tmp/sysroots-components/x86_64/python3-native/usr/lib/python3.7/lib-dynload/_
> curses_panel.cpython-37m-x86_64-linux-gnu_failed.so
>
> readelf -d | grep NEEDED
>  0x0000000000000001 (NEEDED)             Shared library: [libpanelw.so.5]
>  0x0000000000000001 (NEEDED)             Shared library: [libncursesw.so.5]
>  0x0000000000000001 (NEEDED)             Shared library: [libtinfo.so.5]
>  0x0000000000000001 (NEEDED)             Shared library:
> [libpython3.7m.so.1.0]
>  0x0000000000000001 (NEEDED)             Shared library: [libpthread.so.0]
>  0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
> 
>

--000000000000b6050505a449b775
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think the issue is solved by this:</div><div><br></=
div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?=
h=3Dmaster-next&amp;id=3D39970f583dddf04139a039cbe04e62b7236f0481">http://g=
it.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&amp;id=3D399=
70f583dddf04139a039cbe04e62b7236f0481</a></div><div><br></div><div>Alex<br>=
</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, 27 Apr 2020 at 19:51, &lt;<a hr=
ef=3D"mailto:bpeter@lytx.com">bpeter@lytx.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">I&#39;m experiencing the same =
problem with yocto zeus on both OpenSuse Leap 15.0 and 15.1. Were you able =
to find a resolution for this issue?<br><br>I&#39;ve been investigating and=
 found problems with some of the libraries built for python3-native. They&#=
39;re missing some dependencies:<br><br>/home/brendan/workspaces/imx-linux-=
zeus/build_fsl-imx-xwayland/tmp/sysroots-components/x86_64/python3-native/u=
sr/lib/python3.7/lib-dynload/_<a href=3D"http://curses.cpython-37m-x86_64-l=
inux-gnu_failed.so" target=3D"_blank">curses.cpython-37m-x86_64-linux-gnu_f=
ailed.so</a><br>/home/brendan/workspaces/imx-linux-zeus/build_fsl-imx-xwayl=
and/tmp/sysroots-components/x86_64/python3-native/usr/lib/python3.7/lib-dyn=
load/_<a href=3D"http://curses_panel.cpython-37m-x86_64-linux-gnu_failed.so=
" target=3D"_blank">curses_panel.cpython-37m-x86_64-linux-gnu_failed.so</a>=
<br><br>readelf -d | grep NEEDED<br>=C2=A00x0000000000000001 (NEEDED)=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared =
library: [libpanelw.so.5]<br>=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared librar=
y: [libncursesw.so.5]<br>=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: =
[libtinfo.so.5]<br>=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpy=
thon3.7m.so.1.0]<br>=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpt=
hread.so.0]<br>=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libc.so.6]
<br>
</blockquote></div>

--000000000000b6050505a449b775--
