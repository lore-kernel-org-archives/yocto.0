Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web10.244.1582149473281169974
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:57:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bj003m2P;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id p3so31095290edx.7
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 13:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q8kmEOt4aQi+W/S+83o4xlf+YIbu9971WF6sb4d16Aw=;
        b=bj003m2PSABYGj3uzffTHP+Q6HR4avpkgZJYChX1VNrCMnU4Rqh+DOHmYWpJLnUnml
         GXu2dALizAQDN+Wwm7wTEK7ZmcGOmiu5ABuYH8StkImJAjqP0mv2BoOgVaPRJ4zksSrR
         ptjgjkdzg2tOvUp0hyPWaP5qgMjxLSV+7OYpRUDyy18rKhGJk6xRYGFVezwdwcX4ssps
         ebhIGoKMeUIlDMcGtJudsgzSCsClfJoB+VmhnBJ8iXXfLZQI6/d6FmXQq3WPdTH4FJXh
         aRNBjMU4A+Lmw8bMx8zpkNOpdf1dx67nfZxjdwmIqt5XHYCjwmaWZbq2kHYH3v5s5nP7
         dH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q8kmEOt4aQi+W/S+83o4xlf+YIbu9971WF6sb4d16Aw=;
        b=mIFaBeFlqvP8AWsDgeE3EVeDKS4H5x6TCljVcOQoxSLEw3mGfXPowNKxNLSQJ3fqzd
         /e6Soif7CIf0aSNpRXJOkQiMKQiRsxEv20k3BaWJqMfxO/AONwBPvAQxAA6mJ3Fa7Q9H
         W0fCBBS5o4qO7dKFc9Mq9GTEgGh1l4cPn7LdqwNhPF2c1ZsCzHuGlNOGvRfT048jBO5s
         wP19ofhqIC1xS6f9LRcUMuvxYO5LK15/P62E1ZIheMX66mbtoVCw1/j8pQqFNksrhRxy
         J9TopqtOidhsE7Bjumf+BksPcMJ5Ke1s7cWAAmYOO1eClMzT9ixSSOvgivZyfVihhFh6
         zCGQ==
X-Gm-Message-State: APjAAAXnFHKIIoGH82PqgwzkYkjABgu1cjk3543SibyLzCosEFWXoAvF
	yFsIpUE7Wn8b+qKzXE1nRH6Zlrg8ODGSr52fsko=
X-Google-Smtp-Source: APXvYqwG6YrAD7fcM4c/0q3MoaHMcmg7ua3BgmqMYD2HEey8/OyBpmuy0yLTRznlkyvVj80hTc4mUiZIwHnm308omHs=
X-Received: by 2002:a50:fd04:: with SMTP id i4mr25304679eds.311.1582149471814;
 Wed, 19 Feb 2020 13:57:51 -0800 (PST)
MIME-Version: 1.0
References: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org> <20200219094422.GV104502@korppu>
In-Reply-To: <20200219094422.GV104502@korppu>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 19 Feb 2020 22:57:41 +0100
Message-ID: <CA+chaQeh2s-T-qXABAkr_28Wp2UZe0-WkZCEOuZ52cnUYtQsfg@mail.gmail.com>
Subject: Re: [yocto] how to reuse generated library in a nativesdk recipe #sdk #systemd
To: Mikko Rapeli <mikko.rapeli@bmw.de>
Cc: j.armandohernandez.j@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003fcaa1059ef4e12a"

--0000000000003fcaa1059ef4e12a
Content-Type: text/plain; charset="UTF-8"

> DEPENDS_class-target += "systemd"

You surely meant
DEPENDS_append_class-target = " systemd"
here

On Wed, Feb 19, 2020 at 10:48 PM Mikko Rapeli <mikko.rapeli@bmw.de> wrote:

> Hi,
>
> On Wed, Feb 19, 2020 at 01:37:19AM -0800, Armando Hernandez wrote:
> > Hello,
> >
> > I have a recipe that builds a library. The recipe specifies an
> additional package "${PN}-systemd" along with other systemd related
> variables and finally it instructs that the package should be built with
> "-DWITH_SYSTEMD=ON" being passed to cmake. So far so good. But, I extended
> this recipe to nativesdk because I need this library on it. When trying to
> build the corresponding nativesdk package, the build fails at the
> configuration step (i.e. "do_configure") claiming it cannot find the
> package systemd.
> >
> > Is there a way I can install the -already-generated libraries into my
> SDK (potentially via the corresponding nativesdk recipe) without having to
> rebuild the package? Or do I need to somehow include such systemd package
> in my sdk (which I don't think I need at all)?
> >
> > Any hints and pointers as to were to look at are very well appreciated.
> > Thanks.
>
> Make the systemd dependency for target only, e.g. DEPENDS_class-target +=
> "systemd"
> etc.
>
> There may be relevant use cases to build some of systemd components or
> tools
> to native or nativesdk targets too. In that case add BBCLASSEXTEND +=
> "nativesdk" etc
> in a bbappend to systemd.
>
> Hope this helps,
>
> -Mikko
>

--0000000000003fcaa1059ef4e12a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; DEPENDS_class-target +=3D &quot;systemd&quot;<div><br=
></div><div>You surely meant</div><div>DEPENDS_append_class-target =3D &quo=
t; systemd&quot;</div><div>here</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 19, 2020 at 10:48 PM Mikko=
 Rapeli &lt;<a href=3D"mailto:mikko.rapeli@bmw.de">mikko.rapeli@bmw.de</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<b=
r>
<br>
On Wed, Feb 19, 2020 at 01:37:19AM -0800, Armando Hernandez wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I have a recipe that builds a library. The recipe specifies an additi=
onal package &quot;${PN}-systemd&quot; along with other systemd related var=
iables and finally it instructs that the package should be built with &quot=
;-DWITH_SYSTEMD=3DON&quot; being passed to cmake. So far so good. But, I ex=
tended this recipe to nativesdk because I need this library on it. When try=
ing=C2=A0to build the corresponding=C2=A0nativesdk package, the build fails=
 at the configuration step (i.e. &quot;do_configure&quot;) claiming it cann=
ot find the package systemd.<br>
&gt; <br>
&gt; Is there a way I can install the -already-generated libraries into my=
 SDK (potentially via the corresponding nativesdk recipe) without having to=
 rebuild the package? Or do I need to somehow include such systemd package =
in my sdk (which I don&#39;t think I need at all)?<br>
&gt; <br>
&gt; Any hints and pointers as to were to look at are very well appreciate=
d.<br>
&gt; Thanks.<br>
<br>
Make the systemd dependency for target only, e.g. DEPENDS_class-target +=
=3D &quot;systemd&quot;<br>
etc.<br>
<br>
There may be relevant use cases to build some of systemd components or too=
ls<br>
to native or nativesdk targets too. In that case add BBCLASSEXTEND +=3D &q=
uot;nativesdk&quot; etc<br>
in a bbappend to systemd.<br>
<br>
Hope this helps,<br>
<br>
-Mikko<br>
</blockquote></div>

--0000000000003fcaa1059ef4e12a--
