Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B90E0030B
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:30:04 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so8873117yhf.35
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:30:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=D/0djO6+rN/c2gr68oG7aZ6uO/2lffE2m/uvP4XOJoE=;
	b=mPERzqCjAhlGzmWVID4xqdB0ofJyVjca+yFtzIQCxNdO5cUhkc3A6VE61z6RIwl8O3
	3LLbWvYYvXtizNs0sSUthF6YJ3hBhfb0IEsYweIVjKQ22tqoJr6wKJBb0VSnXBGSwUql
	hVT1e3LZV1lF8z4Wg1W2+bNcBHrTyrs8FW5cPHXTRGO3OKIY3SSPOJGfq2IF9770CnK+
	gYVqKhSrMs/6npgToOlHpk2Ke/Yg0eNwgWFiDYOaAu1qp93wttSLIuKUXIyOk8C5f4do
	ia0vKQOKLHq5e9N0CFY94auVqy5zwv+O8OqbepNe/pmlSg+cRszS+zXL/9wa4abZRMJ/
	CY/A==
MIME-Version: 1.0
Received: by 10.50.45.234 with SMTP id q10mr14746014igm.54.1337801403324; Wed,
	23 May 2012 12:30:03 -0700 (PDT)
Received: by 10.64.28.147 with HTTP; Wed, 23 May 2012 12:30:03 -0700 (PDT)
X-Originating-IP: [79.117.102.5]
Received: by 10.64.28.147 with HTTP; Wed, 23 May 2012 12:30:03 -0700 (PDT)
In-Reply-To: <AF8AFB37-5583-4531-8C0E-CA4073699EAD@keylevel.com>
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
	<4904220.mFpDsjEpuq@helios>
	<850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
	<8363795.7bU7lvsc4a@helios>
	<2B5CA5ED-EFE8-4F53-B592-55BCDA9AA8FD@keylevel.com>
	<4FBCA07F.1050001@r-finger.com>
	<AF8AFB37-5583-4531-8C0E-CA4073699EAD@keylevel.com>
Date: Wed, 23 May 2012 22:30:03 +0300
Message-ID: <CAK18fxHWyAPSzt-_oD6gQuVp=edVfUoHrvAPkOtTjS4bd8beog@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQmgdGj2HfcVJtKbFKrKhEaSDyYgX3pfSiMub87tZ0NcSVD1rSALPV5j4JTZUnCHRgeejT+z
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Per-machine DEPENDS
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
X-List-Received-Date: Wed, 23 May 2012 19:30:05 -0000
Content-Type: multipart/alternative; boundary=14dae93403d76cd7e104c0b92950

--14dae93403d76cd7e104c0b92950
Content-Type: text/plain; charset=ISO-8859-1

Why not using branches? For example meta-ivi maintains two branches: denzil
and master.
On May 23, 2012 10:03 PM, "Chris Tapp" <opensource@keylevel.com> wrote:

> Firstly, I should have said I was using the m-rpi as an example only ;-)
>
> On 23 May 2012, at 09:31, Tomas Frydrych wrote:
>
> > On 23/05/12 08:55, Chris Tapp wrote:
> >> Do overrides work with any variable? The RPi layer is using BBMASK to
> >> filter out some recipes when building against Yocto. This has to be
> >> manually added to local.conf.
> >
> > It does not have to be local.conf; if you are adding meta-raspberrypi,
> > you have to set up the layer configuration at minimum, and probably
> > other things, so you can set it up somewhere more appropriate.
> > local.conf is really just for changes when testing things, etc.
> >
> >> Would it be possible to do this
> >> automatically in the layer using an override based on the distro
> >> name/version? e.g. could something like the following be added to the
> >> layer.conf file?
> >>
> >> BBMASK_poky_7.0? += " ${LAYERDIR}/stuff-i-dont-want"
> >
> > I don't know if the overrides work with this variable in particular, but
> > even if they did, it is not a good idea for a layer of any kind to be
> > changing the BBMASK value, because the layer cannot make any assumptions
> > about what might or might not be appropriate to mask out.
>
> Ok. Is there some other way that the addition of a layer can be
> 'intelligent' so that it adapts itself to the build? For example, I have a
> layer that was designed to work with 4.x. It needed some minor changes to
> make it work with 5.x, some more for 6.x, etc. I would like to have a
> single meta-layer that will work with them all so that I only have to
> maintain a single version and not have branches for the different poky
> versions.
>
> I can probably do what needs to be done using BBMASK, but it would be nice
> if DISTRO and DISTRO_VERSION could be used to automate this. Would it not
> be appropriate for the layer to decide what it offers to a distro? i.e. not
> offer things it knows aren't compatible.
>
> > (Also note that BBMASK is pyton regex, so BBMASK += "
> > ${LAYERDIR}/stuff-i-dont-want" will not work, it would need, e.g., to
> > include the '|' operator)
> >
> >>
> >> Or would it be better to have distro-specific recipe trees
> >
> > Specifically to the m-rpi, there are only two problematic recipes, the
> > libav.bbappend, but you only know on the distro level whether you need
> > to mask this out or now (i.e., someone's poky-derrived distro might well
> > include libav).
> >
> > The second is the rpi-zram-service which needs systemd.
> > This recipe needs to be reworked so it produces both -systemd and -initd
> > packages, from which the distro can then pull in the appropriate one;
> > one of the packages can even be a dummy (which for poky could be
> > achieved by adding systemd.bbclass stub).
> >
> > Tomas
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--14dae93403d76cd7e104c0b92950
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Why not using branches? For example meta-ivi maintains two branches: den=
zil and master.</p>
<div class=3D"gmail_quote">On May 23, 2012 10:03 PM, &quot;Chris Tapp&quot;=
 &lt;<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Firstly, I should have said I was using the m-rpi as an example only ;-)<br=
