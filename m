Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web09.3928.1616034826174158317
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 19:33:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=odsMMtCO;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id z9so3468808ilb.4
        for <yocto@lists.yoctoproject.org>; Wed, 17 Mar 2021 19:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sh0+69dr8R1i7g1UzfBpBObRr5zTUyTbhk+QriHXRLw=;
        b=odsMMtCOjRKhL/DttNBzLOejw0s5Yw6OeeNRpvZC90JM0x1XIKxmyJ2IlMAhSZ0G/9
         JskYFuwKjSPNgB57UQfiHTPCJrDt8QCTaX0ZpzLuou1piFObwU9khe9sen/qYrTS8qMS
         JXowMQgRrBshayatEvczEHYlMHKCmgUBsZ7XT/nyGifnXNGPMaJC7kAAqGtX6LD2CQrn
         2gND86tT5OPQPD4ne+kA/VFHcEsSlvHAf1cDNvlrFUXjq/jhhnsarIAF9yRmAl2x3U9b
         ndnuTlJndRFOgZu966OZOz9lIosTpi2uo0HTwntNcSQnKDrmdWhIE4i2Kw9yrCXWXTUP
         wF6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sh0+69dr8R1i7g1UzfBpBObRr5zTUyTbhk+QriHXRLw=;
        b=ltDFQ0h2n2F+w3/+ay9G3x2gMGKP3Ct/4LdCmiSS07OK8c+BjgVqG8EUR2QbenyueM
         xrBpLKj7l1xW06fcO+zrlvzARd+hLyTVDSFUzcThbO879VNcuURxE36oi6/Q46E2ZK30
         c5+dS8YOC6WHSLhgp4l2rJZ9Xi7B8rqJ3MvazPyLVQShmwi7nygMcSUXcy1P96qi2HhR
         ZPWytIxzlPylk8+ftTEK1A+oBDM3rRmMLm2BJfgb5nZJnmnhdz4is2VR0Z2BYvgNgjWx
         fztcu0FT9g1N3MP4+hucObQjCUPq/IdjGDHgkt4Wgmba+O7UG4+JLxYyomtZlHxPjYEZ
         +iGg==
X-Gm-Message-State: AOAM531PWYy1HNaiZpSS7Gp80/IhQLqwNBgj/jq1ObPN7/+mb5i0D1Dk
	xMMLbZ5J62/bNcFfijl3q8IvJw0quKbouctF4AM=
X-Google-Smtp-Source: ABdhPJxOVWazZQ53QcA7XBs0xYAhoAyGVLmQZK4Xqcj4Yo0rWbDY5npB/8GYqTPDqXfvJ7dwVcRZhTU3X9YEkDr/JNI=
X-Received: by 2002:a05:6e02:180d:: with SMTP id a13mr3459714ilv.142.1616034825483;
 Wed, 17 Mar 2021 19:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <PR0P264MB08896A3DF38FEA8A2A85A18DE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
 <CAMKF1srin_dQMyDG+cNGPEruU+avSxX5rmS7S45jw1fwt29nUA@mail.gmail.com>
In-Reply-To: <CAMKF1srin_dQMyDG+cNGPEruU+avSxX5rmS7S45jw1fwt29nUA@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 17 Mar 2021 19:33:34 -0700
Message-ID: <CANx9H-CBssoYWbODp6R_5wUs2bYTBV-hCfi1AMceHSFy1+adrQ@mail.gmail.com>
Subject: Re: [yocto] Recipes and meta-data directory tree
To: Khem Raj <raj.khem@gmail.com>
Cc: keydi <krzysztof.dudziak@thalesgroup.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b7bdc205bdc66d0a"

--000000000000b7bdc205bdc66d0a
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 17, 2021 at 6:16 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Mar 17, 2021 at 9:43 AM keydi <krzysztof.dudziak@thalesgroup.com>
> wrote:
> >
> > Two projects are given. They use different YP release each.
> > Projects use also different target platform each.
> >
> > I wonder if differences in structuring metadata- and recipes- directory
> tree between
> > these two projects result solely from different YP releases in use.
> > Or if these can be a result also of modifications conducted by platform
> vendors.
> >
> > Any hints in what extend these result from different YP release numbers
> in use?
> >
> > project A (YP release 2.6)
> > xxxx /yocto/
> > xxxx/yocto/downloads
> > xxxx/yocto/meta
> > xxxx/yocto/sstate-cache
> > xxxx/yocto/build
> > xxxx/yocto/.repo
> > xxxx/yocto/src
> > xxxx/yocto/prebuilt
> > xxxx/yocto/meta/
> > xxxx/yocto/meta/poky
> > xxxx/yocto/meta/meta-security
> > xxxx/yocto/meta/meta-clang
> > xxxx/yocto/meta/meta-openembedded
> > xxxx/yocto/meta/poky/
> > xxxx/yocto/meta/poky/meta
> > xxxx/yocto/meta/poky/documentation
> > xxxx/yocto/meta/poky/meta-poky
> > xxxx/yocto/meta/poky/meta-selftest
> > xxxx/yocto/meta/poky/bitbake
> > xxxx/yocto/meta/poky/.git
> > xxxx/yocto/meta/poky/meta-yocto-bsp
> > xxxx/yocto/meta/poky/meta-skeleton
> > xxxx/yocto/meta/poky/scripts
> > + a set of layers value chain specific, meta-... subdirectories with
> meta/  as root-point.
> >
> > project B (YP release 2.0, actually backport of some later release
> > which unfortunately is not reflected in poky.conf)
> > yyyy/poky/
> > yyyy/poky/meta-yocto
> > yyyy/poky/meta
> > yyyy/poky/documentation
> > yyyy/poky/meta-selftest
> > yyyy/poky/meta-selinux
> > yyyy/poky/build
> > yyyy/poky/meta-cust-installer
> > yyyy/poky/bitbake
> > yyyy/poky/meta-yocto-bsp
> > yyyy/poky/meta-skeleton
> > yyyy/poky/scripts
> > + a set of layers value chain specific, meta-... subdirectories with
> poky/  as root-point.
> >
> > I mean mainly following differences:
> > * Project A places a set of value-chain specific layers/meta-...
> directories at same
> > directory level as poky.
> > * meta-yocto apparently not present in project A tree
> > * meta-poky apparently not present in project B tree
>
> OE allows you to build own distributions, so what you are looking at
> is two different distributions based on different
> different releases but using same build system ( OpenEmbedded ) over
> major releases the build system gets changed
> too in terms of its metadata as well new features and some old cruft
> removed like usual projects. so you have different
> releases, and different machines and different distro all contributing
> to the differences.
>

