Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com [209.85.208.196])
 by mx.groups.io with SMTP id smtpd.web12.10215.1588340906884054452
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 May 2020 06:48:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NBZYIpEz;
 spf=pass (domain: gmail.com, ip: 209.85.208.196, mailfrom: jumpnowtek@gmail.com)
Received: by mail-lj1-f196.google.com with SMTP id u6so2645927ljl.6
        for <yocto@lists.yoctoproject.org>; Fri, 01 May 2020 06:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ljSYEE1L0RlaLR9hMv7ai0O/uC3yawcGh/pB+1nCueE=;
        b=NBZYIpEzpa3BDnEza7e4i9K9zCdjAk4//u48gtBbhjEwfazyyWgY0Zi1qhiN++flsH
         AKhIAjq7Q/qBiel09gNWP3EzKO2cP6sJp33D56a1ck7KCJdeVpxUiNYLu7wsKoTNkBhO
         uKr3/I+XYgYa4eUBRXFoY5X+HKlLVyX95DjY3yS1gDa//G6uRm5c/ROqCoACXbkEVInv
         fZj+0fo1CM/Cal7v6nXVMZqtrWuhlobqQnOT0cLrGNCHzOF6sANsbBHqVpLf9Jhpm3wr
         J3DxMjWOu3Z/Nx0uJ26B5BRdkTXvCfM5FEBBQk8N+S+JtUMc/To0o70WoyCKLdYH36Oj
         18cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ljSYEE1L0RlaLR9hMv7ai0O/uC3yawcGh/pB+1nCueE=;
        b=J9pOFhgMsGQJ82G+TFQWPXuBHyYbUwt3dnxgN7JjEnT1hPCsFOIQwy7fSFjaY9Ew8c
         hPo8ChpmiJXCS1ypwBiZr8DiT11s1BkQU8fKMGHh8IsrEfbSO+3cxV2Z4HAh8h7u5hXg
         2suQFnxoJaMR/NZdbd9zCrd23U7JZ5JrZMR1+RkGbJWwbMpvH1CFgf5RnGuS96tw0/FQ
         iqpUB7qtMHOcwMEuBIAcicqrGFNihRYD72vB3ADhM5cHHVq26bYyctSKReeMro5fkRjG
         mLLi2CBM2TQXClMQaKsOZDfXYG+oVtl59uscWwAy85sxZaP7wSOF9k4Ro62Z8JR9L2r9
         qmUQ==
X-Gm-Message-State: AGi0PuaZ2oMBGXNy8OUBHXDyMyLuKERF+vr1FfHHWbZgWhrwfNTY43Qs
	LKyHM0NS8+ENBRBNRZS3S4Uz8MMuY9AMPNaLyr7so42Q
X-Google-Smtp-Source: APiQypJtFMyTKis+8/SxQm4B+/8z9A8yPjov4W9WZlL7stkAkstQyiVRRzKLdSl6NpI1OWFgbddlp5GxWtDHX43RhRY=
X-Received: by 2002:a2e:a40d:: with SMTP id p13mr2498686ljn.183.1588340904815;
 Fri, 01 May 2020 06:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200430202311.11303-1-scott@jumpnowtek.com> <20200430213705.GW11927@denix.org>
In-Reply-To: <20200430213705.GW11927@denix.org>
From: "Scott Ellis" <jumpnowtek@gmail.com>
Date: Fri, 1 May 2020 09:48:14 -0400
Message-ID: <CAAAx1o7j=dmhKOm4QKLvShjSikxL4kOk1m6LMXupoBaBtWuttw@mail.gmail.com>
Subject: Re: [yocto][PATCH] openssl: Fix dependency loop with PACKAGECONFIG cryptodev-linux
To: yocto@lists.yoctoproject.org
Cc: Scott Ellis <scott@jumpnowtek.com>
Content-Type: multipart/alternative; boundary="00000000000069f0c405a4966f6e"

--00000000000069f0c405a4966f6e
Content-Type: text/plain; charset="UTF-8"

Enabled via a bbappend in a custom layer

$ cat openssl_%.bbappend
PACKAGECONFIG_append = " cryptodev-linux"

This was working prior to the openssl_1.1.1f.bb recipe change a few days
ago.

How are you enabling this PACKAGECONFIG?

On Thu, Apr 30, 2020 at 5:37 PM Denys Dmytriyenko <denis@denix.org> wrote:

> On Thu, Apr 30, 2020 at 08:23:11PM +0000, Scott Ellis wrote:
>
> Hi, Scott,
>
> Sorry, I'm not trying to discourage you from submitting patches, but there
> are
> few issues with your patch here - see below and inline.
>
> First of all, patches for OE-core should be sent to:
> openembedded-core@lists.openembedded.org
> https://lists.openembedded.org/g/openembedded-core
>
> Looks like you are building poky-zeus - Poky, as a distro, is composed
> from
> multiple components/layers, such as bitbake, oe-core/meta, meta-poky and
> meta-yocto-bsp. Most of them have own git repos with corresponding mailing
> lists - usually mentioned in corresponding README files, please check
> those.
>
>
> > Applies to both zeus and dunfell
>
> The process to get your change backported to older branches/releases is to
> submit it against master, and once accepted, re-send and ask to backport
> to
> other branches, such as zeus and dunfell with the name of the branch in
> the
> subject. That is because different branches/versions are usually
> maintained
> by different people.
>
>
> > ERROR: Nothing RPROVIDES 'cryptodev-module-native' (but
> virtual:native:/home/scott/poky-zeus/meta/recipes-connectivity/openssl/
> openssl_1.1.1f.bb RDEPENDS on or otherwise requires it)
> > ERROR: Required build target 'openssl' has no buildable providers.
> > Missing or unbuildable dependency chain was: ['openssl', 'rpm-native',
> 'python3-native', 'openssl-native', 'cryptodev-module-native']
>
> Not sure how you were able to set the wrong PACKAGECONFIG for
> openssl-native,
> when it gets explicitly emptied in the recipe below.
>
>
> > diff --git a/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> b/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> > index aa4ef6f48a..a952fae728 100644
> > --- a/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> > +++ b/meta/recipes-connectivity/openssl/openssl_1.1.1f.bb
> > @@ -32,7 +32,7 @@ PACKAGECONFIG ?= ""
> >  PACKAGECONFIG_class-native = ""
> >  PACKAGECONFIG_class-nativesdk = ""
>
> Here, ^^^ PACKAGECONFIG should all be empty for native and nativesdk
> versions
> of openssl.
>
>
> > -PACKAGECONFIG[cryptodev-linux] =
> "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux,,cryptodev-module"
> > +PACKAGECONFIG[cryptodev-linux] =
> "enable-devcryptoeng,disable-devcryptoeng,cryptodev-linux"
>
> This is not a fix, but rather a workaround for a bad setup. Moreover, it
> actually reverts my recent fix to RDEPENDS on cryptodev-module, which is
> needed to properly support devcryptoeng in openssl.
>
> Maybe if you share with us how you set your environment, we would be able
> to
> help you resolve it properly. Thank you!
>
> --
> Denys
>
>
> >  B = "${WORKDIR}/build"
> >  do_configure[cleandirs] = "${B}"
> > --
> > 2.17.1
> >
>
> >
>
> 
>

--00000000000069f0c405a4966f6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Enabled via a bbappend in a custom layer</div><div><b=
r></div>$ cat openssl_%.bbappend <br>PACKAGECONFIG_append =3D &quot; crypto=
dev-linux&quot;<br><div><br></div><div>This was working prior to the <a hre=
f=3D"http://openssl_1.1.1f.bb">openssl_1.1.1f.bb</a> recipe change a few da=
ys ago.</div><div><br></div><div>How are you enabling this PACKAGECONFIG?</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Apr 30, 2020 at 5:37 PM Denys Dmytriyenko &lt;<a href=3D"mailto=
:denis@denix.org">denis@denix.org</a>&gt; wrote:<br></div><blockquote class=
=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Thu, Apr 30, 2020 at 08:23:11PM +0000,=
 Scott Ellis wrote:<br>
<br>
Hi, Scott,<br>
<br>
Sorry, I&#39;m not trying to discourage you from submitting patches, but t=
here are <br>
few issues with your patch here - see below and inline.<br>
<br>
First of all, patches for OE-core should be sent to:<br>
<a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_bla=
nk">openembedded-core@lists.openembedded.org</a><br>
<a href=3D"https://lists.openembedded.org/g/openembedded-core" rel=3D"nore=
ferrer" target=3D"_blank">https://lists.openembedded.org/g/openembedded-cor=
e</a><br>
<br>
Looks like you are building poky-zeus - Poky, as a distro, is composed fro=
m <br>
multiple components/layers, such as bitbake, oe-core/meta, meta-poky and <=
br>
meta-yocto-bsp. Most of them have own git repos with corresponding mailing=
 <br>