>
<br>
On 23 May 2012, at 09:31, Tomas Frydrych wrote:<br>
<br>
&gt; On 23/05/12 08:55, Chris Tapp wrote:<br>
&gt;&gt; Do overrides work with any variable? The RPi layer is using BBMASK=
 to<br>
&gt;&gt; filter out some recipes when building against Yocto. This has to b=
e<br>
&gt;&gt; manually added to local.conf.<br>
&gt;<br>
&gt; It does not have to be local.conf; if you are adding meta-raspberrypi,=
<br>
&gt; you have to set up the layer configuration at minimum, and probably<br=
>
&gt; other things, so you can set it up somewhere more appropriate.<br>
&gt; local.conf is really just for changes when testing things, etc.<br>
&gt;<br>
&gt;&gt; Would it be possible to do this<br>
&gt;&gt; automatically in the layer using an override based on the distro<b=
r>
&gt;&gt; name/version? e.g. could something like the following be added to =
the<br>
&gt;&gt; layer.conf file?<br>
&gt;&gt;<br>
&gt;&gt; BBMASK_poky_7.0? +=3D &quot; ${LAYERDIR}/stuff-i-dont-want&quot;<b=
r>
&gt;<br>
&gt; I don&#39;t know if the overrides work with this variable in particula=
r, but<br>
&gt; even if they did, it is not a good idea for a layer of any kind to be<=
br>
&gt; changing the BBMASK value, because the layer cannot make any assumptio=
ns<br>
&gt; about what might or might not be appropriate to mask out.<br>
<br>
Ok. Is there some other way that the addition of a layer can be &#39;intell=
igent&#39; so that it adapts itself to the build? For example, I have a lay=
er that was designed to work with 4.x. It needed some minor changes to make=
 it work with 5.x, some more for 6.x, etc. I would like to have a single me=
ta-layer that will work with them all so that I only have to maintain a sin=
gle version and not have branches for the different poky versions.<br>

<br>
I can probably do what needs to be done using BBMASK, but it would be nice =
if DISTRO and DISTRO_VERSION could be used to automate this. Would it not b=
e appropriate for the layer to decide what it offers to a distro? i.e. not =
offer things it knows aren&#39;t compatible.<br>

<br>
&gt; (Also note that BBMASK is pyton regex, so BBMASK +=3D &quot;<br>
&gt; ${LAYERDIR}/stuff-i-dont-want&quot; will not work, it would need, e.g.=
, to<br>
&gt; include the &#39;|&#39; operator)<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Or would it be better to have distro-specific recipe trees<br>
&gt;<br>
&gt; Specifically to the m-rpi, there are only two problematic recipes, the=
<br>
&gt; libav.bbappend, but you only know on the distro level whether you need=
<br>
&gt; to mask this out or now (i.e., someone&#39;s poky-derrived distro migh=
t well<br>
&gt; include libav).<br>
&gt;<br>
&gt; The second is the rpi-zram-service which needs systemd.<br>
&gt; This recipe needs to be reworked so it produces both -systemd and -ini=
td<br>
&gt; packages, from which the distro can then pull in the appropriate one;<=
br>
&gt; one of the packages can even be a dummy (which for poky could be<br>
&gt; achieved by adding systemd.bbclass stub).<br>
&gt;<br>
&gt; Tomas<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--14dae93403d76cd7e104c0b92950--
