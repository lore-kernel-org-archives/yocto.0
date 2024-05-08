Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB67C19F4F
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 01:53:19 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.2541.1715133197400321080
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 18:53:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=xbzC2UWh;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.176, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4df1e45461fso1226513e0c.0
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 18:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715133196; x=1715737996; darn=lists.yoctoproject.org;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=99Hp2MulnkAkHT+0fhBuiZyG88p5sl4Mxt0LM485cE8=;
        b=xbzC2UWhtsZpgmRa88Hpzfzk50LGPkSbltwRINvEwaUw466dyI5y2hF5y6G1Ae0L0+
         r+4wKaglZltAz9kuAeJgPwzSQlyDCJXYF088bIrvL1ydwYa5Z+C2AwZrx0/LXXdxBIBd
         mQaVaBe3qWTHvl5sO6u2WN98o66v3gR8b1/oP4oQSFXshcWjYj+/qXFc+J24owgaDkBV
         5RJ4mQEE6OP+9p1SQmssLiBuHKGE2+jkqEqMZcJU70Pi0I6epAU0ZM8mSYi73sp53Fnf
         bQ8YcBIhMXdhO4TDV6v3F1VKTjsKFxLekujjJ1eSw8KOsgG/tv//QQMbF7kDD/wROlFV
         k6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715133196; x=1715737996;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=99Hp2MulnkAkHT+0fhBuiZyG88p5sl4Mxt0LM485cE8=;
        b=mYy96staF4XdRGaEAP1WQBasX6j2tGoSVgNL/UX0dlCz7itziBsSIrtufFOn1unY0/
         Vdpao2oM17+egUBcqDIKPXOxxK4aa3uEzCgARf6HK7lOU8QNqNjU+zDpQeaRVwC+ACJa
         BSe4EamnW5lD1RKHOix3ryV2RVEUufHooCeA/9DD3LKqExal3mF0DL8jPavuhbXad7jq
         vGwXwni55y5wEWSW4uMA+p10tnHUXntZOSx+sMvErrIb/fN+FzvnI3reRuGB0fLl4Qr+
         ww10/M80Z3HLO9XYYlHdDmyqGMWrhyo7lW6REona4NPQMOuz2XkcaNHZo2drtoUchlZp
         6XNw==
X-Gm-Message-State: AOJu0YwvJqH7wARMwgvYAf4Oku9OFpmxdz5mHvXjaApCR4e07297gRow
	WdQghJ5ALZNnZ6eOiXPP2ifWHOHIVSOaILeOFVhiXoEvq5Ms9uMMxgBPavoYcfhZzu0vjfACSsl
	7wlzGPt+jRgiMqmlk70djJsidKlaD0nZPzqADHGipre1ToA+XPRc=
X-Google-Smtp-Source: AGHT+IG8f/z6JSpCDTaHUMtW6Znd1OATEOejUHYMh6FW2WfUyCs0VgGdugIjYZsQr21t6snwm0W0cm5zZiVSSIEjRVw=
X-Received: by 2002:a05:6122:88e:b0:4df:4b7f:6009 with SMTP id
 71dfb90a1353d-4df6932f15emr1191256e0c.8.1715133194786; Tue, 07 May 2024
 18:53:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
In-Reply-To: <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Wed, 8 May 2024 13:53:03 +1200
Message-ID: <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d188430617e790ed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 01:53:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63047

--000000000000d188430617e790ed
Content-Type: text/plain; charset="UTF-8"

On Wed, 8 May 2024 at 13:39, Khem Raj <raj.khem@gmail.com> wrote:


> > I am getting a warning as I build a yocto build I inherited.  Forgive me
> I know very little about Yocto
> >
> > ```
> > WARNING: No recipes in default available for:
> >
>  /home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbappend
>
> how did you build your project metadata ? it seems some layers are
>

It builds from several directories under "meta-*"  I am unsure how I should
answer that.


> fudged unto single repository. AFAICT
> gstreamer1.0-plugins-base_1.20.0.imx.bb should be
> coming from meta-freescale or meta-imx and if you have a unified
> metadata tree then this bb file should be somewhere, if not, that
>

Which "bb"?   "gstreamer1.0-plugins-base_1.20.0.imx.bb"?

I have: layers/openembedded-core/meta/recipes-multimedia/gstreamer/
gstreamer1.0-plugins-base_1.20.5.bb

The suffix is different. (1.20.5.bb V. 1.20.0.bb)

That looks like the problem.  Should I rename this file?

Worik


means the project missed adding this layer
> to your build system.
>
> if you dont need this recipe then you can ignore failing on bbappends by
> adding
>
> BB_DANGLINGAPPENDS_WARNONLY = "1" to yout local.conf
>
> > ```
> >
> > The file in mentioned  (gstreamer1.0-plugins-base_1.20.0.imx.bbappend)
> contains:
> >
> > ```
> > FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
> >
> > SRC_URI:append = "
> file://0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
> > ```
> >
> > And the file:
> "layers/meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
> exists.
> >
> > What can I do about this?
> >
> > Worik
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#63045):
> https://lists.yoctoproject.org/g/yocto/message/63045
> > Mute This Topic: https://lists.yoctoproject.org/mt/105973256/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--000000000000d188430617e790ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 8 May 2024 at 13:39, Khem Raj=
 &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote=
:<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">&gt; I am getting a warning as I build a yocto build I inherited.=C2=A0 =
Forgive me I know very little about Yocto<br>
&gt;<br>
&gt; ```<br>
&gt; WARNING: No recipes in default available for:<br>
&gt;=C2=A0 =C2=A0/home/yocto/thisbuild-yocto/layers/openembedded-core/../me=
ta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.2=
0.0.imx.bbappend<br>
<br>
how did you build your project metadata ? it seems some layers are<br>
</blockquote><div><br></div><div>It builds from several directories under &=
quot;meta-*&quot;=C2=A0 I am unsure how I should answer that.<br></div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">fudged unto =
single repository. AFAICT<br>
<a href=3D"http://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferre=
r" target=3D"_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a> should be<=
br>
coming from meta-freescale or meta-imx and if you have a unified<br>
metadata tree then this bb file should be somewhere, if not, that<br></bloc=
kquote><div><br></div><div>Which &quot;bb&quot;? =C2=A0 &quot;<a href=3D"ht=
tp://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferrer" target=3D"=
_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a>&quot;?=C2=A0=C2=A0 <br>=
</div><div><br></div><div>I have: layers/openembedded-core/meta/recipes-mul=
timedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-base_1.20.5.bb">gs=
treamer1.0-plugins-base_1.20.5.bb</a></div><div><br></div><div>The suffix i=
s different. (<a href=3D"http://1.20.5.bb">1.20.5.bb</a> V. <a href=3D"http=
://1.20.0.bb">1.20.0.bb</a>) <br></div><div><br></div><div>That looks like =
the problem.=C2=A0 Should I rename this file?</div><div><br></div><div>Wori=
k<br></div><div><br></div><div><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
means the project missed adding this layer<br>
to your build system.<br>
<br>
if you dont need this recipe then you can ignore failing on bbappends by ad=
ding<br>
<br>
BB_DANGLINGAPPENDS_WARNONLY =3D &quot;1&quot; to yout local.conf<br>
<br>
&gt; ```<br>
&gt;<br>
&gt; The file in mentioned=C2=A0 (gstreamer1.0-plugins-base_1.20.0.imx.bbap=
pend) contains:<br>
&gt;<br>
&gt; ```<br>
&gt; FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;<br>
&gt; SRC_URI:append =3D &quot; file://0001-glupload-don-t-reject-non-RGBA-o=
utput-format-in-_dir.patch&quot;<br>
&gt; ```<br>
&gt;<br>
&gt; And the file: &quot;layers/meta-thisbuild-nxp/recipes-multimedia/gstre=
amer/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-f=
ormat-in-_dir.patch&quot;=C2=A0 exists.<br>
&gt;<br>
&gt; What can I do about this?<br>
&gt;<br>
&gt; Worik<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#63045): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63045" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63045</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10597325=
6/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105973256/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--000000000000d188430617e790ed--

