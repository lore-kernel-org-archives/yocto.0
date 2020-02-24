Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web09.22059.1582558239268882500
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 07:30:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eZKssEVS;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: j.armandohernandez.j@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id b141so4777006ybg.10
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2020 07:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hhY3ZAqxMCm54zHEdzW3vdrQLynM5RPMk5IbUiy3Ha8=;
        b=eZKssEVSCz6G8ZCZ6+x9dAZSklxprGhOZIahxqirky09AbCec0Q7PRQH4/vGMfKaBp
         zJr5mn11SvWD2qgRIipDc9Yc3G59HtEGDrDjUWeqozbGIAbcaovDWwSxABgUUCBfnL6W
         ErJhGcnCMefKgfb4AvD/yG/AMml8ykIhRu5SAA84MDiwVe+5FZ29+kGETptdzLHBHc7G
         PJVRQVrmbuGZx4EvoVlAsgVCgR1IzAPl3akmUZVuPYR0l+pc3wtf9d9LdBP4xLLw335t
         /2re2n11I6AGyKGqz4BMnKMLom2n+lnoIifEYNKfUE/o/LpMpUXHvXZvZRLObBYI39UV
         kQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hhY3ZAqxMCm54zHEdzW3vdrQLynM5RPMk5IbUiy3Ha8=;
        b=smwj+1IcL9pM5bEv6BNvX8kONL1c39eewn6c4ytTEip7DTi0gcFsGmoGI6e1yFw7Rz
         48ZySr/ygQLp/XHcMxzygf5V5s34yN4KQBp9gNvdiNCDDhexynB2CtybWURFk12Ty5zc
         1X0IZlqwy0/jZiAsvGinew2HlAiJNTs168srq71EyawY3RGs+97AbkbEFF0Nz9Jl84w4
         wbNIVw9qW7rkVxoSTzhWHbakU5Cri2u+OgTcT+oyWy0P/HeI9nbUaAmhMQzOxfsQzuBb
         8LMXUMf+fCoULUqPku0gFgTEBm0QbaPavMUUwb8Z4aqUaIOYHBnu1xqpweqPDn9fBEaR
         63kA==
X-Gm-Message-State: APjAAAXmQNVMYRduaIwO18VR9BUIyE3L0bUsI1i/LeB7Crjtbc+02Z29
	BfuYeC3QDIptdCI1bnHL8hgLnbrLgLPIQFMqUas=
X-Google-Smtp-Source: APXvYqzKSrTZiEOxoomGGExghLO2LQPeCNwgR77bGebyrEQKpHD7lUorjm4aWxkhJhBN7gjB9l299dCMsKvNpd+mO2I=
X-Received: by 2002:a25:2552:: with SMTP id l79mr43636372ybl.259.1582558238325;
 Mon, 24 Feb 2020 07:30:38 -0800 (PST)
MIME-Version: 1.0
References: <NKHr.1582292647502040528.ikPU@lists.yoctoproject.org> <CAMKF1sqgsxZBOP15Ft-b0W=4KQc=dQJvJ12H+riCaordNF4S8w@mail.gmail.com>
In-Reply-To: <CAMKF1sqgsxZBOP15Ft-b0W=4KQc=dQJvJ12H+riCaordNF4S8w@mail.gmail.com>
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
Date: Mon, 24 Feb 2020 16:30:26 +0100
Message-ID: <CAGpycA+m13EWuyHCFZ5X=uorjTQ_9W_T-U_gk-uEjh7esqGX9g@mail.gmail.com>
Subject: Re: [yocto] nativesdk recipe fails to find cmake config file from another recipe/dependency #sdk
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a1c3a7059f540d17"

--000000000000a1c3a7059f540d17
Content-Type: text/plain; charset="UTF-8"

Hello Raj, and thanks for your help.

I actually found out that my problem seems to be that the files of one of
the dependency packages are not staged into
./build/tmp/sysroots-components/x86_64-nativesdk/<dependency-package-name>

