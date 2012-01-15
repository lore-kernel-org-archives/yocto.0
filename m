Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17438E00306
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2012 09:35:14 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkty7 with SMTP id y7so2786645bkt.35
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2012 09:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QI/n+Eqze1DOsoYlHJEMuF0nd3dd1tJncavTDw7whDI=;
	b=N2YaDY0x7ScppXofBY3idx5Jhbu3TCbSgMMko4ZzBaLd4Bec2PY0siJDB9hrxXPmjO
	iHDRpVWwI38S20v0c4tYmtUfHjYyWdwz3VvJApcxSrhv2paENfeebLLtM8323SQHKF2Q
	gir+rKhq/SamMqKMWksQOf5axoJtuAGeR9rCY=
MIME-Version: 1.0
Received: by 10.204.145.82 with SMTP id c18mr560069bkv.121.1326648913431; Sun,
	15 Jan 2012 09:35:13 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Sun, 15 Jan 2012 09:35:13 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Sun, 15 Jan 2012 09:35:13 -0800 (PST)
In-Reply-To: <A3B88716-58B0-406C-AF71-27119B0F9A38@beagleboard.org>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<A3B88716-58B0-406C-AF71-27119B0F9A38@beagleboard.org>
Date: Sun, 15 Jan 2012 12:35:13 -0500
Message-ID: <CAFZh4h_rZh4ESAq6BD6-=ENMvLd-zmvuDF_+Ur8eXnvFDbHfPA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Koen Kooi <koen@beagleboard.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 15 Jan 2012 17:35:15 -0000
Content-Type: multipart/alternative; boundary=000e0cdfc7bc3a0dc404b69485fb

--000e0cdfc7bc3a0dc404b69485fb
Content-Type: text/plain; charset=ISO-8859-1

Hey Koen, good to hear from you.  My next step is to bring meta-ti.  I've
been following that list so I hope to get things working with it soon.

Regards,

Brian

From Droid Incredible
On Jan 15, 2012 3:47 AM, "Koen Kooi" <koen@beagleboard.org> wrote:

>
> Op 11 jan. 2012, om 21:57 heeft Brian Hutchinson het volgende geschreven:
>
> > On Wed, Jan 11, 2012 at 3:47 PM, Joshua Lock <josh@linux.intel.com>
> wrote:
> >
> >> In meta-yocto/conf/distro/poky.conf there's a line which sets:
> >>
> >> PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
> >>
> >> Which is then overridden for the qemu machines to:
> >>
> >> PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
> >>
> >> If you add a similar line for beagleboard to a conf file, such as
> >> local.conf, it would look for a 3.0 kernel version and use your tree.
> >>
> >> PREFERRED_VERSION_linux-yocto_beagleboard ?= "3.0%"
> >>
> >> I know you've switched to master but I wanted to help you understand the
> >> system is doing what it is.
> >>
> >
> > Ah, very good!  Yes, good to know information.  I'm coming from
> > OE-Angstrom/Arago and so far most things have been pretty familiar but
> > it always helps to know how it fits together.  I need to make several
> > BSP's for TI processors and this helps me understand things a bit
> > better.
>
> If that's the case, you'd be a lot better off basing it off the official
> TI BSP layer instead of meta-yocto.

--000e0cdfc7bc3a0dc404b69485fb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Hey Koen, good to hear from you.=A0 My next step is to bring meta-ti.=A0=
 I&#39;ve been following that list so I hope to get things working with it =
soon.</p>
<p>Regards,</p>
<p>Brian</p>
<p>From Droid Incredible </p>
<div class=3D"gmail_quote">On Jan 15, 2012 3:47 AM, &quot;Koen Kooi&quot; &=
lt;<a href=3D"mailto:koen@beagleboard.org">koen@beagleboard.org</a>&gt; wro=
te:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Op 11 jan. 2012, om 21:57 heeft Brian Hutchinson het volgende geschreven:<b=
r>
<br>
&gt; On Wed, Jan 11, 2012 at 3:47 PM, Joshua Lock &lt;<a href=3D"mailto:jos=
h@linux.intel.com">josh@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; In meta-yocto/conf/distro/poky.conf there&#39;s a line which sets:=
<br>
&gt;&gt;<br>
&gt;&gt; PREFERRED_VERSION_linux-yocto ?=3D &quot;2.6.37+git%&quot;<br>
&gt;&gt;<br>
&gt;&gt; Which is then overridden for the qemu machines to:<br>
&gt;&gt;<br>
&gt;&gt; PREFERRED_VERSION_linux-yocto_qemuppc ?=3D &quot;3.0%&quot;<br>
&gt;&gt;<br>
&gt;&gt; If you add a similar line for beagleboard to a conf file, such as<=
br>
&gt;&gt; local.conf, it would look for a 3.0 kernel version and use your tr=
ee.<br>
&gt;&gt;<br>
&gt;&gt; PREFERRED_VERSION_linux-yocto_beagleboard ?=3D &quot;3.0%&quot;<br=
>
&gt;&gt;<br>
&gt;&gt; I know you&#39;ve switched to master but I wanted to help you unde=
rstand the<br>
&gt;&gt; system is doing what it is.<br>
&gt;&gt;<br>
&gt;<br>
&gt; Ah, very good! =A0Yes, good to know information. =A0I&#39;m coming fro=
m<br>
&gt; OE-Angstrom/Arago and so far most things have been pretty familiar but=
<br>
&gt; it always helps to know how it fits together. =A0I need to make severa=
l<br>
&gt; BSP&#39;s for TI processors and this helps me understand things a bit<=
br>
&gt; better.<br>
<br>
If that&#39;s the case, you&#39;d be a lot better off basing it off the off=
icial TI BSP layer instead of meta-yocto.</blockquote></div>

--000e0cdfc7bc3a0dc404b69485fb--