and meta-yocto was renamed to meta-poky in one of those changes at the
request of the members and community.


> >
> >
> >
>
> 
>
>

--000000000000b7bdc205bdc66d0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 17, 2021 at 6:16 PM Khem Raj &lt;<a href=3D"ma=
ilto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,=
204,204)">On Wed, Mar 17, 2021 at 9:43 AM keydi &lt;<a href=3D"mailto:krzys=
ztof.dudziak@thalesgroup.com" target=3D"_blank">krzysztof.dudziak@thalesgro=
up.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Two projects are given. They use different YP release each.<br>
&gt; Projects use also different target platform each.<br>
&gt;<br>
&gt; I wonder if differences in structuring metadata- and recipes- directo=
ry tree between<br>
&gt; these two projects result solely from different YP releases in use.<b=
r>
&gt; Or if these can be a result also of modifications conducted by platfo=
rm vendors.<br>
&gt;<br>
&gt; Any hints in what extend these result from different YP release numbe=
rs in use?<br>
&gt;<br>
&gt; project A (YP release 2.6)<br>
&gt; xxxx /yocto/<br>
&gt; xxxx/yocto/downloads<br>
&gt; xxxx/yocto/meta<br>
&gt; xxxx/yocto/sstate-cache<br>
&gt; xxxx/yocto/build<br>
&gt; xxxx/yocto/.repo<br>
&gt; xxxx/yocto/src<br>
&gt; xxxx/yocto/prebuilt<br>
&gt; xxxx/yocto/meta/<br>
&gt; xxxx/yocto/meta/poky<br>
&gt; xxxx/yocto/meta/meta-security<br>
&gt; xxxx/yocto/meta/meta-clang<br>
&gt; xxxx/yocto/meta/meta-openembedded<br>
&gt; xxxx/yocto/meta/poky/<br>
&gt; xxxx/yocto/meta/poky/meta<br>
&gt; xxxx/yocto/meta/poky/documentation<br>
&gt; xxxx/yocto/meta/poky/meta-poky<br>
&gt; xxxx/yocto/meta/poky/meta-selftest<br>
&gt; xxxx/yocto/meta/poky/bitbake<br>
&gt; xxxx/yocto/meta/poky/.git<br>
&gt; xxxx/yocto/meta/poky/meta-yocto-bsp<br>
&gt; xxxx/yocto/meta/poky/meta-skeleton<br>
&gt; xxxx/yocto/meta/poky/scripts<br>
&gt; + a set of layers value chain specific, meta-... subdirectories with =
meta/=C2=A0 as root-point.<br>
&gt;<br>
&gt; project B (YP release 2.0, actually backport of some later release<br=
>
&gt; which unfortunately is not reflected in poky.conf)<br>
&gt; yyyy/poky/<br>
&gt; yyyy/poky/meta-yocto<br>
&gt; yyyy/poky/meta<br>
&gt; yyyy/poky/documentation<br>
&gt; yyyy/poky/meta-selftest<br>
&gt; yyyy/poky/meta-selinux<br>
&gt; yyyy/poky/build<br>
&gt; yyyy/poky/meta-cust-installer<br>
&gt; yyyy/poky/bitbake<br>
&gt; yyyy/poky/meta-yocto-bsp<br>
&gt; yyyy/poky/meta-skeleton<br>
&gt; yyyy/poky/scripts<br>
&gt; + a set of layers value chain specific, meta-... subdirectories with =
poky/=C2=A0 as root-point.<br>
&gt;<br>
&gt; I mean mainly following differences:<br>
&gt; * Project A places a set of value-chain specific layers/meta-... dire=
ctories at same<br>
&gt; directory level as poky.<br>
&gt; * meta-yocto apparently not present in project A tree<br>
&gt; * meta-poky apparently not present in project B tree<br>
<br>
OE allows you to build own distributions, so what you are looking at<br>
is two different distributions based on different<br>
different releases but using same build system ( OpenEmbedded ) over<br>
major releases the build system gets changed<br>
too in terms of its metadata as well new features and some old cruft<br>
removed like usual projects. so you have different<br>
releases, and different machines and different distro all contributing<br>
to the differences.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">and meta-yocto =
was renamed to meta-poky in one of those changes at the request of the memb=
ers and community.</div><div dir=3D"auto"><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000b7bdc205bdc66d0a--
