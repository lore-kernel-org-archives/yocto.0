Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3588.1605080461322572401
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 23:41:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zh0nDUCr;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: martin.jansa@gmail.com)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E50EB38C04F0
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2020 07:41:00 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id f20so1440223ejz.4
        for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 23:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=luqbxsOGlq8Uln5s6lcBO0ZXoUgi+Ukx70rdPT3XPCQ=;
        b=Zh0nDUCr+BgmzeCScPgz1oyePMpTQgt+73Cuwx8U602SEaWxx0lHXFd+b7SOtZCHAh
         KHUtVG+1ZoJORb4ldX24mwHPwbhBg4hlbrl0Rm5k1kZYu0qupVUZ4SnsJTYQWIN9iWbc
         wjx2ZyAMcnS02UFDyiA6zIQ9jJ4YtEWLSVX8mwvRlO6kQoY7vm6ada6s28CZ7FvQphRR
         hsqWZUl9/xPexHLNnNZ7HtYY1oMNzvUb4yboMr2gyVAROFzEwW60TQI3d+mX8Qz6qBmF
         VbpY4uMLbqba1KagmyOVHk/WTil2X30SR1OoAIQWYs40kczAJadMqCg7sxVrEJRR+9K9
         qxQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=luqbxsOGlq8Uln5s6lcBO0ZXoUgi+Ukx70rdPT3XPCQ=;
        b=TDobEE32ueLnyqZ47D2ZTMOaR4orMTTz4XRN6Tj5VlCHUp8bZnrBYE3WNOlb0zMWFs
         JNc4qyqSafyLjTmJfVQ4OkfKExSHah3GVonn8xbvW7IS0OjC2WWAQqOVqbGKqdKkP+hw
         IAk9PFwL3qbAt7FxF/CxtunU8intP/4f6D/QVuiv5zifV9qBf7rv+Y/rEqV9E4fn5osg
         T7lZ44DgOSE4KsQnm8YEoX8vJQ5LXr4AFz80csmFyZ5CwL40d5Pu5+nwX68g+OGQnTLA
         wMHY1BBfBsBl0/12CzO1meAVENhcys9tnUD7/kXDq6+iJp/UmFuzk4jOsDL88C0pKDxu
         MbTg==
X-Gm-Message-State: AOAM532QKBFy9Rs0La9nZQY6068QfXYk5/fOyKaSPVsmZcIg0NRy82cq
	nR5NpxG19dmjoPZaE9KCLuy7GIOSXy3Lg97HOiI=
X-Google-Smtp-Source: ABdhPJzoHbD3kSCcWlUQZhHToXBL/8fCMnt10uzpVgpZgd1cLHW7yUCdSY6VvyPoXFw5I+LFGbUPDciiII1QQYQtrOA=
X-Received: by 2002:a17:906:94d4:: with SMTP id d20mr23225980ejy.392.1605080459527;
 Tue, 10 Nov 2020 23:40:59 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
In-Reply-To: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 11 Nov 2020 08:40:48 +0100
Message-ID: <CA+chaQdLUm_iOczwnOPwK77XaBSEfpF1ZLHXDhArM_3OZvnPvw@mail.gmail.com>
Subject: Re: [yocto] python bump
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a04cd805b3cfea13"

--000000000000a04cd805b3cfea13
Content-Type: text/plain; charset="UTF-8"

If you don't really need 3.8 and 3.7.5 from warrior would be good enough
for you, then backporting it to thud was relatively straightforward as
implemented in:
https://github.com/ros/meta-ros/commits/thud/meta-ros-backports-warrior
and as it's in a separate layer it doesn't make your main distro layer more
ugly or difficult to maintain (just drop backports layers when upgrading to
newer release instead of trying to find out all backported bits and pieces
across a whole set of layers).

But even this "small" upgrade from 3.6 to 3.7 introduces ABI change as
shown in:
https://github.com/ros/meta-ros/commit/b8efe1dfcfce63135d846df0106085f83aeaa790
so it's better to upgrade completely to a new release if possible at all.

On Tue, Nov 10, 2020 at 7:45 PM Marek Belisko <marek.belisko@gmail.com>
wrote:

> Hi,
>
> I'm using poky release thud and would like to bump python3 to 3.8.x. I
> took recipe from most recent poky version but I'm hitting issue with
> e.g. meson build like:
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | Traceback (most recent call last):
> |   File "setup.py", line 25, in <module>
> |     from setuptools import setup
> | ModuleNotFoundError: No module named 'setuptools'
>
> Are there some other things I need to take care when want to bump python3?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> 
>
>

--000000000000a04cd805b3cfea13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you don&#39;t really need 3.8 and 3.7.5 from warrior wo=
uld be good enough for you, then backporting it to thud was relatively stra=
ightforward as implemented in:<div><a href=3D"https://github.com/ros/meta-r=
os/commits/thud/meta-ros-backports-warrior">https://github.com/ros/meta-ros=
/commits/thud/meta-ros-backports-warrior</a><br></div><div>and as it&#39;s =
in a separate layer it doesn&#39;t make your main distro layer more ugly or=
 difficult to maintain (just drop backports layers when upgrading to newer =
release instead of trying to find out all backported=C2=A0bits and pieces a=
cross a whole=C2=A0set of layers).</div><div><br></div><div>But even this &=
quot;small&quot; upgrade from 3.6 to 3.7 introduces ABI change as shown in:=
</div><div><a href=3D"https://github.com/ros/meta-ros/commit/b8efe1dfcfce63=
135d846df0106085f83aeaa790">https://github.com/ros/meta-ros/commit/b8efe1df=
cfce63135d846df0106085f83aeaa790</a><br></div><div>so it&#39;s better to up=
grade completely to a new release if possible at all.</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 10, =
2020 at 7:45 PM Marek Belisko &lt;<a href=3D"mailto:marek.belisko@gmail.com=
">marek.belisko@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Hi,<br>
<br>
I&#39;m using poky release thud and would like to bump python3 to 3.8.x. I=
<br>
took recipe from most recent poky version but I&#39;m hitting issue with<b=
r>
e.g. meson build like:<br>
Log data follows:<br>
| DEBUG: Executing shell function do_configure<br>
| Traceback (most recent call last):<br>
|=C2=A0 =C2=A0File &quot;setup.py&quot;, line 25, in &lt;module&gt;<br>
|=C2=A0 =C2=A0 =C2=A0from setuptools import setup<br>
| ModuleNotFoundError: No module named &#39;setuptools&#39;<br>
<br>
Are there some other things I need to take care when want to bump python3?=
<br>
<br>
Thanks and BR,<br>
<br>
marek<br>
<br>
-- <br>
as simple and primitive as possible<br>
-------------------------------------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
Tel: +421 915 052 184<br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_blan=
k">http://open-nandra.com</a><br>
<br>
<br>
<br>
</blockquote></div>

--000000000000a04cd805b3cfea13--