lists - usually mentioned in corresponding README files, please check thos=
e.<br>
<br>
<br>
&gt; Applies to both zeus and dunfell<br>
<br>
The process to get your change backported to older branches/releases is to=
 <br>
submit it against master, and once accepted, re-send and ask to backport t=
o <br>
other branches, such as zeus and dunfell with the name of the branch in th=
e <br>
subject. That is because different branches/versions are usually maintaine=
d <br>
by different people.<br>
<br>
<br>
&gt; ERROR: Nothing RPROVIDES &#39;cryptodev-module-native&#39; (but virtu=
al:native:/home/scott/poky-zeus/meta/recipes-connectivity/openssl/<a href=
=3D"http://openssl_1.1.1f.bb" rel=3D"noreferrer" target=3D"_blank">openssl=
_1.1.1f.bb</a> RDEPENDS on or otherwise requires it)<br>
&gt; ERROR: Required build target &#39;openssl&#39; has no buildable provi=
ders.<br>
&gt; Missing or unbuildable dependency chain was: [&#39;openssl&#39;, &#39=
;rpm-native&#39;, &#39;python3-native&#39;, &#39;openssl-native&#39;, &#39;=
cryptodev-module-native&#39;]<br>
<br>
Not sure how you were able to set the wrong PACKAGECONFIG for openssl-nati=
ve, <br>
when it gets explicitly emptied in the recipe below.<br>
<br>
<br>
&gt; diff --git a/meta/recipes-connectivity/openssl/<a href=3D"http://open=
ssl_1.1.1f.bb" rel=3D"noreferrer" target=3D"_blank">openssl_1.1.1f.bb</a> b=
/meta/recipes-connectivity/openssl/<a href=3D"http://openssl_1.1.1f.bb" rel=
=
=3D"noreferrer" target=3D"_blank">openssl_1.1.1f.bb</a><br>
&gt; index aa4ef6f48a..a952fae728 100644<br>
&gt; --- a/meta/recipes-connectivity/openssl/<a href=3D"http://openssl_1.1=
.1f.bb" rel=3D"noreferrer" target=3D"_blank">openssl_1.1.1f.bb</a><br>
&gt; +++ b/meta/recipes-connectivity/openssl/<a href=3D"http://openssl_1.1=
.1f.bb" rel=3D"noreferrer" target=3D"_blank">openssl_1.1.1f.bb</a><br>
&gt; @@ -32,7 +32,7 @@ PACKAGECONFIG ?=3D &quot;&quot;<br>
&gt;=C2=A0 PACKAGECONFIG_class-native =3D &quot;&quot;<br>
&gt;=C2=A0 PACKAGECONFIG_class-nativesdk =3D &quot;&quot;<br>
<br>
Here, ^^^ PACKAGECONFIG should all be empty for native and nativesdk versi=
ons <br>
of openssl.<br>
<br>
<br>
&gt; -PACKAGECONFIG[cryptodev-linux] =3D &quot;enable-devcryptoeng,disable=
-devcryptoeng,cryptodev-linux,,cryptodev-module&quot;<br>
&gt; +PACKAGECONFIG[cryptodev-linux] =3D &quot;enable-devcryptoeng,disable=
-devcryptoeng,cryptodev-linux&quot;<br>
<br>
This is not a fix, but rather a workaround for a bad setup. Moreover, it <=
br>
actually reverts my recent fix to RDEPENDS on cryptodev-module, which is <=
br>
needed to properly support devcryptoeng in openssl.<br>
<br>
Maybe if you share with us how you set your environment, we would be able =
to <br>
help you resolve it properly. Thank you!<br>
<br>
-- <br>
Denys<br>
<br>
<br>
&gt;=C2=A0 B =3D &quot;${WORKDIR}/build&quot;<br>
&gt;=C2=A0 do_configure[cleandirs] =3D &quot;${B}&quot;<br>
&gt; -- <br>
&gt; 2.17.1<br>
&gt; <br>
<br>
&gt; <br>
<br>
<br>
</blockquote></div>

--00000000000069f0c405a4966f6e--