In that path, I am missing the /usr folder with all its content (and I am
guessing this is the reason of my error during the do_configure task - it
cannot find the dependency's cmake config files).
(I just wanted to comment, that I only find a "/sysroot-providers" folder
with two text files whose content is a string with the name of the package
- i.e. nativesdk-common-api-c++).

Currently I'm trying to find out why these files are not staged, but if you
have any suggestion as of where to look at it'd be great.

Thanks again for your help!

Armando H.

On Fri, Feb 21, 2020 at 8:57 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Feb 21, 2020 at 5:44 AM Armando Hernandez
> <j.armandohernandez.j@gmail.com> wrote:
> >
> > Hello,
> >
> > I have two recipes (let's call them "recipe-A" and "recipe-B").
> > Both recipes extend the nativesdk class.
> > recipe-B depends on recipe-A
> > When building both recipes for target, everything goes well without any
> issues.
> > When building the nativesdk corresponding recipes, recipe-B fails during
> the task do_configure due to the fact that cmake cannot find the package
> configuration that corresponds to recipe-A.
> >
> > On recipe-A.bbappend I have the following lines (recipe-A cmake config
> file "CommonAPIConfig.cmake" is located under /usr/lib/cmake/CommonAPI):
> > FILES_${PN}-dev_append_class-nativesdk = " ${includedir_native}
> ${libdir_native}"
> > BBCLASSEXTEND = "nativesdk"
> >
> > Since suche cmake config files was not found, I created a
> recipe-B.bbappend file with the following content:
> > EXTRA_OECMAKE_append_class-nativesdk +=
> "-DCMAKE_PREFIX_PATH:PATH=${libdir_native}/cmake/CommonAPI"
> >
> >
> > But I keep getting the same error.
> >
> > Any hints?
>
> check DEPENDS how are they specified in recipes, it might get
> overwritten in some cases for extended
> recipes if overrides are in use on depends. Secondly, check the build
> tree for failing recipe and see if
> it has staged the content from other recipe which it depends on.
>
> >
> > Thank you in advance!
> >
> > Armando Hernandez.
> > 
>

--000000000000a1c3a7059f540d17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hello Raj, and thanks for your help.</div><div class=3D=
"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">I actually found out that my problem seems to be that the files of one o=
f the=C2=A0dependency=C2=A0packages are not staged into ./build/tmp/sysroot=
s-components/x86_64-nativesdk/&lt;dependency-package-name&gt;</div><div cla=
ss=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans=
-serif">In that path, I am missing the /usr folder with all its content (an=
d I am guessing this is the reason of my error during the do_configure task=
 - it cannot find the dependency&#39;s cmake config files).<br>(I just want=
ed to comment, that I only find a &quot;/sysroot-providers&quot; folder wit=
h two text files whose content is a string with the name of the package - i=
.e. nativesdk-common-api-c++).</div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif">Currently I&#39;m tryin=
g to find out why these files are not staged, but if you have any suggestio=
n as of where=C2=A0to look at it&#39;d be great.</div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Thank=
s again for your help!</div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=
=
=3D"font-family:arial,helvetica,sans-serif">Armando H.</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 21=
, 2020 at 8:57 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.kh=
em@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On Fri, Feb 21, 2020 at 5:44 AM Armando Hernandez<br>
&lt;<a href=3D"mailto:j.armandohernandez.j@gmail.com" target=3D"_blank">j.=
armandohernandez.j@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have two recipes (let&#39;s call them &quot;recipe-A&quot; and &quo=
t;recipe-B&quot;).<br>
&gt; Both recipes extend the nativesdk class.<br>
&gt; recipe-B depends on recipe-A<br>
&gt; When building both recipes for target, everything goes well without a=
ny issues.<br>
&gt; When building the nativesdk corresponding recipes, recipe-B fails dur=
ing the task do_configure due to the fact that cmake cannot find the packag=
e configuration that corresponds to recipe-A.<br>
&gt;<br>
&gt; On recipe-A.bbappend I have the following lines (recipe-A cmake confi=
g file &quot;CommonAPIConfig.cmake&quot; is located under /usr/lib/cmake/Co=
mmonAPI):<br>
&gt; FILES_${PN}-dev_append_class-nativesdk =3D &quot; ${includedir_native=
} ${libdir_native}&quot;<br>
&gt; BBCLASSEXTEND =3D &quot;nativesdk&quot;<br>
&gt;<br>
&gt; Since suche cmake config files was not found, I created a recipe-B.bb=
append file with the following content:<br>
&gt; EXTRA_OECMAKE_append_class-nativesdk +=3D &quot;-DCMAKE_PREFIX_PATH:P=
ATH=3D${libdir_native}/cmake/CommonAPI&quot;<br>
&gt;<br>
&gt;<br>
&gt; But I keep getting the same error.<br>
&gt;<br>
&gt; Any hints?<br>
<br>
check DEPENDS how are they specified in recipes, it might get<br>
overwritten in some cases for extended<br>
recipes if overrides are in use on depends. Secondly, check the build<br>
tree for failing recipe and see if<br>
it has staged the content from other recipe which it depends on.<br>
<br>
&gt;<br>
&gt; Thank you in advance!<br>
&gt;<br>
&gt; Armando Hernandez.<br>
&gt; <br>
</blockquote></div>

--000000000000a1c3a7059f540d17--
